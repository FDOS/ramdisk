
/*********************************************************************
*                                                                    *
*  KBSEC 1.2 - Utility to calc with high precision the data transfer *
*              rate (the read data transfer read) in a ramdisk.      *
*                                                                    *
*                (C) 1992-1995 Ciriaco Garc¡a de Celis               *
*                                                                    *
*  - Do not run this program with a cache program loaded; compile    *
*    it in LARGE memory model with  ®Test stack overflow¯  option    *
*    disabled. Use Borland C. This program has english messages.     *
*                                                                    *
*********************************************************************/

#include <stdio.h>
#include <dos.h>
#include <conio.h>
#include <stdlib.h>

#define MAXBUF 64512L  /* 63 Kb  (no sobrepasar 64 Kb en un acceso) */
#define TIEMPO 110L    /* 6 segundos * 18,2 ÷ 110 tics (error < 1%) */
#define TM 18.2      /* cadencia de interrupciones del temporizador */
#define HORA_BIOS MK_FP(0x40, 0x6c)    /* variable de hora del BIOS */

unsigned long ti, vueltas, far *cbios;
unsigned segmento, tamsect, far *pantalla;
unsigned char far *sbuffer;
static unsigned tiempo;
int unidad;
void interrupt (*viejaIRQ0)();


void interrupt nuevaIRQ0 () /* rutina ejecutada cada 55 ms */
{
   tiempo++;                /* incrementar nuestro contador de hora */
   outportb (0x20,0x20);    /* EOI al controlador de interrupciones */
}

void prep_hw (void)
{
  viejaIRQ0=getvect(8);      /* preservar vector de int. peri¢dica */
  setvect (8, nuevaIRQ0);    /* instalar nueva rutina de control   */
  outportb (0x21, 0xfe);     /* inhibir todas las int. salvo timer */
}

void rest_hw (unsigned long tiempo_transcurrido_con_reloj_parado)
{
  outportb (0x21, 0);         /* autorizar todas las interrupciones */
  setvect (8, viejaIRQ0);     /* restaurar vector de int. peri¢dica */
  cbios=HORA_BIOS; *cbios+=tiempo_transcurrido_con_reloj_parado;
}


void main(int argc, char **argv)
{
  if (allocmem ((unsigned) ((MAXBUF+0x1800) >> 4), &segmento)!=-1) {
    printf("\nInsufficient memory.\n"); exit(255); }

  sbuffer=MK_FP((segmento+0x100) & 0xff00 | 0x80, 0); /* 2Kb+n*4Kb */

  if (argc<2) { printf("\nChoose the drive to test.\n"); exit(1); }
  unidad=(argv[1][0] | 0x20) - 'a';
  if ((unidad<2) || (absread (unidad, 1, 0L, sbuffer)!=0)) {
    printf ("\nChoose drive C or above with less than 32 Mb.\n");
    exit (2); }

  tamsect = sbuffer[11] | (sbuffer[12]<<8);
  ti = (long) tamsect * ((sbuffer[0x14] << 8) | sbuffer[0x13]);
  if ((ti < MAXBUF) || (ti > 33554431L)) {
    printf ("\nNeeds a disk from %2.0f Kb to 32 Mb\n", MAXBUF/1024.0);
    exit (3); }

  textmode (C80); clrscr();
  printf ("\nComputing speed (wait %2.0f sec.)...", TIEMPO/TM);

  pantalla=MK_FP((peekb(0x40,0x49)==7 ? 0xB000:0xB800), 0x140);

  prep_hw(); ti=tiempo=vueltas=0;
  while (ti==tiempo); /* esperar pulso del reloj */ ti+=TIEMPO;

  while (ti >= tiempo)
    if (absread (unidad, MAXBUF / tamsect, 0L, sbuffer)!=0) {
      rest_hw(ti-tiempo); printf ("\nError reading the disk.\n");
      exit(254); }
    else if (!(vueltas++ & 7)) *pantalla++=0xf07;  /* "imprimir" */

  rest_hw(TIEMPO); clrscr();

  printf("\nKBSEC 1.2: Effective data transfer rate on drive %c:\
    %6.0f Kb/sec.\n", unidad+'A',MAXBUF/1024.0*vueltas/(TIEMPO/TM));
}
