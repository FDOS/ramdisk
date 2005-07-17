
;⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
;≥                                                                   ≥
;≥  BITDISK 1.1 - Source code for the 256-bytes Resizeable Ramdisk   ≥
;≥                                                                   ≥
;≥                 100% freeware  -  100% public domain              ≥
;≥                                                                   ≥
;≥ (C) 1994-1995 Ciriaco Garc°a de Celis   Email:   ciri@gui.uva.es  ≥
;≥    Grupo Universitario de Inform†tica   Fidonet: 2:341/21.8       ≥
;≥          Facultad de Ciencias                                     ≥
;≥    Universidad de Valladolid  (Spain)                             ≥
;≥                                                                   ≥
;≥  ˛ Contributions to save memory, and German messages by:          ≥
;≥       Axel Christoph Frinke  <acfrinke@uni-bonn.de>               ≥
;≥  ˛ Switchar support added by                                      ≥
;≥       Matthias Paul  <mpaul@ibh.rwth-aachen.de>                   ≥
;≥                                                                   ≥
;≥  The world's smallest resizeable RamDisk driver for DOS/WINDOWS   ≥
;≥                                                                   ≥
;≥        - Only takes 256 bytes of conventional/upper memory!!      ≥
;≥        - Supports XMS memory. Only for AT or better.              ≥
;≥        - 100% English, Spanish and German messages.               ≥
;≥        - Based on XDISK driver (published in spanish PC-WORLD     ≥
;≥          edition, June 1993) and TDSK (article from spanish       ≥
;≥          edition of Microsoft Systems Journal, November 1992).    ≥
;≥                                                                   ≥
;≥          Assembly with TASM/MASM and link with TLINK/LINK         ≥
;≥              No warranties for damages or malfunction             ≥
;≥                                                                   ≥
;¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ

; ------------  Please excuse spanish comments in some source
;               sections, if you don't understand them well.

               .286                    ; only 286 or better CPU

XPUSH          MACRO regmem            ; push a list of registers
                 IRP rm, <regmem>
                   PUSH rm
                 ENDM
               ENDM

XPOP           MACRO regmem            ; pop a list of registers
                 IRP rm, <regmem>
                   POP rm
                 ENDM
               ENDM

; ************ Ramdisk: Init of resident area.

_BITDISK       SEGMENT
               ASSUME CS:_BITDISK, DS:_BITDISK

               DD   -1            ; chain with other device drivers
               DW    0            ; attributes word
               DW    estrategia   ; strategy routine
               DW    interrupcion ; interrupt routine
               DB    1            ; number of drives

cs_bitdisk     DW    ?
id_bitdisk     DB    "BDK"   ; this is BITDISK
letra_unidad   DB    ?       ; ASCII drive letter of disk ('C',...)

status         EQU BYTE PTR StatPtr+2
                             ; 0: disk not formatted
                             ; 1: used XMS 2.0+ memory
                             ; 0FFh: INIT still not run

cambiado       EQU BYTE PTR cambptr+3
                             ; after formatting the RamDisk is set
                             ; to 0FFh (to mean "disk change")

drv_media      EQU   0FAh    ; media descriptor byte

bpb_ptr        DW    bpb     ; points to disk BPB

bpb            LABEL BYTE    ; These BPB values are arbitrary, but
bytes_sector   DW    512     ; they are correct (if not, DOS may
sect_cluster   DB    1       ; hang while loading the device driver
sect_reserv    DW    1       ; and performing its internal calcs).
num_fats       DB    1
entradas_raiz  DW    128
num_sect       DW    128
media_byte     DB    drv_media
sectores_fat   DW    4
fin_bpb        EQU   $

; ------------ Strategy and interrupt routines of RamDisk.
;              Important: It is assumed that DOS calls first the
;                         strategy routine, and then (without
;                         modifying ES:BX) the interrupt one.

interrupcion   PROC  FAR
               PUSHA                   ; *
               PUSH  DS                ; **
               PUSH  ES
               POP   DS                ; DS:BX -> request header
               XPUSH <BX, DS>
               MOV   AX,2              ; AH = 0, AL = 2
StatPtr:       CMP   AH,0FFH           ; patched area (location of status)
               JE    exit_error        ; unformatted disk: error
               XLAT                    ; AX = [BX+2] = order (AH = 0)
patch_init:    JMP   init              ; after install: XOR BP,BP/DEC AX
               JNZ   no_media_chk      ; the order is not 1
cambptr:       MOV   BYTE PTR [BX+14],0; patched area (location of cambiado)
               MOV   CS:cambiado,1     ; the disk will not change more...
               JMP   exit_ok
no_media_chk:  DEC   AX
               JNZ   no_build_bpb      ; the order is not 2
               MOV   WORD PTR [BX+18],OFFSET bpb
               MOV   [BX+20],CS
exit_ok:       MOV   AX,100h
               JMP   exit_
no_build_bpb:  SUB   AL,6
               JZ    prep_io           ; order 8: write (BP=0)
               DEC   AX
               JZ    prep_io           ; order 9: write verify
               INC   BP
               ADD   AL,5
               JZ    prep_io           ; order 4: read (BP=1)
               MOV   AL,3              ; unsupported order
exit_error:    MOV   AH,81h
exit_:         XPOP  <DS, BX>
exit_final:    MOV   [BX+3],AX
               POP   DS                ; **
               POPA                    ; *
estrategia:    RET
interrupcion   ENDP
                                           ; prepare registers for I/O
prep_io:       LES   DI,[BX+14]            ; * buffer adrress in ES:DI
               LDS   AX,[BX+18]            ; number of sectors in AX
               MOV   BX,DS                 ; first sector, DS undefined!
direct_io:     MOV   SI,CS:bytes_sector
               ADD   AX,BX
               JNC   io_ok?                ; last sector < 65536
io_no_ok:      MOV   AL,8                  ; Æsector not foundØ
               JMP   exit_error
io_ok?:        CMP   AX,CS:num_sect
               JA    io_no_ok              ; ending sector outside!
               SUB   AX,BX
               MUL   SI                    ; DX(CF):AX = block size
               RCR   AX,1                  ; CF:AX/2 -> AX = words
               MOV   CX,DI
               NEG   CX                    ; 10000h-CX: CF=1 if CX<>0
               CMC                         ; CF:CX bytes to the end of
               RCR   CX,1                  ; segment = (10000h-DI)/2
               CMP   AX,CX
               JAE   io_cx_ok
               MOV   CX,AX                 ; * size: CX words
io_cx_ok:      JCXZ  io_no_ok              ; CX=0 if DI=0FFFFh (fatal)
               MOV   AX,BX                 ; initial sector
               MUL   SI                    ; * offset in DX:AX

               DEC   BP                ; read/write in the disk
               JNZ   xms_escribe
               XPUSH <ES,DI,BP>        ; segm:offs and destination handle
xms_escribe:   XPUSH <DX,AX>           ; offset DX:AX
               DB    68h               ; opcode of ÆPUSH inmediateØ
xms_handle     DW    ?                 ; source/destination handle
               JZ    xms_general
               INC   BP                ; this makes BP = 0
               XPUSH <ES,DI,BP>        ; segm:offs and source handle
xms_general:   SHL   CX,1              ; words -> bytes
               RCL   BP,1              ; BP was 0
               XPUSH <BP,CX>           ; block size in BP:CX
               MOV   SI,SP
               PUSH  SS
               POP   DS                ; DS:SI pointing to stack
               MOV   AH,0Bh            ; function to move EMB
               DB    9Ah               ; opcode of CALL FAR SEG:OFF
xms_driver     LABEL DWORD             ; address of XMS driver
xms_desp       DW    ?
xms_segm       DW    ?
               ADD   SP,16             ; equilibrate stack
               SHR   AX,1              ; bit 0 from AX -> CF
               JC    exit_ok
trans_error:   XPOP  <DS, BX>
               MOV   WORD PTR [BX+18],AX  ; 0 sectors moved (AX=0)
               MOV   AX,810Ch          ; error code
               JMP   exit_final

               ; <<< Ends of resident code for RamDisk >>>


; ************ Instalaci¢n (desde CONFIG.SYS).

init           PROC
               MOV   WORD PTR CS:patch_init,0ED31h ; c¢digo XOR BP,BP
               MOV   BYTE PTR CS:patch_init+2,48h  ; c¢digo DEC AX
               INC   CS:status              ; 0: disco no formateado
               MOV   CS:cs_bitdisk,CS       ; inicializar esa variable
               MOV   BYTE PTR [BX+13],1     ; una unidad de disco
               LEA   AX,bpb_ptr
               MOV   [BX+18],AX
               MOV   [BX+20],CS             ; inicializado puntero BPB
               MOV   AL,[BX+22]             ; unidad en DOS 3.0+
               ADD   AL,'A'
               PUSH  CS
               POP   DS
               MOV   letra_unidad,AL        ; guardar letra de unidad
               MOV   inf_drv_conf,AL
               LEA   DX,install_txt
               CALL  imprimir
               LEA   DX,inf_drv_conf
               CALL  imprimir
               XPOP  <DS, BX>               ; DS:BX -> request header
               XPUSH <BX, DS>
               MOV   WORD PTR [BX+14],OFFSET init  ; †rea residente
               MOV   [BX+16],CS
               JMP   exit_ok
init           ENDP

; ************ Redefinici¢n (invocada desde el AUTOEXEC.BAT o el DOS).

main           PROC  FAR
               MOV   AX,_BITDISK            ; programa de un segmento
               MOV   DS,AX                  ; DS: -> _BITDISK
               MOV   BX,81h                 ; ES:BX l°nea de ¢rdenes
               CALL  ges_param              ; procesar par†metros
               CMP   param_h,ON
               JE    exit_instalar          ; piden ayuda
               MOV   AX,DS
               MOV   ES,AX                  ; ES: --> _BITDISK
               CALL  reside_bitdsk?         ; ®instalado BITDISK?
               CMP   segm_bitdisk,0
               JE    salida_fatal           ; no instalado a£n
               MOV   ES,segm_bitdisk        ; ES: --> disco residente
               TEST  lista_err,ERROR0       ; ®error sintaxis?
               JNZ   exit_instalar          ; s°: no modificar disco
               CMP   param_unidad,0
               JE    disco_defecto          ; no indicada letra unidad
               CALL  obtener_segm           ; segmento de la unidad
               JC    salida_fatal           ; fallo (no es un BITDISK)
disco_defecto: CMP   param_tdiscof,ON
               JNE   exit_instalar          ; no indicado nuevo tama§o
               CMP   ES:status,0
               JE    cont_instalar          ; no estaba formateado a£n
               CALL  desinstala             ; liberar memoria ocupada
cont_instalar: CALL  info_xms               ; evaluar memoria XMS
               CMP   tdisco,0               ; ®se reservar† memoria?
               JE    exit_instalar          ; no: no hay m†s que hacer
               CALL  reserva_xms            ; reservar memoria
               JC    exit_instalar          ; fallo reservando memoria
               CALL  params_disco           ; adaptar par†metros disco
               CALL  formatear              ; BOOT, FAT y ROOT
exit_instalar: CALL  info_bitdisk           ; informar sobre el disco
               MOV   AX,4C00h
               INT   21h                    ; final
salida_fatal:  LEA   DX,bitdisk_noins
               JNC   mens_ok
               LEA   DX,bitdisk_noes
mens_ok:       CALL  imprimir
               MOV   AX,4C00h
               INT   21h
main           ENDP

; ------------ Leer los par†metros de la l°nea de comandos (ES:BX).

ges_param      PROC
               CALL  swc_patch         ; align to switchar
               CALL  busca_param       ; saltar delimitadores
               JC    fin_param         ; no hay m†s par†metros
swchr0:        CMP   AX,"i/"
               JE    cod_tel
swchr1:        CMP   AX,"?/"
               JE    si_ayuda
swchr2:        CMP   AX,"h/"
               JNE   no_ayuda
si_ayuda:      MOV   param_h,ON
               JMP   fin_param
cod_tel:       ADD   BX,3
               CMP   BYTE PTR ES:[BX-1],'='
               JE    p_id_ok
               CMP   BYTE PTR ES:[BX-1],':'
               JE    p_id_ok
p_id_ok:       CALL  obt_num           ; leer c¢digo telef¢nico
               MOV   param_i,ON
               MOV   codigo_tfno,AX
               JMP   ges_param
no_ayuda:      CMP   AH,':'
               JNE   no_unidad
               AND   AL,255-32         ; poner en may£sculas
               MOV   param_unidad,AL
               ADD   BX,2
               CALL  busca_param
               JC    fin_param
no_unidad:     CALL  obt_num
               MOV   param_tdisco,AX   ; es numÇrico: tama§o del disco
               MOV   param_tdiscof,ON  ; par†metro de tama§o indicado
               CALL  busca_param
               JC    fin_param
               CALL  obt_num
               MOV   param_tsect,AX    ; tama§o de sector
               CALL  busca_param
               JC    fin_param
               CALL  obt_num
               MOV   param_tdir,AX     ; entradas al directorio
               CALL  busca_param
               JC    fin_param
               CALL  obt_num
               MOV   param_tcluster,AX ; tama§o de cluster
fin_param:     CALL  validar
               RET
ges_param      ENDP

validar        PROC
               MOV   AX,param_tdisco   ; ®n£meros correctos?
               OR    AX,param_tsect
               OR    AX,param_tdir
               OR    AX,param_tcluster
               CMP   AX,0FFFFh
               JE    sintax_err
               CMP   param_tdisco,0
               JE    valida_tsect      ; no indicado tama§o (o 0)
               CMP   param_tdisco,4
               JB    sintax_err
               CMP   param_tdisco,32768
               JA    sintax_err
valida_tsect:  CMP   param_tsect,0
               JE    valida_tclus      ; no indicado tama§o de sector
               CMP   param_tsect,64
               JE    valida_tclus
               CMP   param_tsect,128
               JE    valida_tclus
               CMP   param_tsect,256
               JE    valida_tclus
               CMP   param_tsect,512
               JNE   sintax_err
valida_tclus:  CMP   param_tcluster,256
               JB    fin_validar
sintax_err:    MOV   param_tdiscof,OFF  ; no definir disco ahora
               MOV   param_tdisco,0
               MOV   param_tsect,0
               MOV   param_tdir,0
               MOV   param_tcluster,0
               OR    lista_err,ERROR0   ; aviso de error de sintaxis
fin_validar:   RET
validar        ENDP

busca_param    PROC                    ; saltar delimitadores
               DEC   BX
p_delimit:     INC   BX
               MOV   AX,ES:[BX]
               CMP   AL,' '
               JE    p_delimit         ; espacio en blanco
               CMP   AL,9
               JE    p_delimit         ; tabulador
               CMP   AL,13
               JE    p_final           ; CR ¢ LF indican el final
               CMP   AL,10
               JE    p_final
               OR    AX,"  "           ; poner en min£sculas
               CLC
               RET
p_final:       STC                     ; se acabaron los par†metros
               RET
busca_param    ENDP

obt_num        PROC                    ; leer n£mero: devolver 65535
               XPUSH <CX,DX,SI>        ; si hay error
               XOR   AX,AX             ; n£mero en proceso de creaci¢n
otro_digito:   MOV   CL,ES:[BX]
               CMP   CL,'0'
               JB    no_digito
               CMP   CL,'9'
               JBE   digito_ok
no_digito:     CMP   CL,' '            ; posibles delimitadores...
               JE    fin_num
               CMP   CL,9
               JE    fin_num
               CMP   CL,13
               JE    fin_num
               CMP   CL,10
               JE    fin_num
swchr3:        CMP   CL,'/'
               JE    fin_num
               JMP   num_incorr
digito_ok:     XOR   DX,DX
               MOV   SI,10
               MUL   SI                ; AX = AX * 10
               JC    num_incorr
               XOR   CH,CH
               SUB   CL,'0'
               ADD   AX,CX             ; AX = AX + dato
               JC    num_incorr
               INC   BX
               JMP   otro_digito
num_incorr:    MOV   AX,65535          ; indicar valor incorrecto
fin_num:       XPOP  <SI,DX,CX>
               RET
obt_num        ENDP

swc_patch      PROC
               XPUSH <AX,CX,DX,DI,ES>
               MOV   DL, '/'           ; assume default, if no switchar-supported
               MOV   AX, 3700h
               INT   21h
               CMP   AL, 00h           ; should indicate 'function supported'
               JNE   swc_nosup
               CMP   DL, ' '           ; couldn't be valid switchar below space
               JNA   swc_nosup
               MOV   BYTE PTR [swchr0+1],DL
               MOV   BYTE PTR [swchr1+1],DL
               MOV   BYTE PTR [swchr2+1],DL
               MOV   BYTE PTR [swchr3+2],DL
               MOV   AL, '/'
               CLD
               MOV   DI, OFFSET bitdisk_noins
               MOV   CX, bitdisk_noes-bitdisk_noins; length
               PUSH  CS
               POP   ES
swc_loop:      REPNZ SCASB             ; adapt this, if the help pages text will
               CMP   BYTE PTR [DI], '?'; change in the future.
               JNE   swc_nosup         ; by the moment it scans only for '/?'
               MOV   BYTE PTR [DI-1],DL; replace occurence with current switchar
               CMP   CX, 0
               JA    swc_loop
swc_nosup:     XPOP  <ES,DI,DX,CX,AX>
               RET
swc_patch      ENDP

; ------------ Obtener el segmento de la unidad BITDISK indicada.

obtener_segm   PROC
               CALL  lista_drv
               LEA   SI,area_trabajo-4
busca_ultimo:  ADD   SI,4
               CMP   WORD PTR [SI],0
               JNE   busca_ultimo      ; realmente, el primero
recorre_dsks:  SUB   SI,4
               CMP   SI,OFFSET area_trabajo
               JB    bitdsk_no_hay
               CMP   BYTE PTR [SI+3],1
               JNE   recorre_dsks
               PUSH  DS
               MOV   DS,[SI]
               MOV   AL,letra_unidad
               POP   DS
               CMP   AL,param_unidad   ; disco BITDISK ®es el buscado?
               JNE   recorre_dsks
               MOV   letra_unidad,AL   ; inicializar letra de unidad
               MOV   AX,[SI]
               MOV   segm_bitdisk,AX   ; inicializar segmento
               MOV   ES,AX
               CLC
               RET
bitdsk_no_hay: STC
               RET
obtener_segm   ENDP

; ------------ Verificar la presencia en memoria de BITDISK.

reside_bitdsk? PROC
               XPUSH <AX,DX,SI>
               CALL  lista_drv
               LEA   SI,area_trabajo-4
busca_final:   ADD   SI,4
               CMP   WORD PTR [SI],0
               JNE   busca_final       ; ir al final de la tabla
busca_bdsk:    SUB   SI,4
               CMP   SI,OFFSET area_trabajo
               JB    fin_busca         ; no reside (segm_bitdisk = 0)
               CMP   BYTE PTR [SI+3],1
               JNE   busca_bdsk
               MOV   AX,[SI]           ; encontrada unidad BITDISK
               MOV   segm_bitdisk,AX
               PUSH  DS
               MOV   DS,AX
               MOV   AL,letra_unidad
               POP   DS
               MOV   letra_unidad,AL
fin_busca:     XPOP  <SI,DX,AX>
               RET
reside_bitdsk? ENDP

; ------------ Crear lista con todos los dispositivos de bloque.

lista_drv      PROC
               XPUSH <BX,CX,DI,ES>
               MOV   AH,52h            ; "Get list of lists"
               INT   21h               ; obtener puntero en ES:BX
               ADD   BX,22h            ; versiones del DOS 3.1+
               LEA   DI,area_trabajo-4 ; tabla de dispositivos-4
disp_otro:     ADD   DI,4
disp_skip:     LES   BX,ES:[BX]        ; siguiente dispositivo
               CMP   BX,-1
               JE    disp_fin
               TEST  BYTE PTR ES:[BX+5],80h
               JNZ   disp_skip         ; es dispositivo de caracteres
               MOV   CL,ES:[BX+10]     ; es de bloques
               MOV   [DI],ES           ; anotar direcci¢n
               MOV   [DI+2],CL
               MOV   BYTE PTR [DI+3],0 ; de momento, no es BITDISK
               PUSH  DI
               LEA   SI,id_bitdisk     ; identificaci¢n de BITDISK
               MOV   DI,SI
               MOV   CX,3
               CLD
               REP   CMPSB             ; ®es BITDISK?
               POP   DI
               JNE   disp_otro         ; de bloques, pero no BITDISK
               MOV   AX,ES:cs_bitdisk  ; segmento real de BITDISK
               MOV   [DI],AX           ; corregir direcci¢n en tabla
               INC   BYTE PTR [DI+3]   ; indicar dispositivo BITDISK
               JMP   disp_otro         ; buscar hasta completar tabla
disp_fin:      MOV   WORD PTR [DI],0   ; final de la lista
               XPOP  <ES,DI,CX,BX>
               RET
lista_drv      ENDP

; ------------ Liberar la memoria ocupada por un BITDISK residente

desinstala     PROC
               MOV   DX,ES:xms_handle
               MOV   AH,0Ah
               CALL  ES:xms_driver
               CMP   AX,1
               JE    desinstalado      ; Çxito al liberar memoria XMS
               STC
desinstalado:  MOV   ES:status,0       ; disco Æno formateadoØ
               JNC   desins_ok
               OR    lista_err,ERROR14 ; fallo al liberar memoria
               STC
desins_ok:     RET
desinstala     ENDP

; ------------ Determinar cantidad de memoria XMS que hay para BITDISK

info_xms       PROC
               MOV   tdisco,0          ; ley de Murphy
               PUSH  ES
               MOV   AX,4300h
               INT   2Fh
               CMP   AL,80h            ; ®hay controlador XMS?
               JNE   xms_ok
               MOV   AX,4310h          ; obtener su direcci¢n
               INT   2Fh
               MOV   xms_segm,ES
               MOV   xms_desp,BX
               MOV   AH,8
               CALL  xms_driver        ; preguntar memoria libre
               AND   AX,AX
               JNZ   xms_kb_ok         ; no hubo fallo
               CMP   BL,0A0h
               JE    xms_kb_ok         ; asignada ya toda la memoria
               TEST  BL,80h
               JZ    xms_kb_ok         ; no hay memoria XMS disponible
               OR    lista_err,ERROR8  ; fallo real del controlador
xms_kb_ok:     CMP   AX,4              ; mayor bloque XMS disponible
               JB    xms_ok
               MOV   xms_kb,AX         ; m°nimo necesario: 4 Kb
xms_ok:        POP   ES
               MOV   AX,param_tdisco
               MOV   BX,xms_kb
               AND   BX,BX
               JNZ   usara_xms
               OR    lista_err,ERROR6  ; no hay memoria XMS disponible
               JMP   mem_infoado
usara_xms:     CMP   AX,BX
               JBE   usar_xms          ; piden algo razonable
               MOV   AX,BX
               OR    lista_err,ERROR4  ; rebajado el tama§o
usar_xms:      MOV   tdisco,AX
               MOV   status,1          ; indicar memoria extendida
mem_infoado:   RET
info_xms       ENDP

; ------------ Reservar la memoria llamando al controlador XMS.

reserva_xms    PROC
               MOV   AH,9
               MOV   DX,tdisco
               CALL  xms_driver        ; pedir memoria XMS
               AND   AX,AX
               JNZ   mem_rda_xms
               OR    lista_err,ERROR8  ; fallo del controlador XMS
               STC                     ; indicar error
mem_rda_xms:   MOV   xms_handle,DX
               RET
reserva_xms    ENDP

; ------------ Definir valores por defecto y adaptar los par†metros.

params_disco   PROC
               MOV   AX,tdisco     ; en Kb
               MOV   BX,AX         ; entradas de directorio propuestas
               MOV   CL,1          ; sectores por cluster propuestos
               CMP   AX,128        ; ®disco de 128 Kb o menos?
               JBE   prop_ok
               MOV   BX,128
               CMP   AX,512        ; ®disco de 512 Kb o menos?
               JBE   prop_ok
               MOV   BX,256
               CMP   AX,2042       ; ®disco de casi 2 Mb o menos?
               JBE   prop_ok
               MOV   CL,2          ; evitar FAT16
               CMP   AX,4084       ; ®disco de casi 4 Mb o menos?
               JBE   prop_ok
               MOV   CL,4          ; evitar FAT16 hasta 8 Mb
               MOV   BX,384
               CMP   AX,16384      ; ®disco de menos de 16 Mb?
               JB    prop_ok
               MOV   BX,512
prop_ok:       MOV   tdir,BX
               MOV   tcluster,CL   ; inicializar valores recomendados
               MOV   DX,1024       ; AX = tama§o del disco en Kb
               MUL   DX            ; DX:AX = bytes totales del disco
               MOV   CX,param_tsect
               AND   CX,CX
               JNZ   tsect_def     ; se ha definido tama§o de sector
tsect_rec:     MOV   CX,tsect      ; tama§o por defecto
tsect_def:     CALL  divCX
               JNC   nsect_ok      ; menos de 65536 sectores: correcto
               OR    lista_err,ERROR11
               JMP   tsect_rec     ; asumir por defecto y recalcular
nsect_ok:      MOV   tsect,CX
               MOV   numsect,AX
               MOV   BX,AX
               SHR   BX,1          ; BX = 1/2 del nß total de sectores
               MOV   CX,param_tdir
               AND   CX,CX
               JNZ   tdir_def      ; se ha definido nß entradas
tdir_rec:      MOV   CX,tdir       ; nß por defecto
tdir_def:      MOV   AX,tsect
               XOR   DX,DX
               MOV   SI,32         ; 32 bytes = tama§o entrada direct.
               DIV   SI            ; AX nß entradas direct. por sector
               XCHG  AX,CX
               XOR   DX,DX         ; DX:AX = nß de entradas
               DIV   CX            ; CX = entradas en cada sector
               AND   DX,DX         ; AX = nß sectores del ROOT
               JZ    dir_ok?
               INC   AX            ; redondear tama§o de ROOT
dir_ok?:       CMP   AX,BX         ; BX = 1/2 nß sectores del disco
               JB    dir_ok
               OR    lista_err,ERROR12  ; directorio excesivo
               JMP   tdir_rec      ; directorio por defecto
dir_ok:        MOV   sdir,AX
               MUL   tsect
               MOV   CX,32
               CALL  divCX
               MOV   tdir,AX       ; optimizar tama§o de directorio
               MOV   AX,512
               XOR   DX,DX
               DIV   tsect         ; 512 / tama§o de sector
               MOV   BL,tcluster
               XOR   BH,BH
               MUL   BX            ; ajustar tama§o de cluster
               AND   AL,AL
               JZ    propclus_ok
               MOV   tcluster,AL
propclus_ok:   MOV   BX,param_tcluster
               AND   BX,BX
               JNZ   tcluster_def  ; se ha definido tama§o de cluster
tcluster_rec:  MOV   BL,tcluster   ; tama§o por defecto
               XOR   BH,BH
tcluster_def:  SHL   BX,1
               CMP   BX,numsect    ; ®cabe seguro un cluster?
               JB    tcluster_ok
tcluster_mal:  OR    lista_err,ERROR13 ; tama§o de cluster incorrecto
               JMP   tcluster_rec
tcluster_ok:   SHR   BX,1
               MOV   AX,tsect
               MUL   BX            ; DX:AX = tama§o de cluster
               JC    tcluster_mal
               CMP   AX,31744
               JA    tcluster_mal  ; cluster de m†s de 31 Kb
               MOV   tcluster,BL   ; sectores por cluster
               MOV   tamcluster,AX ; tama§o de cluster
               MOV   SI,3
               CALL  eval_clust    ; obtener nß m†s alto de cluster
               CMP   AX,4086
               JAE   fat16         ; el nß m†s alto supera 4085
               MOV   CX,3
               MUL   CX            ; clusters * 3
               SHR   DX,1
               RCR   AX,1          ; clusters * 3 / 2 = clusters * 1,5
               JMP   calc_sfat
fat16:         MOV   SI,4
               CALL  eval_clust
               SHL   AX,1
               RCL   DX,1          ; clusters * 2
calc_sfat:     DIV   tsect         ; AX = nß sectores de FAT aprox.
               AND   DX,DX
               JZ    fat_ok
               INC   AX            ; redondeo
fat_ok:        MOV   sfat,AX
               MOV   AX,numsect    ; nß total de sectores
               DEC   AX            ; descontar BOOT
               SUB   AX,sdir       ; descontar ROOT
               SUB   AX,sfat       ; descontar FAT
               MOV   CL,tcluster
               XOR   CH,CH
               XOR   DX,DX
               DIV   CX            ; AX = n£mero real de clusters
               INC   AX            ; se numeran desde 2
               MOV   ultclus,AX
               RET
params_disco   ENDP

eval_clust     PROC                ; obtener el nß m†s alto de cluster
               MOV   AX,numsect
               DEC   AX            ; restar BOOT
               SUB   AX,sdir       ; restar ROOT
               MUL   tsect         ; DX:AX = nsect * tamsect
               SHL   AX,1
               RCL   DX,1          ; DX:AX = nsect * tamsect * 2
               MOV   CX,tamcluster
               SHL   CX,1
               ADD   CX,SI         ; CX = 2 * tamcluster + SI
               DIV   CX
               INC   AX            ; los clusters se numeran desde 2
               AND   DX,DX         ; ®sobra un ÆcachoØ de cluster?
               JZ    clust_eval    ; redondear: ≠es preferible que
               INC   AX            ; sobre un poco de FAT a que falte!
clust_eval:    XOR   DX,DX         ; resultado en DX:AX
               RET
eval_clust     ENDP

; ------------ Inicializar la BOOT, FAT y ROOT del disco virtual.

formatear      PROC
               MOV   AX,tsect          ; preparar BPB
               MOV   bytes_sector,AX
               MOV   AL,tcluster
               MOV   sect_cluster,AL
               MOV   AX,tdir
               MOV   entradas_raiz,AX
               MOV   AX,numsect
               MOV   num_sect,AX
               MOV   AX,sfat
               MOV   sectores_fat,AX
               MOV   AL,0FFh           ; ha habido ÆcambioØ de disco
               MOV   cambiado,AL
               MOV   ES:cambiado,AL    ; actualizar variables...
               MOV   AL,status
               MOV   ES:status,AL
               MOV   AX,xms_handle
               MOV   ES:xms_handle,AX
               MOV   AX,xms_desp
               MOV   ES:xms_desp,AX
               MOV   AX,xms_segm
               MOV   ES:xms_segm,AX
               LEA   CX,fin_bpb
               LEA   SI,bpb            ; actualizar BPB
               SUB   CX,SI
               MOV   DI,SI
               CLD
               REP   MOVSB
               PUSH  ES                ; *
               MOV   AX,DS             ; formatear el disco
               MOV   ES,AX
               LEA   SI,boot_sect
               LEA   DI,area_trabajo
               MOV   CX,128
               CLD
               REP   MOVSB             ; primeros 128 bytes del BOOT
               XOR   AX,AX
               MOV   CX,512-128
               REP   STOSB             ; a 0 resto del †rea de trabajo
               LEA   DI,area_trabajo
               ADD   DI,tsect
               MOV   [DI-2],0AA55h     ; marca de sector v†lido
               CALL  escribe_sectAX    ; escribir sector BOOT (AX=0)
               LEA   DI,area_trabajo
               MOV   CX,tsect
               REP   STOSB             ; borrar area de trabajo
               MOV   AX,sfat
               ADD   AX,sdir           ; AX = sectores fat + dir. raiz
ini_fat:       CMP   AX,1
               JE    pfat
               CALL  escribe_sectAX    ; inicializar directorio raiz
               DEC   AX                ; y £ltimos sectores de la FAT
               JMP   ini_fat
pfat:          LEA   DI,area_trabajo
               MOV   BYTE PTR [DI],drv_media
               MOV   AX,0FFFFh         ; inicializar 3 bytes FAT...
               MOV   DS:[DI+1],AX
               CMP   ultclus,4086      ; ®menos de 4085 clusters?
               JB    pfat_ok
               MOV   DS:[DI+3],AL      ; inicializar 4ß byte FAT
pfat_ok:       MOV   AX,1
               CALL  escribe_sectAX    ; primer sector FAT preparado
               LEA   SI,dir_raiz
               LEA   DI,area_trabajo
               MOV   CX,32
               REP   MOVSB
               MOV   AX,sfat
               INC   AX
               CALL  escribe_sectAX    ; primer sector raiz preparado
               POP   ES                ; *
               RET
formatear      ENDP

escribe_sectAX PROC                    ; Escribir sector nß AX del disco
               PUSHF                   ; *
               PUSHA                   ; **
               PUSH  ES                ; ***
               MOV   ES,segm_bitdisk
               PUSH  CS
               LEA   BX,retf2
               PUSH  BX                ; apilar segundo retorno
               PUSH  ES
               PUSH  WORD PTR ES:[8]   ; apilar rutina de interrupci¢n
               PUSH  CS
               LEA   BX,retf1
               PUSH  BX                ; apilar primer retorno
               PUSH  ES
               PUSH  WORD PTR ES:[6]   ; apilar rutina de estrategia
               LEA   BX,orden_write
               LEA   DX,area_trabajo
               MOV   [BX+14],DX        ; direcci¢n de transferencia
               MOV   [BX+16],DS
               MOV   [BX+20],AX        ; sector inicial
               PUSH  CS
               POP   ES
               RETF                    ; ejecutar rutina de estrategia
retf1:         RETF                    ; ejecutar rutina de interrupci¢n
retf2:         POP   ES                ; ***
               POPA                    ; **
               POPF                    ; * restaurar bit DF
               RET
escribe_sectAX ENDP

; ------------ Informar sobre el disco virtual instalado.

info_bitdisk   PROC
               LEA   DX,ayuda_txt
               CMP   param_h,ON        ; ®solicitud de ayuda?
               JNE   cont_info         ; no
               JMP   info_exit
cont_info:     MOV   AL,letra_unidad
               MOV   inf_unidad,AL
               LEA   DX,info_txt
               CALL  imprimir
               LEA   DX,inf_unidad
               CALL  imprimir
               CMP   ES:status,0
               JNE   info_reporte
               LEA   DX,info_nof_txt   ; disco no formateado
               CALL  imprimir
               CMP   lista_err,0
               JNE   info_err          ; mensajes de advertencia
               JMP   info_ret
info_reporte:  LEA   DX,inf_tdisco
               CALL  imprimir
               MOV   AX,ES:num_sect
               MUL   ES:bytes_sector
               MOV   BX,1024
               DIV   BX
               MOV   CL,5
               CALL  print_32

               LEA   DX,inf_tsector
               CALL  imprimir
               MOV   AX,ES:bytes_sector
               XOR   DX,DX
               MOV   CL,5
               CALL  print_32

               LEA   DX,inf_tdir
               CALL  imprimir
               MOV   AX,ES:entradas_raiz
               XOR   DX,DX
               MOV   CL,5
               CALL  print_32

               LEA   DX,inf_tcluster
               CALL  imprimir
               MOV   AL,ES:sect_cluster
               XOR   AH,AH
               XOR   DX,DX
               MOV   CL,5
               CALL  print_32

               LEA   DX,inf_final
               CMP   lista_err,0
               JE    info_exit         ; sin mensajes de advertencia
               CALL  imprimir          ; ... o con ellos
               LEA   DX,cabec_adv_txt
               CALL  imprimir          ; cabecera de advertencias
info_err:      MOV   AX,lista_err
               LEA   BX,tabla_mensajes-2
               MOV   CX,16             ; 16 posibles mensajes
busca_err:     ADD   BX,2
               SHR   AX,1
               JC    informa
mas_mens:      LOOP  busca_err         ; no se produce ese error
               JMP   info_ret
informa:       MOV   DX,[BX]           ; direcci¢n del mensaje
               CALL  imprimir
               JMP   mas_mens          ; acabar con todos
info_exit:     CALL  imprimir
info_ret:      RET
info_bitdisk   ENDP

; ------------ Dividir DX:AX / CX sin desbordamientos.

divCX          PROC                    ; Cociente en AX y resto en DX.
               XPUSH <BX,SI,CX,AX,DX>  ; Si el cociente excede los
               MOV   SI,32             ; 16 bits, CF=1 y todos los
               XOR   BX,BX             ; registros intactos.
divmas:        SHL   AX,1
               RCL   DX,1
               RCL   BX,1
               CMP   BX,CX
               JB    dividido          ; "no cabe"
               SUB   BX,CX
               INC   AL                ; 1 al cociente
dividido:      DEC   SI
               JNZ   divmas
               AND   DX,DX
               JZ    div_ok
               XPOP  <DX,AX>           ; error
               STC
               JMP   div_fin
div_ok:        MOV   DX,BX             ; resto en DX y cociente en AX
               ADD   SP,4              ; ÆsacarØ sin sacar DX y AX
               CLC
div_fin:       XPOP  <CX,SI,BX>        ; recuperar CX, SI y BX
               RET
divCX          ENDP

; --- Imprimir un nß decimal de 32 bits en DXAX formateado por CL.
;
; Entradas:
;       Si bit 4  = 1 --> se imprimir†n signos separadores de millar
;       bits  0-3 = nß total de d°gitos (incluyendo separadores de
;                   millar y parte fraccional)
;       bits  5-7 = nß de d°gitos de la parte fraccional (cuantos
;                   d°gitos de DXAX, empezando por la derecha,
;                   se consideran parte fraccional, e ir†n precedidos
;                   del correspondiente separador)
;
; Salidas: nß impreso, ning£n registro modificado.
;
; * Ejemplo, si DXAX=9384320 y  CL=010 1 1011
;   se imprimir† ( '_' representa un espacio en blanco ):  __93.843,20

print_32       PROC
               PUSH  DS
               PUSH  ES
               PUSH  CS
               PUSH  CS
               POP   DS
               POP   ES
               PUSH  AX                ; preservar todos los registros
               PUSH  BX
               PUSH  CX
               PUSH  DX
               PUSH  SI
               PUSH  DI
               PUSHF
               MOV   formato_pr32,CL   ; byte del formato de impresi¢n elegido
               MOV   CX,idioma_seps
separ_pr32:    MOV   millares_pr32,CH  ; separador de millares
               MOV   fracc_pr32,CL     ; separador parte fraccional
               MOV   BX,OFFSET tabla_pr32
               MOV   CX,10
digit_pr32:    PUSH  CX
               PUSH  AX
               PUSH  DX
               XOR   DI,DI
               MOV   SI,1              ; DISI = 1
               DEC   CX                ; CX - 1
               JCXZ  hecho_pr32
factor_pr32:   SAL   SI,1
               RCL   DI,1              ; DISI * 2
               MOV   DX,DI
               MOV   AX,SI
               SAL   SI,1
               RCL   DI,1
               SAL   SI,1
               RCL   DI,1              ; DISI * 8
               ADD   SI,AX
               ADC   DI,DX             ; DISI = DISI*8 + DISI*2 = DISI*10
               LOOP  factor_pr32       ; DISI = DISI*10*10* ... (CX-1 veces)
hecho_pr32:    POP   DX                ; luego DISI = 10 elevado a (CX-1)
               POP   AX                ; CX se recuperar† m†s tarde
               MOV   CL,0FFh
rep_sub_pr32:  INC   CL
               SUB   AX,SI
               SBB   DX,DI             ; DXAX = DXAX - DISI
               JNC   rep_sub_pr32      ; restar el factor cuanto se pueda
               ADD   AX,SI             ; subsanar el desbordamiento:
               ADC   DX,DI             ; DXAX = DXAX + DISI
               ADD   CL,'0'            ; pasar binario a ASCII
               MOV   [BX],CL
               POP   CX                ; CX se recupera ahora
               INC   BX
               LOOP  digit_pr32        ; pr¢ximo d°gito del n£mero
               STD                     ; transferencias (MOVS) hacia atr†s
               DEC   BX                ; BX apunta al £ltimo d°gito
               MOV   final_pr32,BX     ; £ltimo d°gito
               MOV   ent_frac_pr32,BX  ; frontera parte entera/fraccional
               MOV   CL,5
               MOV   AL,formato_pr32
               SHR   AL,CL             ; AL = nß de decimales
               AND   AL,AL
               JZ    no_frac_pr32      ; ninguno
               MOV   CL,AL
               XOR   CH,CH
               MOV   SI,final_pr32
               MOV   DI,SI
               INC   DI
               REP   MOVSB             ; correr cadena arriba (hacer hueco)
               INC   final_pr32
               MOV   AL,fracc_pr32
               MOV   [DI],AL           ; poner separador de parte fraccional
               MOV   ent_frac_pr32,SI  ; indicar nueva frontera
no_frac_pr32:  MOV   AL,formato_pr32
               TEST  AL,16             ; interpretar el formato especificado
               JZ    poner_pr32        ; imprimir como tal
entera_pr32:   MOV   CX,final_pr32     ; a§adir separadores de millar
               SUB   CX,ent_frac_pr32
               ADD   CX,3
               MOV   SI,final_pr32
               MOV   DI,SI
               INC   DI
               REP   MOVSB             ; correr cadena arriba (hacer hueco)
               MOV   AL,millares_pr32
               MOV   [DI],AL           ; poner separador de millares
               INC   final_pr32
               MOV   ent_frac_pr32,SI  ; usar esta variable como puntero
               SUB   SI,OFFSET tabla_pr32
               CMP   SI,3
               JAE   entera_pr32       ; pr¢ximo separador
poner_pr32:    MOV   BX,final_pr32
               MOV   BYTE PTR [BX+1],0 ; delimitador de fin de cadena
               MOV   BX,OFFSET tabla_pr32
               MOV   principio_pr32,BX ; inicio de cadena
limpiar_pr32:  MOV   AL,[BX]
               CMP   AL,'0'
               JE    blanco_pr32       ; cero a la izda --> poner " "
               CMP   AL,millares_pr32  ; separador millares a la izda
               JE    blanco_pr32
               CMP   AL,fracc_pr32
               JNE   acabar_pr32
               MOV   BYTE PTR [BX-1],'0' ; reponer 0 antes de la coma
               DEC   principio_pr32
acabar_pr32:   MOV   AL,formato_pr32   ; imprimir
               AND   AL,00001111b
               XOR   AH,AH
               MOV   DX,final_pr32
               SUB   DX,AX
               INC   DX                ; DX = offset 'principio'
               AND   AX,AX
               JNZ   format_pr32       ; longitud especificada por el usuario
               MOV   DX,principio_pr32 ; longitud obtenida del n£mero
format_pr32:   CALL  imprimir
               POPF                    ; restaurar todos los registros
               POP   DI
               POP   SI
               POP   DX
               POP   CX
               POP   BX
               POP   AX
               POP   ES
               POP   DS
               RET                     ; salida del procedimiento
blanco_pr32:   MOV   BYTE PTR [BX],' ' ; sustituir 0 ¢ separador de millares
               INC   BX                ; a la izda. por espacio en blanco
               INC   principio_pr32
               CMP   BX,final_pr32
               JB    limpiar_pr32
               MOV   DX,BX             ; es el n£mero 0.000.000.00X
               JMP   SHORT acabar_pr32 ; imprimir
formato_pr32   DB    0
               DB    5 DUP (' ')       ; espacios en blanco para cubrir la
                                       ; mayor plantilla que pueda ser espe-
                                       ; cificada en el formato
tabla_pr32     DT    0                 ; reservar 14 bytes (nß m†s ., m†s ASCIIZ)
               DW    0,0               ; aqu° se solapa un buffer de 32 bytes
millares_pr32  DB    '.'               ; separador de millares
fracc_pr32     DB    ','               ;     "     parte fraccional
final_pr32     DW    0                 ; offset al £ltimo byte a imprimir
principio_pr32 DW    0                 ;  "     "  primer   "  "     "
ent_frac_pr32  DW    0                 ; offset a la frontera entero-fracc.
               DT    0                 ; $ - tabla_pr32 = 32 bytes usados por
                                       ; INT 21h al principio de print_32
print_32       ENDP

; ------------ Imprimir cadena en DS:DX delimitada por un 0 ¢ un 255.
;              Si acaba en 0, se imprime como tal; en caso contrario,
;              se supone que el mensaje es multilingÅe y los diversos
;              idiomas (1, 2, ... N) separan sus cadenas por sucesivos
;              c¢digos 255. El car†cter de control 127 realiza una
;              pausa hasta que se pulsa una tecla.

imprimir       PROC
               XPUSH <AX, BX, CX, DX, SI, DI, ES>
               CMP   idioma,0
               JNE   pr_decidir
               PUSH  DX                ; *
               MOV   AH,30h
               INT   21h
               XCHG  AH,AL
               MOV   CX,AX             ; CX = versi¢n del DOS
               CMP   param_i,ON
               MOV   AX,codigo_tfno
               MOV   BX,1234h
               JNE   pr_busca_cod      ; par†metro /I=cod no indicado
               MOV   BX,AX
               MOV   AL,0FFh
               CMP   BX,255
               JAE   pr_cod            ; c¢digo mayor o igual de 255
               MOV   AL,BL             ; c¢digo menor de 255
pr_cod:        CMP   CX,200h
               JAE   pr_cod_tfno       ; DOS >= 2.X
pr_busca_cod:  CMP   CX,200h
               MOV   AX,1              ; inglÇs para DOS < 2.X
               JB    pr_habla_ax
               MOV   AL,0
pr_cod_tfno:   LEA   DX,area_trabajo
               MOV   AH,38h
               XPUSH <BX, CX>
               INT   21h               ; obtener informaci¢n del pais
               XPOP  <CX, AX>
               JC    pr_habla_ax       ; fallo en la funci¢n
               CMP   CX,20Bh
               JE    pr_habla_ax       ; DOS 2.11: AX c¢d. telef¢nico
               CMP   CX,300h
               MOV   AX,1
               JB    pr_habla_ax       ; 2.x excepto 2.11: mala suerte
               MOV   AX,BX
               LEA   BX,area_trabajo
               MOV   CH,[BX+7]         ; separador de millares
               MOV   CL,[BX+9]         ; separador de decimales
               MOV   idioma_seps,CX
pr_habla_ax:   LEA   BX,info_paises-2
               MOV   CX,1              ; supuesto idioma 1
pr_busca_idi:  ADD   BX,2
               MOV   DX,[BX]
               CMP   AX,DX
               JE    pr_habla_ese
               AND   DX,DX
               JNZ   pr_busca_idi
               INC   CX                ; ser† otro idioma
               CMP   [BX+2],DX
               JNE   pr_busca_idi      ; no es fin de la tabla
pr_habla_ese:  MOV   idioma,CL
               POP   DX                ; *

pr_decidir:    MOV   CL,idioma
               MOV   CH,0              ; nß de idioma a usar (1..N)
               MOV   BX,DX
pr_busca_msg:  MOV   DX,BX
               DEC   BX
pr_busca_ter:  INC   BX
               CMP   BYTE PTR [BX],0
               JE    pr_usar_ese       ; acaba en 0: no buscar m†s
               CMP   BYTE PTR [BX],255
               JNE   pr_busca_ter
               INC   BX
               LOOP  pr_busca_msg      ; acaba en 255 pero no es ese
pr_usar_ese:   MOV   BX,DX
               DEC   BX
pr_cad_lon:    INC   BX
               CMP   BYTE PTR [BX],0
               JE    prlong_ok
               CMP   BYTE PTR [BX],127 ; car†cter de pausa
               JE    prpausa
               CMP   BYTE PTR [BX],255
               JNE   pr_cad_lon        ; calcular longitud
               JMP   prlong_ok
prpausa:       PUSH  BX
               MOV   CX,BX
               SUB   CX,DX
               CALL  pr_cad            ; imprimir hasta el c¢digo 127
pr_limpbuf:    MOV   AH,1
               INT   16h
               JZ    pr_notec
               MOV   AH,0
               INT   16h               ; limpiar buffer del teclado
               JMP   pr_limpbuf
pr_notec:      MOV   AH,0
               INT   16h               ; esperar tecla
               POP   BX
               INC   BX
               MOV   DX,BX
               CMP   AL,27             ; ®tecla ESC?
               STC
               JE    pr_ret
               JMP   pr_cad_lon        ; imprimir el resto
prlong_ok:     MOV   CX,BX
               SUB   CX,DX
               CALL  pr_cad            ; terminar impresi¢n
               CLC
pr_ret:        XPOP  <ES, DI, SI, DX, CX, BX, AX>  ; CF=1 si se puls¢ ESC
               RET
pr_cad:        MOV   AH,40h
               MOV   BX,1
               INT   21h               ; imprimir con el DOS
               RET
imprimir       ENDP


; ************ Datos no residentes para la instalaci¢n

ON             EQU   1            ; constantes booleanas
OFF            EQU   0

segm_bitdisk   DW    0            ; segmento donde reside BITDISK
param_unidad   DB    0            ; n£mero de disco si indicada unidad
param_i        DB    OFF

param_tdiscof  DB    OFF          ; a ON si se define tama§o de disco
param_tdisco   DW    0            ; tama§o de disco (si se define)
param_tsect    DW    0            ; tama§o de sector (si se define)
param_tdir     DW    0            ; n£mero de entradas (si se define)
param_tcluster DW    0            ; tama§o de cluster (si se define)
param_h        DB    OFF          ; a ON si indicado par†metro /? o /H

tdisco         DW    ?            ; tama§o de disco (Kb)
ultclus        DW    ?            ; n£mero m†s alto de cluster
tamcluster     DW    ?            ; tama§o de cluster (bytes)
sdir           DW    ?            ; sectores para directorio raiz
xms_kb         DW    0            ; Kb de memoria XMS libres
idioma         DB    0            ; selecciona el n£mero de idioma (1..N)
idioma_seps    DW    ",."         ; separadores de millares/decimales
codigo_tfno    DW    ?            ; valor de /I= si se indica

               ; --- C¢digo telef¢nico de pa°ses de habla
               ;     hispana (mucha o poca).

info_paises    DW    54                ; Argentina
               DW    591               ; Bolivia
               DW    57                ; Colombia
               DW    506               ; Costa Rica
               DW    56                ; Chile
               DW    593               ; Ecuador
               DW    503               ; El Salvador
               DW    34                ; Espa§a
               DW    63                ; Filipinas
               DW    502               ; Guatemala
               DW    504               ; Honduras
               DW    212               ; Marruecos
               DW    52                ; MÇxico
               DW    505               ; Nicaragua
               DW    507               ; Panam†
               DW    595               ; Paraguay
               DW    51                ; Per£
               DW    80                ; Puerto Rico
               DW    508               ; Rep£blica Dominicana
               DW    598               ; Uruguay
               DW    58                ; Venezuela
               DW    3                 ; LatinoamÇrica
               DW    0                 ; fin de la informaci¢n

               ; --- C¢digo telef¢nico de pa°ses de habla alemana.

               DW    41                ; Switzerland
               DW    43                ; Austria
               DW    49                ; Germany
               DW    0                 ; fin de la informaci¢n

               DW    0                 ; no m†s idiomas

boot_sect      LABEL BYTE
               JMP   SHORT botar
               DB    90h,"BDSK 1.1"  ; NOP/identificaci¢n del sistema
tsect          DW    512          ; tama§o de sector por defecto
tcluster       DB    ?            ; sectores por cluster
               DB    1,0,1        ; sectores reservados/nß de FATs
tdir           DW    ?            ; n£mero de entradas al dir. raiz
numsect        DW    ?            ; nß sectores del disco (<=32Mb)
               DB    drv_media    ; descriptor de medio
sfat           DW    ?            ; sectores por FAT
               DW    1, 1         ; sectores por pista / cabezas
               DB    15 DUP (0)   ; £ltimos datos
botar:         DB    0EAh         ; c¢digo de JMP FAR...
               DW    0,0FFFFh     ; ...FFFF:0000 (programa BOOT)
               DB    "(C)1994 CiriSOFT"; resto (de primeros 64 bytes)
               DB    ". Grupo Universitario de Inform†"
               DB    "tica (GUI) - Valladolid (Spain)",0 ; (128 bytes)

dir_raiz       DB    "BITDISK    "  ; Directorio raiz: primera entrada
               DB    8              ; atributo de etiqueta de vol£men
               DB    10 DUP (0)     ; reservado
               DW    1*2048+10*32   ; hora  1:10
               DW    1+7*32+14*512  ; fecha 1/7/94
               DW    0,0,0          ; £ltimos bytes (hasta 32)

orden_write    DB    0, 1           ; longitud cabecera / nß unidad
               DB    8              ; orden write
               DW    0              ; palabra de estado devuelta
               DD    0, 0           ; uso interno
               DB    0FAh           ; descriptor de medio
               DD    ?              ; direcci¢n E/S
               DW    1              ; 1 sector
               DW    ?              ; primer sector
               DD    0, 0           ; no usados

; ------------ Areas de datos para informaci¢n del disco virtual

install_txt    DB    13,10,"Disco virtual BITDISK instalado en ",255
               DB    13,10,"BITDISK 1.1 RAM-Disk installiert auf ",255
               DB    13,10,"BITDISK 1.1 RAM-Disk installed on ",0
inf_drv_conf   DB    "D:",13,10,0
info_txt       DB    13,10,"Unidad BITDISK ",255
               DB    13,10,"Laufwerk BITDISK ",255
               DB    13,10,"Drive BITDISK ",0
inf_unidad     LABEL BYTE
               DB    "D:",0
info_nof_txt   DB    " sin formatear.",13,10,255
               DB    " nicht formatiert.",13,10,255
               DB    " unformatted.",13,10,0

inf_tdisco     DB    13,10,"  - Tama§o del disco:  ",255
               DB    13,10,"  - Laufwerksgrî·e:   ",255
               DB    13,10,"  - Disk size:        ",0

inf_tsector    DB    " Kbytes   ",13,10,"  - Tama§o de sector:  ",255
               DB    " KB       ",13,10,"  - Sektorengrî·e:    ",255
               DB    " Kbytes   ",13,10,"  - Sector size:      ",0

inf_tdir       DB    " bytes",13,10,"  - Entradas raiz:     ",255
               DB    " Bytes",13,10,"  - Verz.-EintrÑge:   ",255
               DB    " bytes",13,10,"  - Root entries:     ",0

inf_tcluster   DB    13,10,"  - Sectores/cluster:  ",255
               DB    13,10,"  - Sektoren/Cluster: ",255
               DB    13,10,"  - Sectors/cluster:  ",0

inf_final      DB    13,10,0

ERROR0         EQU   1
ERROR4         EQU   16
ERROR6         EQU   64
ERROR8         EQU   256
ERROR11        EQU   2048
ERROR12        EQU   4096
ERROR13        EQU   8192
ERROR14        EQU   16384

lista_err      DW    0    ; palabra que indica los mensajes a imprimir
tabla_mensajes DW    m0,m0,m0,m0,m4,m0,m6,m0,m8,m0,m0,m11,m12,m13,m14

cabec_adv_txt  DB    "  - Advertencias y/o errores:",13,10,255
               DB    "  - Warnungen und/oder Fehler:",13,10,255
               DB    "  - Warnings and/or errors:",13,10,0

m0  DB "    + Error de sintaxis o par†metro fuera de rango (no",13,10
    DB "      se define el disco o no se altera el definido)",13,10,255
    DB "    + Syntaxfehler oder Parameter au·erhalb des zulÑssigen",13,10
    DB "      Bereichs (Die RAM-Disk ist nicht verÑndert).",13,10,255
    DB "    + Syntax error or parameter out of range (the",13,10
    DB "      disk is not defined and is not modified).",13,10,0

m4  DB "    + La memoria solicitada no existe: rebajada.",13,10,255
    DB "    + Die angeforderte Speichergrî·e existiert nicht und wurde reduziert.", 13,10,255
    DB "    + Memory requested does not exist: size reduced.",13,10,0

m6  DB "    + No existe memoria XMS.",13,10,255
    DB "    + Kein XMS-Speicher verfÅgbar.",13,10,255
    DB "    + There is not XMS memory available.",13,10,0

m8  DB "    + Fallo del controlador XMS.",13,10,255
    DB "    + Fehler des XMS-Managers.",13,10,255
    DB "    + XMS controller failure.",13,10,0

m11 DB "    + Tama§o sector incorrecto: asignado por defecto",13,10,255
    DB "    + UngÅltige Sektorengrî·e: wird durch Vorgabewert ersetzt.",13,10,255
    DB "    + Incorrect sector size: stablished by default.",13,10,0

m12 DB "    + Nß entradas err¢neo: establecido por defecto.",13,10,255
    DB "    + UngÅltige Anzahl von VerzeichniseintrÑgen: wird durch Vorgabewert ersetzt",13,10,255
    DB "    + Incorrect number of root entries: established by default.",13,10,0

m13 DB "    + Tama§o cluster err¢neo: asignado por defecto.",13,10,255
    DB "    + UngÅltige Clustergrî·e: wird durch Vorgabewert ersetzt..",13,10,255
    DB "    + Cluster size incorrect: stablished by default.",13,10,0

m14 DB "    + FATAL: fallo al liberar la memoria ocupada.",13,10,255
    DB "    + ACHTUNG: Freigabe des belegten Speichers unmîglich.",13,10,255
    DB "    + FATAL: impossible to free the allocated memory.",13,10,0

bitdisk_noins LABEL BYTE
DB    13,10,"BITDISK 1.1 - EL DISCO VIRTUAL XMS DE MENOR CONSUMO DE MEMORIA.",13,10
DB    "  - Instale primero BITDISK desde CONFIG.SYS (con DEVICE).",13,10
DB    "  - Este controlador s¢lo consume ≠256 bytes de memoria!",13,10
DB    "  - Puede solicitar ayuda con BITDISK /?",13,10,255
DB    13,10,"BITDISK 1.1 - Der verstellbare RAM-Disk-Treiber fÅr XMS."
DB    13,10,"  - Installieren Sie erst BITDISK in der CONFIG.SYS (mit DEVICE)."
DB    13,10,"  - Dieser Treiber benîtigt nur 256 Bytes konventionellen "
DB    "oder oberen Speicher!",13,10
DB    "  - Hilfe ist verfÅgbar mit BITDISK /?",13,10,255
DB    13,10,"BITDISK 1.1 - THE WORLD'S SMALLEST XMS RESIZEABLE RAMDISK."
DB    13,10,"  - Install first BITDISK from CONFIG.SYS (with DEVICE)."
DB    13,10,"  - This controller takes only 256 bytes of conventional "
DB    "or upper memory!",13,10
DB    "  - Help is available with BITDISK /?",13,10,0

; switchar patching goes from bitdisk_noins until this area!!!

bitdisk_noes   DB    13,10,"BITDISK 1.1",13,10
DB    "   - La unidad indicada no es un dispositivo BITDISK 1.1",13,10,255
DB    "   - Angegebener Buchstabe kennzeichnet kein Laufwerk von BITDISK 1.1.",13,10,255
DB    "   - Drive letter indicated isn't a BITDISK 1.1 device.",13,10,0

ayuda_txt LABEL BYTE
DB 13,10,10," BITDISK 1.1  -  (C) Grupo Universitario de Inform†tica "
DB "- Valladolid (Espa§a).",13,10,"(C) 1995 Ciriaco Garc°a de Celis "
DB "- Email: ciri@gui.uva.es - FidoNET 2:341/21.8",13,10
DB " Disco virtual en XMS para sistemas AT consumiendo s¢lo 256 bytes de memoria."
DB 13,10,"   * * * Este programa (sin cambios) es de DOMINIO PUBLICO "
DB "y GRATUITO * * *",13,10,10
DB "  DespuÇs de instalar BITDISK en el fichero CONFIG.SYS  (con una "
DB "l°nea similar",13,10,"a DEVICEHIGH=BITDISK.EXE) se le puede "
DB "ejecutar desde el DOS para formatearlo:",13,10,10,"   BITDISK 64 "
DB 9,9," (formatea un disco virtual de 64 Kb en memoria XMS)",13,10
DB "   BITDISK 256",9,9," (lo reformatea ampli†ndolo a 256 Kb)",13,10
DB "   BITDISK 0  ",9,9," (lo anula totalmente, recuperando toda la "
DB "memoria)",13,10,"   BITDISK E: 100",9," (formatea el BITDISK E: con "
DB "100 Kb)",13,10,"   BITDISK    ",9,9," (muestra informaci¢n del disco "
DB "sin alterarlo)",13,10,10,"  Sintaxis:",13,10
DB "      BITDISK [U:] [tama§o [tama§o_sector [fich_raiz [tama§o_"
DB "cluster]]]]",13,10,10,"  El tama§o ha de estar comprendido entre "
DB "4 y 32768 Kb; el tama§o de sector ha",13,10,"de ser 64, 128, 256 ¢"
DB " 512 (DRDOS s¢lo lo soporta 128 ¢ superior); los ficheros",13,10
DB "admitidos en el directorio ra°z pueden oscilar desde 1 "
DB "hasta donde sea posible",13,10,"para el tama§o del disco;  el "
DB "tama§o de cl£ster indica el  nß  de sectores por",13,10
DB "cluster (en MS-DOS debe ser potencia de 2; no hay problemas "
DB "con DR-DOS).  Para",13,10,"indicar un par†metro hay que indicar los anteriores "
DB "(0-evaluaci¢n autom†tica).",13,10,255

DB 13,10,10," BITDISK 1.1  -  (C) Grupo Universitario de Inform†tica "
DB "- Valladolid (Spain).",13,10,"(C) 1995 Ciriaco Garc°a de Celis "
DB "- Email: ciri@gui.uva.es - FidoNET 2:341/21.8",13,10,"XMS-RAM-"
DB "Disk fÅr AT-Systeme, benîtigt 256 Bytes konventionellen/oberen Speicher"
DB 13,10,"* * * Dieses Programm ist PUBLIC DOMAIN und FREEWARE (ohne "
DB "VerÑnderungen) * * *",13,10,10,"  Nach der Installation in "
DB "CONFIG.SYS  (mit einer Zeile wie DEVICE=BITDISK.EXE)",13,10
DB "kînnen Sie es zur Neuformatierung von der Kommandozeile aufrufen."
DB " Beispiele:",13,10,10,"   BITDISK 64 ",9,9,"(legt eine RAM-Disk von "
DB "64 KB im XMS an)",13,10,"   BITDISK 256",9,9,"(erhîht die Grî·e "
DB "auf 256 KB: Inhalte werden gelîscht!)",13,10,"   BITDISK 0  ",9
DB 9,"(gibt den belegten Speicher wieder frei)",13,10,"   BITDISK E: "
DB "100",9,"(legt BITDISK E: mit 100 KB an)",13,10,"   BITDISK    ",9,9
DB "(Anzeige der Informationen ohne énderung)",13,10,10,"  VollstÑndige"
DB " Syntax:",13,10,10,"   BITDISK [U:] [Grî·e [Sektorengrî·e [Verzeichnis"
DB "eintrÑge [Clustergrî·e]]]]",13,10,10,"  Die Grî·e mu· in 4-32768 KB "
DB "liegen;  Sektorengrî·e  mu· 64, 128, 256 oder 512",13,10,"Bytes sein "
DB " (DRDOS unterstÅtzt nicht 64).  VerzeichniseintrÑge kînnen von 1 bis"
DB 13,10,"Disk-Obergrenze sein;  die Clustergrî·e (Anzahl Sektoren pro "
DB "Cluster),  mu· bei",13,10,"MS-DOS eine Zweierpotenz sein (keine "
DB "Probleme bei DRDOS). Falls ein Parameter 0",13,10,"ist, verwendet "
DB "BITDISK Vorgabewerte (au·er bei der Disk-Grî·e).",13,10,255

DB 13,10,10," BITDISK 1.1  -  (C) Grupo Universitario de Inform†tica "
DB "- Valladolid (Spain).",13,10,"(C) 1995  Ciriaco Garc°a de Celis "
DB "- Email: ciri@gui.uva.es - FidoNET 2:341/21.8",13,10,"  XMS RAM "
DB "Disk for AT systems taking 256 bytes of conventional/upper memory."
DB 13,10,"* * * This program (without modifications) is PUBLIC DOMAIN "
DB "and FREEWARE * * *",13,10,10,"  After install BITDISK in "
DB "CONFIG.SYS  (with a line like to DEVICE=BITDISK.EXE)",13,10
DB "you can execute it from DOS command line in order to format disk."
DB " Examples:",13,10,10,"   BITDISK 64 ",9,9,"(Formats a 64 Kb RAM "
DB "disk in XMS memory)",13,10,"   BITDISK 256",9,9,"(Reformats it "
DB "up to 256 Kb: all data will be lost!)",13,10,"   BITDISK 0  ",9,9
DB "(Unformat it freezing all memory ocupied)",13,10,"   BITDISK E: "
DB "100",9,"(Formats BITDISK E: with 100 Kb)",13,10,"   BITDISK    ",9
DB 9,"(Show disk information without modify it)",13,10,10,"  Complete"
DB " syntax:",13,10,10,"        BITDISK [U:] [size [sector_size "
DB "[files_root [cluster_size]]]]",13,10,10,"  Size must be in the "
DB "range 4-32768 Kb; sector size must be 64, 128, 256 or 512",13,10
DB "bytes (DRDOS does not support 64 bytes-sector).  Files on root "
DB "directory can be",13,10,"from 1 up to disk size limit;  the "
DB "cluster size  (number of sectors by cluster)",13,10,"must be "
DB "power of 2 in MS-DOS (there is no problem with DRDOS). If any "
DB "parameter",13,10,"except disk size is set to 0, BITDISK will "
DB "assume default values.",13,10,0

area_trabajo   EQU   $
               DB    4096 DUP (?)

_BITDISK       ENDS

_PILA          SEGMENT STACK 'STACK'
               DB    768 DUP (?)     ; 0,75 Kb de pila son suficientes
_PILA          ENDS

               END   main
