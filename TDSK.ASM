
;⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
;≥                                                                   ≥
;≥ ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±‹ ≥
;≥  ﬂﬂ±±€ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ ≥
;≥    ±±€  ±±‹ ±±‹  ±±±±‹   ±±±±‹     ±±‹   ±±±±‹   ±±±±±±‹ ±±‹  ±±‹ ≥
;≥    ±±€  ±±€ ±±€  ±±€ﬂ±±‹ ±±€ﬂ±±‹ ±±‹ﬂ±±‹ ±±€ﬂ±±‹ ±±€ﬂﬂﬂﬂ ±±€ ±±€ﬂ ≥
;≥    ±±€  ±±€ ±±€  ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±€     ±±€±±€ﬂ  ≥
;≥    ±±€  ±±€ ±±€  ±±±±‹ﬂﬂ ±±±±‹ﬂﬂ ±±€ ±±€ ±±€ ±±€ ±±±±±±‹ ±±±±€ﬂ   ≥
;≥    ±±€  ±±€ ±±€  ±±€ﬂ±±‹ ±±€ﬂ±±‹ ±±€ ±±€ ±±€ ±±€  ﬂﬂﬂ±±€ ±±€±±‹   ≥
;≥    ±±€  ±±€ ±±€  ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±€ ±±‹ ±±€ ±±€ ±±‹  ≥
;≥    ±±€  ±±±±±±±‹ ±±€ ±±€ ±±±±‹ﬂﬂ  ﬂ±±‹ﬂﬂ ±±±±±€ﬂ ±±±±±±€ ±±€  ±±‹ ≥
;≥     ﬂﬂ   ﬂﬂﬂﬂﬂﬂﬂ  ﬂﬂ  ﬂﬂ  ﬂﬂﬂﬂ      ﬂﬂ    ﬂﬂﬂﬂﬂ   ﬂﬂﬂﬂﬂﬂ  ﬂﬂ   ﬂﬂ ≥
;≥                                                                   ≥
;≥           ∞∞±±≤≤€€≤≤±±∞∞   Versi¢n 2.3a  ∞∞±±≤≤€€≤≤±±∞∞           ≥
;≥                                                                   ≥
;≥                                                                   ≥
;≥     CONTROLADOR DE DISCO VIRTUAL PARA SISTEMAS DOS Y WINDOWS 3    ≥
;≥                                                                   ≥
;≥              * * * Programa de Dominio P£blico * * *              ≥
;≥                                                                   ≥
;≥              (C) 1992-1995  Ciriaco Garc°a de Celis.              ≥
;≥     Grupo Universitario de Inform†tica. Facultad de Ciencias.     ≥
;≥                Apartado 6062 - Valladolid (Espa§a)                ≥
;≥                                                                   ≥
;≥                        Internet Email:  ciri@gui.uva.es           ≥
;≥                        FidoNet:         2:341/21.8                ≥
;≥                                                                   ≥
;≥      Mensajes en alem†n cortes°a de Axel Christoph Frinke         ≥
;≥                        Internet Email:  acfrinke@uni-bonn.de      ≥
;≥                                                                   ≥
;¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ

   ;   Aviso:   Este programa contiene instrucciones exclusivas de los
   ;          procesadores 386 y superiores.  Debe ser ensamblado como
   ;          fichero  EXE,  de la siguiente manera,  para asegurar la
   ;          compatibilidad con los procesadores 8086 y 286:
   ;
   ;          - Con TASM 2.0:
   ;                            TASM tdsk /m3
   ;                            TLINK tdsk
   ;
   ;          - Con MASM 6.0  (versiones anteriores de MASM generar°an
   ;            un disco virtual que requerir°a  un  386  o  superior,
   ;            adem†s habr°a que mover las directivas  que  controlan
   ;            el tipo de procesador y colocarlas con ÆpeligroØ):
   ;
   ;                            ML /Zm tdsk.asm
   ;
   ;                o alternativamente:
   ;
   ;                            ML /c /Zm tdsk.asm
   ;                            TLINK tdsk
   ;
   ;               La ventaja de TLINK frente a LINK es que el fichero
   ;            ejecutable ocupa  2 Kbytes  menos en disco (a la tabla
   ;            ubicada al final del programa  se  le  asigna  memoria
   ;            en la cabecera del fichero EXE y no ocupando disco).
   ;
   ;                  For JWasm use jwasm -mz -Zm tdsk.asm
   ;
   ;   IMPORTANTE:  Cualquier cambio realizado en el programa debe ser
   ;                documentado,  indicando claramente en el listado y
   ;                en el fichero DOC quiÇn lo ha realizado.


; ------------ Macros de prop¢sito general

XPUSH          MACRO regmem            ; apilar lista de registros
                 IRP rm, <regmem>
                   PUSH rm
                 ENDM
               ENDM

XPOP           MACRO regmem            ; desapilar lista de registros
                 IRP rm, <regmem>
                   POP rm
                 ENDM
               ENDM

; ------------ Estructuras de datos

cab_PETICION   STRUC                   ; parte inicial com£n a todos
tamano         DB    ?                 ; los comandos de la cabecera
unidad         DB    ?                 ; de petici¢n
orden          DB    ?
estado         DW    ?
dos_info       DB    8 DUP (?)
cab_PETICION   ENDS

cab_INIT_BBPB  STRUC                   ; para comandos INIT/BUILD_BPB
               DB    (TYPE cab_PETICION) DUP (?)
num_discos     DB    ?                 ; n£mero de unidades definidas
fin_resid_desp DW    ?                 ; †rea que quedar† residente
fin_resid_segm DW    ?
bpb_cmd_desp   DW    ?                 ; l°nea de ¢rdenes del CONFIG
bpb_cmd_segm   DW    ?                 ; y puntero al BPB
nuevo_disco    DB    ?                 ; (DOS 3+) (0-A:, 1-B:,...)
cab_INIT_BBPB  ENDS

cab_MEDIACHECK STRUC                   ; estructura para MEDIA CHECK
               DB    (TYPE cab_PETICION) DUP (?)
media_descrip  DB    ?                 ; descriptor de medio
cambio         DB    ?                 ; 1: no cambiado, 0FFh:s°, 0:?
cab_MEDIACHECK ENDS

cab_READ_WRITE STRUC
               DB    (TYPE cab_PETICION) DUP (?)
               DB    ?                 ; descriptor de medio
transfer_desp  DW    ?                 ; direcci¢n de transferencia
transfer_segm  DW    ?
transfer_sect  DW    ?                 ; nß de sectores a transferir
transfer_sini  DW    ?                 ; primer sector a transferir
cab_READ_WRITE ENDS


; ************ Disco virtual: inicio del †rea residente.

_PRINCIPAL     SEGMENT
               ASSUME CS:_PRINCIPAL, DS:_PRINCIPAL

               DD    -1           ; encadenamiento con otros drivers
tipo_drive     DW    0800h        ; palabra de atributo:
                                  ; bit 15 a 0: dispositivo de bloques
                                  ; bit 14 a 0: sin control IOCTL
                                  ; bit 13 a 0: formato IBM
                                  ; bit 11 a 1: soportados Open/Close
                                  ;             y Remove (DOS 3.0+)
               DW    estrategia   ; rutina de estrategia
               DW    interrupcion ; rutina de interrupci¢n
               DB    1            ; n£mero de unidades

; ------------ Variables y tablas de datos globales fijas. Estas
;              variables no ser†n movidas de sitio en otras versiones
;              de TURBODSK, con objeto de facilitar un control externo
;              del disco virtual por parte de otros programas. Todo lo
;              que est† dentro del Æ†rea a actualizarØ ser† copiado
;              sobre el TURBODSK residente al redefinir el disco, para
;              inicializar todas las variables precisas.

cs_tdsk        DW    ? ; Segmento de TDSK. Con QEMM-386, los drivers
                       ; pueden ser relocalizados en memoria superior
                       ; de tal manera que parte de la cabecera queda
                       ; en memoria convencional, con el dispositivo
                       ; completo en la memoria superior, en la que es
                       ; ejecutado. Tras la instalaci¢n, QEMM copia en
                       ; memoria convencional los primeros 18 bytes de
                       ; la cabecera, entre los que est† esta palabra,
                       ; actualiz†ndola. Pese a que la cadena de
                       ; dispositivos del sistema pasa por la memoria
                       ; convencional en este caso, esta variable nos
                       ; permite conocer la direcci¢n REAL en memoria
                       ; superior (o en cualquier otra) de TURBODSK,
                       ; que as° es compatible con el LOADHI de QEMM.

id_tdsk        DB    "TDS23" ; esto es TURBODSK 2.3 y no otro
                             ; controlador de dispositivo

num_ordenes    DB    10h     ; nß de ¢rdenes soportadas

i_tdsk_ctrl    EQU   $       ; inicio del †rea a actualizar

tipo_soporte   DB    0FFh    ; 0: disco no formateado
                             ; 1: se emplea memoria XMS 2.0+
                             ; 2:  "    "     "     EMS 3.2+
                             ; 3:  "    "     " convencional
                             ; 0FFh: a£n no ejecutada INIT

cambiado       DB    ?       ; al formatear el disco virtual se pone
                             ; a 0FFh (para indicar cambio de disco)

mem_handle     DW    ?       ; para memoria EMS/XMS; si se utiliza
                             ; memoria convencional, apunta al
                             ; segmento donde empieza el disco

tdsk_psp       DW    ?       ; segmento del PSP residente si se
                             ; utiliza memoria convencional

ems_pagina0    DW    ?       ; segmento de p†gina EMS (si se emplea)
ems_paginai    DW    ?       ; segmento alternativo
ems_pagni      DB    ?       ; nß de p†gina f°sica alternativa

xms_driver     LABEL DWORD   ; direcci¢n del controlador XMS, en el
xms_desp       DW    ?       ; caso de emplear memoria XMS.
xms_segm       DW    ?

cpu386         DB    OFF     ; a ON si 386 ¢ superior

f_tdsk_ctrl    EQU   $       ; final del †rea a actualizar

letra_unidad   DB    ?       ; letra ASCII del disco ('C', 'D',...)

bpb_ptr        DW    bpb     ; puntero al BPB del disco

rutina_larga   DB    OFF     ; a ON si reservado espacio en
                             ; memoria para la larga rutina de
                             ; gesti¢n de memoria EMS.

; ------------ Variables internas de TURBODSK; su ubicaci¢n podr°a
;              cambiar en futuras versiones del programa.

pcab_peticion  LABEL DWORD        ; puntero a la cabecera de petici¢n
pcab_pet_desp  DW    0
pcab_pet_segm  DW    0

p_rutinas      LABEL WORD         ; tabla de rutinas del controlador
               DW    init
               DW    media_check
               DW    build_bpb
               DW    ioctl_input
               DW    read
               DW    read_nowait
               DW    input_status
               DW    input_flush
               DW    write
               DW    write_verify
               DW    output_status
               DW    output_flush
               DW    ioctl_output
               DW    open              ; DOS 3.0+
               DW    close             ; DOS 3.0+
               DW    remove            ; DOS 3.0+

media          EQU   0FAh    ; byte descriptor de medio utilizado por
                             ; TURBODSK. No es 0F8h como en los discos
                             ; virtuales del sistema ya que TURBODSK
                             ; no es un dispositivo fijo. Este byte no
                             ; es empleado por los discos est†ndar del
                             ; dos y al ser mayor de 0F7h no provoca
                             ; mensajes extra§os con antiguos CHKDSKs.

bpb            LABEL BYTE    ; Estos valores del BPB son arbitrarios:
bytes_sector   DW    512     ; se inicializar†n si se define el disco
sect_cluster   DB    1       ; al instalar desde el CONFIG; en caso
sect_reserv    DW    1       ; contrario, como son correctos, el DOS
num_fats       DB    1       ; no tendr† problemas para realizar sus
entradas_raiz  DW    128     ; c†lculos internos iniciales al instalar
num_sect       DW    128     ; el driver. En concreto, el tama§o de
media_byte     DB    media   ; sector influye de manera directa en el
sectores_fat   DW    4       ; tama§o de los buffers de disco del DOS.
fin_bpb        EQU   $

; ------------ Rutina de estrategia del disco virtual.

estrategia     PROC  FAR
               MOV   CS:pcab_pet_desp,BX
               MOV   CS:pcab_pet_segm,ES
               RET
estrategia     ENDP

; ------------ Rutina de interrupci¢n del disco virtual. TURBODSK,
;              al igual que RAMDRIVE o VDISK, no define una pila
;              interna. Es responsabilidad del DOS que Çsta tenga el
;              tama§o adecuado (con el disco en memoria XMS, el
;              controlador XMS puede requerir hasta 256 bytes de
;              pila). TURBODSK no consume m†s de 64 bytes de pila en
;              ning£n momento, y s¢lo alrededor de 48 antes de llamar
;              al controlador XMS cuando se emplea esta memoria.

interrupcion   PROC  FAR
               XPUSH <AX,BX,CX,DX,SI,DI,BP,DS,ES>
               LDS   BX,CS:pcab_peticion
               MOV   AL,[BX].orden     ; AL = orden
               MOV   AH,0              ; AX = orden
               CMP   AL,CS:num_ordenes
               JB    orden_ok          ; orden soportada
               MOV   AL,3              ;   " desconocida (IOCTL INPUT)
orden_ok:      CMP   CS:tipo_soporte,AH
               JNE   no_test_fmt       ; tipo_soporte distinto de 0
               MOV   AX,8102h          ; disco no formateado: error
               JMP   exit_interr
no_test_fmt:   SHL   AX,1              ; orden = orden * 2
               MOV   SI,AX
               XPUSH <BX,DS>
               XOR   BP,BP
               MOV   AX,100h
               CALL  CS:[SI+OFFSET p_rutinas]  ; ejecutar orden
               XPOP  <DS,BX>
               AND   AH,AH
               JNS   exit_interr          ; no hubo error (bit 15 = 0)
               CMP   AL,3
               JE    exit_interr          ; error de orden desconocida
               MOV   [BX].transfer_sect,0 ; otro: movidos 0 sectores
exit_interr:   MOV   [BX].estado,AX
               XPOP  <ES,DS,BP,DI,SI,DX,CX,BX,AX>
               RET
interrupcion   ENDP

; ------------ Las rutinas que controlan el dispositivo devuelven AX
;              con la palabra de estado. Pueden cambiar todos los
;              registros (de 16 bits), inclu°dos los de segmento. A la
;              entrada, BP=0 y AX=100h.

media_check:   MOV   AL,CS:cambiado    ; condici¢n de Ædisco cambiadoØ
               MOV   CS:cambiado,AH    ; de momento ya no cambiar† m†s
               MOV   [BX].cambio,AL

read_nowait:                           ; conjunto de ¢rdenes con
input_status:                          ; tratamiento idÇntico
input_flush:
output_status:
output_flush:
ioctl_output:
open:
close:
retorno_ok:    RET                     ; no hay error, ignorar orden

build_bpb:     MOV   [BX].bpb_cmd_desp,OFFSET bpb
               MOV   [BX].bpb_cmd_segm,CS
               JMP   retorno_ok

ioctl_input:   MOV   AX,8103h          ; orden no soportada
               RET

remove:        MOV   AH,3              ; fin de funci¢n, indicar
               RET                     ; Æcontrolador ocupadoØ

nueva_int19    PROC                    ; Interceptar reinicializaci¢n
               .286
               PUSHA
               XPUSH <DS,ES>           ; Esto es una interrupci¢n
               XOR   AX,AX
               MOV   ES,AX
               CMP   AL,CS:tipo_soporte ; ®Disco formateado?
               JE    no_lib             ; no
               MOV   CS:tipo_soporte,AL ; s°: anularlo
               CALL  procesa_io        ; CF=1: liberar memoria EMS/XMS
no_lib:        LEA   SI,ant19off
               MOV   DI,64h            ; desplazamiento de INT 19h
               PUSH  CS
               POP   DS
               CLI
               MOVSW
               MOVSW
               XPOP  <ES,DS>
               POPA
               DB    0EAh              ; c¢digo de JMP FAR SEG:OFF
ant19off       DW    ?
ant19seg       DW    ?
               .8086
nueva_int19    ENDP

read:          INC   BP                ; indicar lectura (BP=1)
write:                                 ; escritura (BP=0)
write_verify:

init_io        PROC                        ; preparar registros E/S
               LES   DI,DWORD PTR [BX].transfer_desp  ; * direc. ES:DI
               LDS   AX,DWORD PTR [BX].transfer_sect  ; nß sectores AX
               MOV   BX,DS                 ; 1ß sector ≠DS indefinido!
io_proc:       MOV   SI,CS:bytes_sector
               ADD   AX,BX
               JNC   io_ok?                ; £ltimo sector < 65536
io_no_ok:      MOV   AX,8108h              ; Æsector no encontradoØ
               RET
io_ok?:        CMP   AX,CS:num_sect
               JA    io_no_ok              ; sector final ≠fuera!
               SUB   AX,BX
               MUL   SI                    ; DX(CF):AX = tama§o bloque
               RCR   AX,1                  ; CF:AX/2 -> AX = palabras
               MOV   CX,DI
               NEG   CX                    ; 10000h-CX: CF=1 si CX<>0
               CMC                         ; CF:CX bytes hasta fin de
               RCR   CX,1                  ; segmento = (10000h-DI)/2
               CMP   AX,CX
               JAE   io_cx_ok
               MOV   CX,AX                 ; * tama§o: CX palabras
io_cx_ok:      JCXZ  io_no_ok              ; CX=0 si DI=0FFFFh (fatal)
               MOV   AX,BX                 ; sector inicial
               MUL   SI                    ; * desplazamiento en DX:AX
               CLC                         ; ≠no reinicializando!
init_io        ENDP

; ------------ Area residente dependiente del tipo de memoria empleada
;              por el disco. La rutina instalada por defecto es la m†s
;              larga de todas, para Ædejar huecoØ donde copiar encima
;              las otras si se va a utilizar otro tipo de memoria. Si
;              se modifican las rutinas, convendr°a medirlas por si
;              acaso la de memoria EMS deja de ser la m†s larga...

procesa_io     EQU   $

               ; ---- La rutina de gesti¢n de memoria EMS transfiere
               ;      bloques de hasta 16Kb de una vez. Intenta mapear
               ;      en la p†gina f°sica 0: si no puede, debido a un
               ;      solapamiento con el buffer de transferencia del
               ;      programa principal (si est† tambiÇn en memoria
               ;      EMS), utiliza otra p†gina alternativa que dista
               ;      al menos 32 Kb absolutos de la 0. Para dilucidar
               ;      si hay solapamiento, se compara la distancia
               ;      entre direcciones origen y destino antes de la
               ;      transferencia: si es mayor de 401h p†rrafos
               ;      (16400 bytes, 16 para redondeo) no hay problema.
               ;      Ante un solapamiento se procede a restaurar el
               ;      contexto de las p†ginas mapeadas, antes y
               ;      despuÇs de la transferencia, para poder acceder
               ;      a la memoria expandida donde est† el buffer del
               ;      programa principal.

procesa_ems    PROC
               JNC   no_emslib
               MOV   DH,45h            ; sistema reinicializando:
               CALL  llama_EMM         ; liberar memoria EMS
               RET
no_emslib:     MOV   SI,DX             ; preservar DX
               MOV   DH,47h
               CALL  llama_EMM         ; DH=47h -> salvar contexto EMS
               MOV   DX,SI             ; recuperar DX
               MOV   BX,4000h          ; tama§o de p†gina (16 Kb)
               DIV   BX                ; AX = 1¶ p†gina EMS a mapear
               MOV   SI,DX             ; offset relativo en 1¶ p†gina
procesa_pag:   PUSH  CX                ; **
               MOV   BX,DI
               MOV   CL,4
               SHR   BX,CL             ; bytes del offset -> p†rrafos
               MOV   CX,ES
               ADD   BX,CX             ; AX = segmento de datos
               MOV   CX,CS:ems_pagina0
               MOV   DS,CX
               XOR   DL,DL             ; intentar emplear p†gina 0
               SUB   BX,CX
               JNC   rpos
               NEG   BX                ; valor absoluto
rpos:          CMP   BX,401h           ; distancia respecto p†gina EMS
               JAE   no_conflicto      ; m†s de 16 Kb: no solapamiento
               CALL  copia_contexto    ; est† CX apilado
               MOV   DS,CS:ems_paginai
               MOV   DL,CS:ems_pagni   ; usar p†gina alternativa
               OR    BP,8000h          ; indicar su uso
no_conflicto:  POP   CX                ; * pila totalmente equilibrada
               MOV   BX,AX
               MOV   DH,44h            ; DL = 0 ¢ 2 (p†gina f°sica)
               CALL  llama_EMM         ; DH = 44h -> mapear p†gina EMS
               XPUSH <CX,SI>           ; ++
               SUB   SI,4000h
               NEG   SI                ; SI = 4000h - SI: ÆrestoØ
               SHR   SI,1              ; bytes -> palabras
               CMP   CX,SI
               JB    cx_ok             ; no ocupada toda la p†gina
               MOV   CX,SI
cx_ok:         POP   SI                ; + SI=desplazamiento relativo
               CLD
               POP   BX                ; + palabras restantes
               SUB   BX,CX             ; descontar las que se mover†n
               PUSH  BX                ; * volver a apilar el viejo CX
               CALL  coloca_regs
               CMP   CS:cpu386,ON      ; ®386 o superior?
               JNE   trans_16bit
               .386
               PUSHAD
               SHR   CX,1              ; nß palabras de 32 bit a mover
               JCXZ  transferido       ; evitar desgracia
               XOR   EAX,EAX           ; asegurar no violaci¢n
               DEC   AX                ; de segmento-64K
               AND   ECX,EAX           ; EAX = 0FFFFh
               AND   ESI,EAX
               AND   EDI,EAX
               REP   MOVSD             ; transferencia ultrarr†pida
transferido:   POPAD                   ; POPAD falla en muchos 386
               .8086
               NOP                     ; arreglar fallo de POPAD
               ADD   CX,CX
               ADD   DI,CX             ; simular cambio normal de DI
               ADD   SI,CX             ; y de SI
               JMP   fin_trans
trans_16bit:   REP   MOVSW             ; mover palabras de 16 bit
fin_trans:     CALL  coloca_regs
               AND   BP,BP             ; ®se us¢ p†gina alternativa?
               JNS   ahorra_ms
               CALL  copia_contexto    ; est† CX apilado
               AND   BP,1              ; de momento, no se usar† m†s
ahorra_ms:     POP   CX                ; **
               JCXZ  fin_leer          ; no quedan m†s palabras
               INC   AX                ; pr¢xima p†gina EMS
               XOR   SI,SI             ; ahora desde inicio p†gina EMS
               JMP   procesa_pag
fin_leer:      MOV   DH,48h
               CALL  llama_EMM         ; DH=47h restaurar contexto EMS
               MOV   AX,100h           ; no hubo problemas
               RET
procesa_ems    ENDP

               ; ---- ≠Cuidado!: esta rutina debe ser invocada siempre
               ;      con la pila (SP) tal y como estaba al principio
               ;      del procedimiento Æprocesa_emsØ, y utilizando
               ;      siempre CALL, para que en el caso de que haya
               ;      errores retorne correctamente al nivel anterior
               ;      (nivel previo a Æprocesa_emsØ). Se corrompe DX
               ;      y, si hay error, AX tambiÇn (devuelve 810Ch).

llama_EMM      PROC
               XPUSH <AX,BX,CX,BP>
               MOV   AX,DX             ; funci¢n en AX
llama_denuevo: MOV   DX,CS:mem_handle  ; handle EMS
               XPUSH <AX,BX>
               INT   67h               ; llamar al EMM
               MOV   CL,AH
               XPOP  <BX,AX>
               AND   CL,CL
               JZ    llama_ok          ; adem†s, ZF = 1
               CMP   CL,82h
               JE    llama_denuevo     ; intentarlo hasta que funcione
llama_ok:      XPOP  <BP,CX,BX,AX>
               JNE   ret_atras
               RET
ret_atras:     POP   AX                ; sacar direcci¢n de retorno
               MOV   AX,810Ch          ; error de Æanomal°a generalØ
               RET                     ; retornar dos niveles atr†s
llama_EMM      ENDP

               ; ---- ≠Cuidado!: esta rutina debe ser invocada siempre
               ;      con CX (y s¢lo CX) apilado: recarga CX desde la
               ;      pila y corrompe BX dejando a£n en la pila CX.

copia_contexto PROC
               XPOP  <BX,CX>           ; equilibrar pila a llama_EMM
               MOV   DH,48h
               CALL  llama_EMM         ; restaurar contexto EMS
               MOV   DH,47h
               CALL  llama_EMM         ; preservarlo de nuevo
               PUSH  CX
               JMP   BX                ; m†s r†pido que PUSH BX/RET
copia_contexto ENDP

coloca_regs    PROC                    ; ®invertir sentido?
               TEST  BP,1
               JNZ   colocados
               XCHG  SI,DI             ; escritura: invertir sentido
               XPUSH <DS,ES>
               XPOP  <DS,ES>
colocados:     RET
coloca_regs    ENDP

tam_proc_ems   EQU   $-OFFSET procesa_ems   ; tama§o de esta rutina

               ; <<< Fin del c¢digo residente del disco virtual >>>


; ************ Instalaci¢n (invocada desde CONFIG.SYS).

init           PROC
               MOV   CS:modo,CONFIG         ; ejecutando desde CONFIG
               CALL  obtDosVer              ; obtener versi¢n del DOS
               LEA   AX,retorno_ok
               MOV   CS:p_rutinas,AX        ; anular rutina INIT
               INC   CS:tipo_soporte        ; 0: disco no formateado
               MOV   CS:cs_tdsk,CS          ; inicializar esa variable
               CMP   CS:dosver,300h         ; ®DOS inferior al 3.0?
               JAE   dos_ok                 ; DOS 3.0+
               AND   CS:tipo_drive,0F7FFh   ; ajustar atributos
               MOV   CS:num_ordenes,0Dh     ; y n£mero de ¢rdenes
dos_ok:        MOV   SI,[BX].bpb_cmd_desp
               MOV   ES,[BX].bpb_cmd_segm   ; ES:SI -> par†metros
               MOV   [BX].num_discos,1      ; una unidad de disco
               LEA   AX,bpb_ptr
               MOV   [BX].bpb_cmd_desp,AX
               MOV   [BX].bpb_cmd_segm,CS   ; inicializado puntero BPB
               CALL  desvia_int19           ; controlar INT 19h
               CALL  inic_letra             ; obtener letra de unidad
               MOV   BX,CS
               MOV   DS,BX                  ; DS: -> _PRINCIPAL
               MOV   BX,SI                  ; ES:BX -> par†metros
               CALL  salta_nombre           ; buscar inicio par†metros
               CALL  procesar_param         ; procesar par†metros
               PUSH  DS                     ;
               POP   ES                     ; ES: -> _PRINCIPAL
               CMP   param_b,ON
               JNE   pet_ayuda?
               MOV   AH,8                   ; opci¢n /B
               MOV   DL,80h
               PUSH  ES
               INT   13h                    ; ®nß de discos duros?
               POP   ES
               AND   DL,3
               JZ    pet_ayuda?             ; no existe disco duro
               LEA   AX,procesa_io
               NEG   AX
               JMP   bytes_res_ok           ; no quedar† residente
pet_ayuda?:    CMP   param_h,ON
               JE    fin_instalar           ; piden ayuda
               CALL  max_sector             ; obtener mayor sector
               MOV   BX,param_tsect
               CMP   BX,AX                  ; ®el nuestro es mayor?
               JBE   sect_def_ok            ; no
               MOV   bytes_sector,BX        ; s°: ajustar BPB
sect_def_ok:   CALL  errores_config
               TEST  lista_err,ERROR0+ERROR1
               JNZ   fin_instalar           ; alg£n error importante
               CMP   param_tdisco,0         ; ®se define disco ahora?
               JE    fin_instalar           ; no: no hay m†s que hacer
               CALL  mem_info               ; evaluar memoria del PC
               CMP   tdisco,0               ; ®se reservar† memoria?
               JE    fin_instalar           ; no: no hay m†s que hacer
               CALL  mem_reserva            ; reservar memoria
               JC    fin_instalar           ; fallo al reservarla
               CALL  test_CPU               ; detectar 386 ¢ superior
               CALL  adaptar_param          ; adaptar par†metros disco
               CALL  preparar_BPB           ; BPB del nuevo disco
               CALL  prep_driver            ; preparar el driver
               CALL  formatear_tdsk         ; inic. BOOT, FAT y ROOT
fin_instalar:  CALL  info_disco             ; informar sobre el disco
               CMP   tipo_soporte,2
               JE    res_largo              ; se utiliza memoria EMS
               CMP   param_a,ON
               JE    res_largo              ; se indic¢ /A
               CALL  eval_xms
               CALL  eval_ems
               CMP   ems_kb,0
               JE    res_corto              ; no hay memoria EMS
               CMP   xms_kb,0
               JNE   res_corto              ; la hay, pero tambiÇn XMS
res_largo:     MOV   AX,tam_proc_ems
               MOV   rutina_larga,ON        ; dejar sitio a rutina EMS
               JMP   bytes_res_ok
res_corto:     MOV   AX,tam_proc_xms        ; dejar sitio a XMS/conv.
               MOV   BX,tam_proc_con
               CMP   AX,BX
               JAE   bytes_res_ok
               XCHG  AX,BX
bytes_res_ok:  LDS   BX,CS:pcab_peticion
               ADD   AX,OFFSET procesa_io
               MOV   [BX].fin_resid_desp,AX ; reservar memoria para
               MOV   [BX].fin_resid_segm,CS ; las rutinas a usar
               MOV   AX,100h                ; instalaci¢n siempre Ok.
               RET
init           ENDP

; ------------ Redefinici¢n (invocada desde el AUTOEXEC.BAT o el DOS).

main           PROC  FAR
               MOV   CS:modo,AUTOEXEC       ; ejecutando desde el DOS
               CALL  obtDosVer              ; obtener versi¢n del DOS
               CALL  gestionar_ram          ; gesti¢n de memoria
               MOV   AX,_PRINCIPAL          ; programa de un segmento
               MOV   DS,AX                  ; DS: -> _PRINCIPAL
               MOV   BX,81h                 ; ES:BX l°nea de ¢rdenes
               CALL  procesar_param         ; procesar par†metros
               CMP   param_h,ON
               JE    exit_instalar          ; piden ayuda
               PUSH  DS
               POP   ES                     ; ES: --> _PRINCIPAL
               CALL  errores_Dos
               TEST  err_grave,0FFFFh
               JNZ   exit_instalar          ; alg£n error grave
               MOV   ES,segm_tdsk           ; ES: --> disco residente
               CMP   param_a,ON
               JNE   cabria_ems
               CMP   ES:rutina_larga,ON
               JE    cabria_ems             ; cabe la rutina EMS
               OR    lista_err,ERROR2
cabria_ems:    TEST  lista_err,ERROR0+ERROR2  ; ®error sintaxis ¢ EMS?
               JNZ   exit_instalar          ; s°: no modificar disco
               CMP   param_tdiscof,ON
               JNE   exit_instalar          ; no indicado nuevo tama§o
               CMP   ES:tipo_soporte,0
               JE    cont_instalar          ; no estaba formateado a£n
               CALL  desinstala             ; liberar memoria ocupada
cont_instalar: CALL  mem_info               ; evaluar memoria del PC
               CMP   tdisco,0               ; ®se reservar† memoria?
               JE    exit_instalar          ; no: no hay m†s que hacer
               CALL  mem_reserva            ; reservar memoria
               JC    exit_instalar          ; fallo reservando memoria
               CALL  test_CPU               ; detectar 386 ¢ superior
               CALL  adaptar_param          ; adaptar par†metros disco
               CALL  preparar_BPB           ; BPB del nuevo disco
               CALL  relocalizar            ; autoreubicaci¢n de TDSK
               CALL  prep_driver            ; preparar el driver
               CALL  formatear_tdsk         ; BOOT, FAT y ROOT
exit_instalar: CALL  info_disco             ; informar sobre el disco
               CMP   tipo_soporte,3         ; ®memoria convencional?
               JNE   fin_no_res             ; no usada
               CALL  renombrar_mcb          ; cambiar nombre del MCB
               MOV   DX,6                   ; usada: 96 bytes de PSP
               MOV   AX,3100h
               INT   21h                    ; terminar residente
fin_no_res:    CALL  set_errorlevel         ; preparar ERRORLEVEL
               MOV   AH,4Ch
               INT   21h                    ; final normal
main           ENDP

; ------------ Inicializar la variable con la versi¢n del DOS

obtDosVer      PROC
               XPUSH <AX,BX,CX,DX>
               MOV   AH,30h
               INT   21h
               XCHG  AH,AL
               MOV   CS:dosver,AX
               XPOP  <DX,CX,BX,AX>
               RET
obtDosVer      ENDP

; ------------ Determinar segmento del PSP, £ltimo segmento de memoria
;              y liberar espacio de entorno. Se modifica tambiÇn el
;              bloque de memoria de TDSK reduciÇndolo a 96 bytes: esto
;              provoca la creaci¢n de un bloque de control de memoria
;              en el offset 96 del PSP, lo cual no es peligroso. El
;              objetivo de esta maniobra es poder asignar memoria al
;              disco despuÇs (s¢lo si hace falta memoria convencional)
;              usando los servicios est†ndar del DOS.

gestionar_ram  PROC
               MOV   CS:segm_psp,DS         ; indicar segmento del PSP
               MOV   AX,DS:[2]              ; segmento m†s alto
               MOV   CS:top_ram,AX          ; indicar tope de memoria
               PUSH  ES
               MOV   ES,DS:[2Ch]            ; segmento del entorno
               MOV   AH,49h
               INT   21h                    ; liberar †rea de entorno
               POP   ES                     ; ES: -> PSP
               MOV   BX,6
               MOV   AH,4Ah                 ; hacer creer al DOS que
               INT   21h                    ; TDSK ocupa s¢lo 96 bytes
               RET
gestionar_ram  ENDP

; ------------ Leer los par†metros de la l°nea de comandos (ES:BX).
;              Se inicializan las correspondientes variables. En caso
;              de error, se dejan a cero las variables y se acumula en
;              Ælista_errØ un ERROR0 (error de sintaxis).

procesar_param PROC
               CALL  busca_param       ; saltar delimitadores
               JC    fin_param         ; no hay m†s par†metros
               CALL  param_barra       ; gestionar par†metro tipo "/A"
               JC    procesar_param    ; era par†metro tipo "/A"
               MOV   param_tdisco,AX   ; es numÇrico: tama§o del disco
               MOV   param_tdiscof,ON  ; par†metro de tama§o indicado
p_param2:      CALL  busca_param
               JC    fin_param
               CALL  param_barra
               JC    p_param2
               MOV   param_tsect,AX    ; tama§o de sector
p_param3:      CALL  busca_param
               JC    fin_param
               CALL  param_barra
               JC    p_param3
               MOV   param_tdir,AX     ; entradas al directorio
p_param4:      CALL  busca_param
               JC    fin_param
               CALL  param_barra
               JC    p_param4
               MOV   param_tcluster,AX ; tama§o de cluster
p_param5:      CALL  busca_param
               JC    fin_param
               CALL  param_barra       ; £ltimas opciones posibles
               JC    p_param5
fin_param:     CALL  validacion        ; validaci¢n de par†metros
               RET
procesar_param ENDP

param_barra    PROC
               CMP   AX,"e/"           ; ®indicado /E?
               JNE   p_exp1?
               MOV   param_e,ON
               JMP   p_barra_exit
p_exp1?:       CMP   AX,"a/"           ; ®indicado /A?
               JNE   p_exp2?
p_exp:         MOV   param_a,ON
               JMP   p_barra_exit
p_exp2?:       CMP   AX,"x/"           ; /A y /X son equivalentes
               JE    p_exp
               CMP   AX,"c/"           ; ®indicado /C?
               JNE   p_ayuda?
               MOV   param_c,ON
               JMP   p_barra_exit
p_ayuda?:      CMP   AX,"h/"           ; ®indicado /H?
               JNE   p_exit?
p_ayuda:       MOV   param_h,ON
               JMP   p_barra_exit
p_exit?:       CMP   AX,"?/"           ; /H y /? son equivalentes
               JE    p_ayuda
               CMP   AX,"m/"           ; ®indicado /M?
               JNE   param_id?
               MOV   param_m,ON
               JMP   p_barra_exit
param_id?:     CMP   AX,"i/"           ; ®indicado /I= o /I:?
               JNE   param_fats?
               ADD   BX,3
               CMP   BYTE PTR ES:[BX-1],'='
               JE    p_id_ok
               CMP   BYTE PTR ES:[BX-1],':'
               JNE   param_b_mal
p_id_ok:       CALL  obt_num           ; leer c¢digo telef¢nico
               MOV   param_i,ON
               MOV   codigo_tfno,AX
               SUB   BX,2
               JMP   p_barra_exit
param_fats?:   CMP   AX,"f/"           ; ®indicado /F= o /F:?
               JNE   param_b?
               ADD   BX,3
               CMP   BYTE PTR ES:[BX-1],'='
               JE    p_f_ok
               CMP   BYTE PTR ES:[BX-1],':'
               JNE   param_b_mal
p_f_ok:        CALL  obt_num           ; leer n£mero de FATs
               MOV   param_f,AX
               SUB   BX,2
               JMP   p_barra_exit
param_b?:      CMP   AX,"b/"           ; ®indicado /B?
               JNE   param_unidad?
               MOV   param_b,ON
               JMP   p_barra_exit
param_unidad?: CMP   AH,':'            ; ®par†metro de unidad?
               JNE   param_num?
               AND   AL,255-32         ; poner en may£sculas
               MOV   param_unidad,AL
               JMP   p_barra_exit
param_num?:    CMP   AL,'/'
               JNE   param_num         ; puede ser n£mero
param_b_mal:   OR    lista_err,ERROR0
param_num:     CALL  obt_num           ; es par†metro numÇrico: leerlo
               CLC                     ; no es par†metro barrado
               RET
p_barra_exit:  ADD   BX,2              ; saltar este par†metro
               STC                     ; es par†metro barrado
               RET
param_barra    ENDP

validacion     PROC
               MOV   AX,0FFFFh
               CMP   AX,param_tdisco   ; ®n£meros correctos?
               JE    sintax_err
               CMP   AX,param_tsect
               JE    sintax_err
               CMP   AX,param_tdir
               JE    sintax_err
               CMP   AX,param_tcluster
               JE    sintax_err
               CMP   param_tdisco,0
               JE    valida_tsect      ; no indicado tama§o (o 0)
               CMP   param_tdisco,8
               JB    sintax_err
               CMP   param_tdisco,65534
               JA    sintax_err
valida_tsect:  MOV   AX,param_tsect
               CMP   AX,0
               JE    valida_tclus      ; no indicado tama§o de sector
               CMP   AX,32
               JE    valida_tclus
               CMP   AX,64
               JE    valida_tclus
               CMP   AX,128
               JE    valida_tclus
               CMP   AX,256
               JE    valida_tclus
               CMP   AX,512
               JE    valida_tclus
               CMP   AX,1024
               JE    valida_tclus
               CMP   AX,2048
               JE    valida_tclus
               CMP   AX,4096
               JE    valida_tclus
               CMP   AX,8192
               JNE   sintax_err
valida_tclus:  CMP   param_tcluster,256
               JAE   sintax_err        ; debe estar entre 0..255
               CMP   param_f,1
               JB    pf_a1             ; /F=1 ¢ /F=2 exclusivamente
               CMP   param_f,2         ; si no, forzarlo y perdonar
               JBE   fin_validar
               MOV   param_f,2
               JMP   fin_validar
pf_a1:         MOV   param_f,1
               JMP   fin_validar
sintax_err:    MOV   param_tdiscof,OFF ; no definir disco ahora
               XOR   AX,AX
               MOV   param_tdisco,AX
               MOV   param_tsect,AX
               MOV   param_tdir,AX
               MOV   param_tcluster,AX
               OR    lista_err,ERROR0  ; aviso de error de sintaxis
fin_validar:   RET
validacion     ENDP

salta_nombre   PROC                    ; saltar nombre del driver en
               MOV   AL,ES:[BX]        ; l°nea de ¢rdenes del CONFIG
               INC   BX
               CMP   AL,' '
               JE    fin_nombre
               CMP   AL,9
               JE    fin_nombre
               CMP   AL,0Dh
               JE    fin_nombre
               CMP   AL,0Ah
               JE    fin_nombre
               AND   AL,AL
               JZ    fin_nombre        ; necesario para DOS 2.x
               JMP   salta_nombre
fin_nombre:    DEC   BX
               RET
salta_nombre   ENDP

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
               CMP   CL,'/'
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

; ------------ Detectar errores que se pueden producir s¢lo en la
;              l°nea de comandos.

errores_Dos    PROC
               PUSH  ES
               CMP   dosver,200h       ; necesario DOS 2.x+
               JAE   existe_tdsk?
               OR    err_grave,ERROR0  ; error de DOS incorrecto
               JMP   fin_err_Dos
existe_tdsk?:  CALL  reside_tdsk?      ; ®instalado TURBODSK?
               CMP   segm_tdsk,0
               JNE   busca_unidad      ; ya instalado
               OR    err_grave,ERROR1  ; error: TURBODSK no instalado
               JMP   fin_err_Dos
busca_unidad:  MOV   ES,segm_tdsk      ; ES: -> disco virtual
               CMP   param_unidad,0
               JE    disco_defecto     ; no se indic¢ letra de unidad
               CALL  obtener_segm      ; segmento del TDSK indicado
               JC    fin_err_Dos       ; fallo (no es unidad TDSK)
disco_defecto: CALL  max_sector        ; obtener mayor sector
               MOV   BX,param_tsect
               CMP   BX,AX
               JBE   fin_err_Dos       ; tama§o de sector correcto
               OR    lista_err,ERROR3  ; el tama§o no definible ahora
               MOV   param_tsect,0     ; ignorar tama§o indicado
fin_err_Dos:   CALL  test32Mb
               CALL  testWin
               POP   ES
               RET
errores_Dos    ENDP

; ------------ Detectar errores que se pueden producir s¢lo desde
;              el CONFIG.SYS

errores_config PROC
               CMP   param_unidad,0
               JE    no_unidad
               OR    lista_err,ERROR1
no_unidad:     CMP   param_c,ON
               JNE   fin_err_con
               OR    lista_err,ERROR1
fin_err_con:   CALL  test32Mb
               RET
errores_config ENDP

; ------------ Preparar valor de ERRORLEVEL para el retorno.

set_errorlevel PROC
               MOV   AL,255
               TEST  err_grave,ERROR1  ; ®TDSK no instalado?
               JNZ   fin_cod_ok
               DEC   AL
               TEST  err_grave,ERROR2  ; ®unidad incorrecta?
               JNZ   fin_cod_ok
               DEC   AL
               TEST  err_grave,ERROR3  ; ®dentro de Windows?
               JNZ   fin_cod_ok
               DEC   AL
               TEST  lista_err,ERROR0  ; error de sintaxis
               JNZ   fin_cod_ok
               CMP   param_h,ON        ; ayuda: handle desconocido
               JE    fin_cod_ok
               MOV   AL,BYTE PTR ES:mem_handle  ; handle XMS/EMS
               CMP   ES:tipo_soporte,0
               JNE   fin_cod_ok
               MOV   AL,0              ; disco no formateado
fin_cod_ok:    RET
set_errorlevel ENDP

; ------------ Obtener mayor tama§o de sector definido en el sistema.

max_sector     PROC
               XPUSH <BX,ES>
               MOV   AH,52h
               INT   21h               ; Get List of Lists
               ADD   BX,10h
               CMP   CS:dosver,30Ah
               JAE   psect_ok
               INC   BX                ; DOS anterior al 3.1
psect_ok:      MOV   AX,ES:[BX]        ; mayor tama§o de sector
               XPOP  <ES,BX>           ; definido por cualquier disp.
               RET
max_sector     ENDP

; ------------ Si el disco es de m†s de 32 Mb, comprobar si el sector
;              es de al menos 1024 bytes.

test32Mb       PROC
               CMP   param_tdisco,32768
               JBE   fin32mb
               CMP   param_tsect,1024
               JAE   fin32mb
               OR    lista_err,ERROR15      ; sector de menos de 1024
               MOV   param_tdisco,32768     ; evitar fallo posterior
fin32mb:       RET
test32Mb       ENDP

; ------------ Desde Windows, no se permite redefinir el disco.

testWin        PROC
               CMP   param_tdiscof,ON
               JNE   fin_testWin       ; no redefinido el disco
               CMP   dosver,300h
               JB    fin_testWin       ; no buscar Windows en DOS 2.x
               MOV   AX,1600h
               INT   2Fh
               AND   AL,AL             ; ®Windows en modo extendido?
               JZ    noWinEnh
               CMP   AL,80h            ; ®Windows en modo extendido?
               JE    noWinEnh
siWin:         OR    err_grave,ERROR3  ; estamos dentro de Windows
               JMP   fin_testWin
noWinEnh:      MOV   AX,4680h
               INT   2Fh
               AND   AX,AX
               JZ    siWin             ; Windows en modo real/est†ndar
fin_testWin:   RET
testWin        ENDP

; ------------ Verificar la presencia en memoria de TURBODSK. Se
;              inicializa Æsegm_tdskØ y Æletra_unidadØ indicando d¢nde
;              reside el primer dispositivo TURBODSK de todos los que
;              puede haber instalados. La letra de la unidad se halla
;              del propio TDSK residente, para evitar conflictos con
;              programas que manipulan ilegalmente la lista de
;              unidades, del tipo de Stacker o Smartdrive.

reside_tdsk?   PROC
               XPUSH <AX, SI>
               CALL  lista_discos
               LEA   SI,area_trabajo-4
busca_final:   ADD   SI,4
               CMP   WORD PTR [SI],0
               JNE   busca_final       ; ir al final de la tabla
busca_tdsk:    SUB   SI,4
               CMP   SI,OFFSET area_trabajo
               JB    fin_busca         ; no reside (segm_tdsk = 0)
               CMP   BYTE PTR [SI+3],1
               JNE   busca_tdsk
               MOV   AX,[SI]           ; encontrada unidad TURBODSK
               MOV   segm_tdsk,AX
               PUSH  DS
               MOV   DS,AX
               MOV   AL,letra_unidad   ; con esta letra de unidad
               POP   DS
               MOV   letra_unidad,AL
fin_busca:     XPOP  <SI, AX>
               RET
reside_tdsk?   ENDP

; ------------ Obtener el segmento de la unidad TURBODSK indicada, si
;              existe, accediendo a una tabla de dispositivos que se
;              crea. A la salida, CF=1 si esa unidad no es TURBODSK.

obtener_segm   PROC
               CALL  lista_discos
               LEA   SI,area_trabajo-4
busca_ultimo:  ADD   SI,4
               CMP   WORD PTR [SI],0
               JNE   busca_ultimo      ; realmente, el primero
recorre_dsks:  SUB   SI,4
               CMP   SI,OFFSET area_trabajo
               JB    tdsk_no_hay
               CMP   BYTE PTR [SI+3],1
               JNE   recorre_dsks
               PUSH  DS
               MOV   DS,[SI]
               MOV   AL,letra_unidad   ; unidad del TDSK residente
               POP   DS
               CMP   AL,param_unidad   ; disco TDSK: ®es el buscado?
               JNE   recorre_dsks
               MOV   letra_unidad,AL   ; inicializar letra de unidad
               MOV   AX,[SI]
               MOV   segm_tdsk,AX      ; inicializar segmento
               MOV   ES,AX
               CLC
               RET
tdsk_no_hay:   OR    err_grave,ERROR2  ; unidad indicada no es TDSK
               STC
               RET
obtener_segm   ENDP

; ------------ Colocar nuevo gestor de INT 19h al instalar TDSK desde
;              el CONFIG.SYS. En algunos entornos multitarea basados
;              en el modo virtual-86 del 386 y superiores, si no se
;              libera la memoria EMS/XMS tras una cancelaci¢n de la
;              tarea virtual, Çsta queda permanentemente ocupada hasta
;              un reset Æfr°oØ del sistema, sin poder ser aprovechada
;              por los dem†s procesos. La INT 19h se ejecuta cuando la
;              tarea en curso va a ser inminentemente cancelada por el
;              sistema, y TURBODSK la intercepta para poder liberar la
;              memoria EMS/XMS en el £ltimo instante. La rutina que
;              controla INT 19h contiene c¢digo de 286, por lo que se
;              chequea la presencia de este procesador.

desvia_int19   PROC
               XPUSH <BX,DS,ES>
               MOV   BX,CS
               MOV   DS,BX
               CALL  test_CPU
               CMP   cpu286,ON
               JNE   fin_desvia19      ; no es 286 ¢ superior
               MOV   AX,3519h
               INT   21h               ; ES:BX anterior INT 19h
               MOV   ant19off,BX
               MOV   ant19seg,ES
               LEA   DX,nueva_int19
               MOV   AX,2519h
               INT   21h               ; nueva rutina de control
fin_desvia19:  XPOP  <ES,DS,BX>
               RET
desvia_int19   ENDP

; ------------ Obtener la letra de la unidad de disco definida. Esta
;              rutina se invoca s¢lo desde CONFIG.SYS con DS:BX
;              apuntando a la cabecera de petici¢n de la orden INIT.

inic_letra     PROC
               XPUSH <AX,BX,SI,DS>
               MOV   AL,[BX].nuevo_disco    ; unidad en DOS 3.0+
               ADD   AL,'A'
               PUSH  CS
               POP   DS                     ; DS -> _PRINCIPAL
               CMP   dosver,300h
               JAE   letra_ok
               CALL  lista_discos           ; hallar unidad en DOS 2.x
               LEA   SI,area_trabajo
               XOR   AL,AL                  ; cuenta de discos
cuenta_discos: ADD   AL,[SI+2]
               ADD   SI,4
               CMP   WORD PTR [SI],0
               JNE   cuenta_discos
               ADD   AL,'A'
letra_ok:      MOV   letra_unidad,AL        ; guardar letra de unidad
               XPOP  <DS,SI,BX,AX>
               RET
inic_letra     ENDP

; ------------ Crear una lista de todos los dispositivos de bloque
;              del sistema. La lista tiene una entrada de 4 bytes
;              para cada dispositivo: los dos primeros indican el
;              segmento en que reside, el siguiente el n£mero de
;              unidades que controla y el £ltimo vale 1 ¢ 0 para
;              indicar si es una unidad TDSK o no. El final de la
;              lista lo se§aliza un segmento igual a 0.

lista_discos   PROC
               XPUSH <AX,BX,CX,DX,SI,DI,ES>
               MOV   AH,52h            ; "Get list of lists"
               INT   21h               ; obtener puntero en ES:BX
               MOV   CX,17h            ; supuesto DOS 2.x
               CMP   dosver,300h
               JB    pdisp_ok
               MOV   CX,28h            ; supuesto DOS 3.0x
               CMP   dosver,30Ah
               JB    pdisp_ok
               MOV   CX,22h            ; versiones del DOS superiores
pdisp_ok:      ADD   BX,CX
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
               MOV   BYTE PTR [DI+3],0 ; de momento, no es TDSK
               PUSH  DI
               LEA   SI,id_tdsk        ; identificaci¢n de TURBODSK
               MOV   DI,SI
               MOV   CX,5
               CLD
               REP   CMPSB             ; ®es TURBODSK?
               POP   DI
               JNE   disp_otro         ; es de bloques, pero no TDSK
               MOV   AX,ES:cs_tdsk     ; segmento real de TDSK
               MOV   [DI],AX           ; corregir direcci¢n en tabla
               INC   BYTE PTR [DI+3]   ; indicar dispositivo TDSK
               JMP   disp_otro         ; buscar hasta completar tabla
disp_fin:      MOV   WORD PTR [DI],0   ; final de la lista
               XPOP  <ES,DI,SI,DX,CX,BX,AX>
               RET
lista_discos   ENDP

; ------------ Liberar la memoria ocupada por un TURBODSK residente.

desinstala     PROC
               MOV   DX,ES:mem_handle
               MOV   AL,ES:tipo_soporte
               DEC   AL
               JZ    libera_ext        ; liberar memoria extendida
               DEC   AL
               JZ    libera_exp        ; liberar memoria expandida
               PUSH  ES
               MOV   ES,DX
               MOV   AH,49h            ; liberar memoria convencional:
               INT   21h
               POP   ES
               PUSH  ES
               PUSHF                   ; condici¢n de error
               MOV   ES,ES:tdsk_psp    ; liberar PSP residente
               MOV   AH,49h
               INT   21h
               PUSHF
               CMP   dosver,31Eh
               JA    mcb_ok            ; DOS 3.31+: el MCB es correcto
               MOV   AX,ES
               DEC   AX
               MOV   ES,AX
               MOV   DI,8
               MOV   CX,DI
               CLD
               MOV   AL,' '
               REP   STOSB             ; hasta DOS 3.30 borrar nombre
mcb_ok:        POPF
               JNC   lib_con_ok?       ; liberado correctamente
               POPF
               POP   ES
               STC                     ; ha habido fallo
               JMP   desinstalado
lib_con_ok?:   POPF                    ; recuperar condici¢n de error
               POP   ES
               JMP   desinstalado
libera_ext:    MOV   AH,0Ah
               CALL  ES:xms_driver
               CMP   AX,1
               JE    desinstalado      ; Çxito al liberar memoria XMS
               STC
               JMP   desinstalado      ; fallo
libera_exp:    MOV   AH,45h
               INT   67h
               CMP   AH,0
               JE    desinstalado
               CMP   AH,82h            ; ®EMM ocupado?
               JE    libera_exp
               STC                     ; fallo al liberar memoria EMS
desinstalado:  MOV   ES:tipo_soporte,0 ; disco Æno formateadoØ
               JNC   desins_ok
               OR    lista_err,ERROR14 ; fallo al liberar memoria
               STC
desins_ok:     RET
desinstala     ENDP

; ------------ Determinar la configuraci¢n del sistema: tipos de
;              memoria y cantidad de la misma. Se indica en ÆtdiscoØ
;              un valor 0 si no se define ahora el disco, sea cual sea
;              el motivo del fallo, y se actualiza la variable que
;              indica los mensajes de error y advertencia a imprimir.

mem_info       PROC
               MOV   tdisco,0          ; ley de Murphy
               CALL  eval_xms          ; inicializar Æxms_kbØ
               CALL  eval_ems          ; inicializar Æems_kbØ
               CALL  eval_con          ; inicializar Æcon_kbØ
               MOV   AX,param_tdisco   ; cantidad de memoria necesaria
               CMP   param_a,ON
               JNE   no_ems            ; no solicitan memoria EMS
               MOV   BX,ems_kb         ; solicitan memoria EMS...
               AND   BX,BX
               JNZ   usara_ems
               OR    lista_err,ERROR7  ; no hay memoria EMS disponible
               JMP   mem_infoado
usara_ems:     CMP   AX,BX
               JBE   usar_ems          ; piden algo razonable
               MOV   AX,BX
               OR    lista_err,ERROR4  ; rebajado el tama§o
usar_ems:      MOV   tdisco,AX
               MOV   tipo_soporte,2    ; indicar memoria expandida
               JMP   mem_infoado
no_ems:        CMP   param_e,ON
               JNE   no_xms            ; no solicitan memoria XMS
               MOV   BX,xms_kb         ; solicitan memoria XMS...
               AND   BX,BX
               JNZ   usara_xms
               OR    lista_err,ERROR6  ; no hay memoria XMS disponible
               JMP   mem_infoado
usara_xms:     CMP   AX,BX
               JBE   usar_xms          ; piden algo razonable
               MOV   AX,BX
               OR    lista_err,ERROR4  ; rebajado el tama§o
usar_xms:      MOV   tdisco,AX
               MOV   tipo_soporte,1    ; indicar memoria extendida
               JMP   mem_infoado
no_xms:        CMP   param_c,ON
               JNE   no_con            ; no solicitan memoria conv.
forzar_con:    MOV   BX,con_kb         ; solicitan memoria conv. ...
               AND   BX,BX
               JNZ   usara_con
               OR    lista_err,ERROR10 ; no hay memoria conv. libre
               JMP   mem_infoado
usara_con:     CMP   AX,BX
               JBE   usar_con          ; piden algo razonable
               MOV   AX,BX
               OR    lista_err,ERROR4  ; rebajado el tama§o
usar_con:      MOV   tdisco,AX
               MOV   tipo_soporte,3    ; indicar memoria convencional
               JMP   mem_infoado
no_con:        CMP   AX,xms_kb         ; no indicado tipo de memoria
               JBE   usar_xms          ; intentar emplear memoria XMS
               CMP   ES:rutina_larga,ON
               JE    valdria_ems
               MOV   BX,xms_kb
               CMP   BX,0              ; imposible usar EMS
               JNE   usara_xms         ; queda algo de XMS
               JMP   usar_con?
valdria_ems:   MOV   BX,ems_kb
               CMP   AX,BX
               JA    nv_ems
               JMP   usar_ems          ; emplear memoria EMS
nv_ems:        MOV   BX,ems_kb
               OR    BX,xms_kb
               JZ    usar_con?         ; no hay un †pice de XMS ni EMS
               OR    lista_err,ERROR4  ; rebajado el tama§o solicitado
               MOV   AX,xms_kb
               CMP   AX,ems_kb
               JAE   usar_xms          ; hay m†s o igual XMS que EMS
               MOV   AX,ems_kb
               JMP   usar_ems          ; hay algo de EMS (m†s que XMS)
usar_con?:     CMP   modo,AUTOEXEC
               JE    forzar_con        ; s¢lo se puede usar mem. conv.
               OR    lista_err,ERROR5  ; ho hay memoria EMS ni XMS
mem_infoado:   RET
mem_info       ENDP

               ; ---- Calcular memoria extendida disponible

eval_xms       PROC
               PUSH  ES
               MOV   AX,352Fh
               INT   21h               ; direcci¢n de INT 2Fh en ES:BX
               MOV   AX,ES
               AND   AX,AX
               JZ    xms_ok            ; apunta a 0000:XXXX (DOS 2.x)
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
xms_kb_ok:     CMP   AX,8              ; mayor bloque XMS disponible
               JB    xms_ok
               MOV   xms_kb,AX         ; m°nimo necesario: 8 Kb
xms_ok:        POP   ES
               RET
eval_xms       ENDP

               ; ---- Calcular memoria expandida disponible. Si la
               ;      versi¢n del EMM es 4.0 o superior, las p†ginas
               ;      de memoria expandida pueden no ser contiguas:
               ;      buscar una que diste 32 Kb de la p†gina 0.

eval_ems       PROC
               PUSH  ES
               MOV   AX,3567h
               INT   21h               ; vector de INT 67h en ES:BX
               MOV   DI,10
               LEA   SI,emm_id
               MOV   CX,8
               CLD
               REP   CMPSB             ; ®instalado controlador EMS?
               JE    ems_existe
               JMP   ems_ok
ems_existe:    MOV   CX,8000h          ; nß de intentos prudente
emm_llama:     MOV   AH,40h
               INT   67h
               AND   AH,AH
               JZ    emm_responde
               CMP   AH,82h
               LOOPE emm_llama
emm_fatal:     OR    lista_err,ERROR9  ; fallo del EMM
               JMP   ems_ok
emm_responde:  MOV   AH,41h
               INT   67h
               AND   AH,AH
               JZ    emm_pag_ok
               CMP   AH,82h
               JE    emm_responde      ; reintentar (EMM ocupado)
               JMP   emm_fatal
emm_pag_ok:    MOV   ems_pagina0,BX    ; inicializar p†gina EMS
               ADD   BX,0C00h
               MOV   ems_paginai,BX
               MOV   ems_pagni,3       ; p†gina alternativa: la 3
               MOV   AH,46h
               INT   67h               ; obtener versi¢n del EMM
               CMP   AL,40h
               JB    emm_obt_kb        ; versi¢n anterior a la 4.0
               MOV   ems4,ON
emm_obt_pag:   XPUSH <ES,DS>
               POP   ES
               MOV   AX,5800h          ; obtener direcci¢n de p†ginas
               LEA   DI,area_trabajo
               INT   67h
               POP   ES
               AND   AH,AH
               JZ    emm_pags_ok
               CMP   AH,82h
               JE    emm_obt_pag
               JMP   emm_fatal
emm_pags_ok:   XOR   DX,DX
               CALL  emm_busca_pag     ; buscar p†gina 0
               JC    emm_fatal
               MOV   ems_pagina0,BX
ems_busca_i:   INC   DX                ; buscar la siguiente
               CMP   DX,5              ; la 5¶ y siguientes no valen
               JE    emm_fatal         ;            √ƒƒƒƒƒƒ¥
               CALL  emm_busca_pag     ;            ≥      ≥
               JC    emm_fatal         ;     ⁄>   ⁄>√ƒƒƒƒƒƒ¥<-- p†g i
               MOV   ems_paginai,BX    ;0C00h≥ 32 ≥ ≥      ≥
               MOV   ems_pagni,DL      ; p†  ≥ Kb ≥ √ƒƒƒƒƒƒ¥
               SUB   BX,ems_pagina0    ; rra ≥    ≥ ≥      ≥
               JNC   bxpositivo        ; fos ≥    ¿>√ƒƒƒƒƒƒ¥
               NEG   BX                ;     ≥      ≥      ≥
bxpositivo:    CMP   BX,0C00h          ;     ¿>     √ƒƒƒƒƒƒ¥<-- p†g 0
               JB    ems_busca_i       ; no distan 32 Kb: buscar otra
emm_obt_kb:    MOV   AH,42h
               INT   67h
               AND   AH,AH
               JZ    emm_kb_ok
               CMP   AH,82h
               JE    emm_obt_kb
               JMP   emm_fatal
emm_kb_ok:     MOV   CL,4
               SHL   BX,CL             ; p†ginas EMS disponibles
               MOV   ems_kb,BX         ; Kb EMS disponibles (0,16,...)
ems_ok:        POP   ES
               RET
eval_ems       ENDP

emm_busca_pag  PROC                    ; buscar p†gina nß DX (EMS 4.0)
               LEA   SI,area_trabajo
               PUSH  CX
emm_otra_pag:  LODSW
               MOV   BX,AX             ; BX = segmento de la p†gina
               LODSW                   ; AX = nß de la p†gina
               CMP   AX,DX
               JE    hallada_pag
               LOOP  emm_otra_pag
               STC
hallada_pag:   POP   CX
               RET
emm_busca_pag  ENDP

               ; ---- Calcular el tama§o del mayor bloque de memoria
               ;      convencional disponible. Como m°nimo se dejar†n
               ;      unos 128 Kb libres en Çl, para que el usuario
               ;      pueda volver a ejecutar TDSK y el DOS tenga algo
               ;      de memoria libre. A la mitad de esos 128Kb (para
               ;      evitar solapamientos) es donde TURBODSK se
               ;      autorelocalizar† antes de formatear el disco.

eval_con       PROC
               CMP   modo,AUTOEXEC     ; ®se ejecuta desde el DOS?
               JNE   conv_ok           ; no, desde el config
               MOV   AH,48h
               MOV   BX,0FFFFh         ; pedir 1 Mb al DOS (fallar†)
               INT   21h
               MOV   DX,BX             ; tama§o del mayor bloque
               MOV   CL,6
               SHR   BX,CL             ; BX = Kb del mayor bloque
               SUB   BX,128            ; restar 128 Kb
               JC    conv_ok           ; no quedan ni 128 Kb
               CMP   BX,8
               JB    conv_ok           ; no quedan siquiera 8 Kb
               MOV   con_kb,BX
               MOV   BX,DX             ; tama§o del mayor bloque
               MOV   AH,48h
               PUSH  BX
               INT   21h               ; localizarlo (AX=segmento)
               POP   BX
               XPUSH <ES,AX>           ; preservar ES y segmento (AX)
               ADD   AX,BX             ; a§adir longitud
               SUB   AX,1024/16*64     ; restar 64 Kb
               MOV   segm_reubicar,AX  ; segmento de autoreubicaci¢n
               POP   ES                ; recuperar segmento del bloque
               MOV   AH,49h
               INT   21h               ; liberarlo
               POP   ES                ; recuperar ES
conv_ok:       RET
eval_con       ENDP

; ------------ Reservar la memoria llamando al gestor que la controla.
;              Con memoria XMS y existiendo un controlador EMS 4.0+ se
;              comprueba si el handle XMS provoca la creacci¢n de otro
;              en EMS (caso de QEMM386 y otros emuladores de EMS) y en
;              ese caso se le renombra, para mejorar la informaci¢n de
;              los programas de diagn¢stico.

mem_reserva    PROC
               MOV   AL,tipo_soporte   ; tipo de memoria empleada
               DEC   AL
               JZ    mem_r_xms         ; 1: memoria extendida XMS
               DEC   AL
               JZ    mem_r_ems         ; 2: memoria expandida EMS
               MOV   CL,6
               MOV   BX,tdisco         ; 3: memoria convencional
               SHL   BX,CL
               MOV   AH,48h
               INT   21h
               MOV   mem_handle,AX     ; segmento del disco virtual
               MOV   BX,segm_psp
               MOV   tdsk_psp,BX       ; inicializar esta variable
               RET
mem_r_xms:     CMP   ems4,ON
               JNE   skip_lst_hndl
               LEA   BX,area_trabajo
               CALL  lista_handles     ; EMS 4.0+: listado de handles
skip_lst_hndl: MOV   AH,9
               MOV   DX,tdisco
               CALL  xms_driver        ; pedir memoria XMS
               AND   AX,AX
               JNZ   mem_rda_xms
               OR    lista_err,ERROR8  ; fallo del controlador XMS
               STC                     ; indicar error
mem_rda_xms:   MOV   mem_handle,DX
               PUSHF                   ; preservar condici¢n de error
               CMP   ems4,ON
               JNE   skip_ren_hndl
               CALL  ren_handle        ; en EMS 4.0+ renombrar handle
skip_ren_hndl: POPF
               RET
mem_r_ems:     MOV   BX,tdisco
               ADD   BX,15
               AND   BL,11110000b      ; redondear para arriba
               MOV   tdisco,BX
               MOV   CL,4
               SHR   BX,CL             ; Kb -> nß p†ginas de 16 Kb
               MOV   AH,43h
               INT   67h               ; pedir memoria EMS
               AND   AH,AH
               JZ    mem_rda_ems
               OR    lista_err,ERROR9  ; fallo del controlador EMS
               STC                     ; indicar error
               RET
mem_rda_ems:   MOV   mem_handle,DX
               CMP   ems4,ON
               JNE   nhandle_ok
               CALL  nombrar_hndl      ; en EMS 4.0+ nombrar handle
nhandle_ok:    CLC
               RET
mem_reserva    ENDP

ren_handle     PROC                    ; detectar el handle EMS ligado
               XPUSH <ES,DS>           ; al handle XMS y renombrarlo
               POP   ES
               LEA   BX,area_trabajo[512]
               CALL  lista_handles     ; crear nueva lista de handles
               LEA   SI,area_trabajo
               LEA   DI,area_trabajo[512]
               MOV   CX,256
               CLD
               REP   CMPSW             ; comparar con vieja lista
               JE    ren_hnld_fin
               MOV   DX,[DI-2]         ; handle nuevo
               CALL  nombrar_hndl
ren_hnld_fin:  POP   ES
               RET
ren_handle     ENDP

lista_handles  PROC                    ; crear en DS:BX una lista con
               MOV   CX,256            ; los 256 posibles handles
               XOR   DX,DX             ; activos indicando los usados
listar_h:      MOV   AX,5300h
               LEA   DI,area_trabajo[tam_a_trabajo-8]  ; zona no usada
               XPUSH <BX,CX,DX>
               INT   67h
               XPOP  <DX,CX,BX>
               CMP   AH,0
               JE    handle_usado
               MOV   WORD PTR [BX],0   ; error (handle no usado)
               JMP   lista_h
handle_usado:  MOV   [BX],DX           ; anotar n£mero de handle
lista_h:       ADD   BX,2
               INC   DX
               LOOP  listar_h
               RET
lista_handles  ENDP

nombrar_hndl   PROC                    ; nombrar handle (EMS 4.0+)
               MOV   AX,5301h
               LEA   SI,nombre_tdsk
               MOV   BL,letra_unidad
               MOV   [SI+5],BL
               INT   67h               ; dar nombre al handle
               RET
nombrar_hndl   ENDP

; ------------ Detectar 286 y 386 o superior.

test_CPU       PROC
               PUSHF
               POP   AX
               OR    AH,70h        ; intentar activar bit 12, 13 ¢ 14
               PUSH  AX            ; del registro de estado
               POPF
               PUSHF
               POP   AX
               AND   AH,0F0h
               CMP   AH,0F0h
               JE    fin_test_CPU  ; es 8086 o similar
               MOV   cpu286,ON     ; es 286 o superior
               AND   AH,70h        ; 286 pone bits 12, 13 y 14 a cero
               JZ    fin_test_CPU  ; es 286
               MOV   cpu386,ON     ; 386 o superior
fin_test_CPU:  RET
test_CPU       ENDP

; ------------ Definir valores por defecto y adaptar los par†metros
;              indicados por el usuario a la realidad. Esta rutina
;              inicializa el futuro sector 0 del disco. No se permite
;              que el usuario indique un directorio que ocupe m†s de
;              medio disco. Para determinar el tipo de FAT se halla el
;              nß de sectores libres del disco (llamÇmoslo nsect),
;              descontanto el sector de arranque y el directorio raiz;
;              y se aplica la siguiente f¢rmula, que devuelve el nß de
;              cluster m†s alto del disco al considerar tambiÇn la
;              ocupaci¢n de la futura FAT (12 bits = 1,5 bytes):
;
;                 nsect * tamsect          2 * nsect * tamsect
;                ------------------ + 1 = --------------------- + 1
;                 tamcluster + 1,5         2 * tamcluster + 3
;
;                Al resultado se le suma 1, ya que los clusters se
;              numeran a partir de 2, para calcular el cluster de nß
;              m†s alto del disco. Si ese n£mero es 4086 o m†s habr†
;              de utilizarse una FAT de 16 bits, recalcul†ndose la
;              f¢rmula anterior sustituyendo 1,5 por 2 y 3 por 4. Al
;              final, una vez determinado el tipo de FAT habr† de
;              calcularse con exactitud el n£mero de cluster m†s alto,
;              ya que hay casos cr°ticos en que una FAT12 no sirve
;              pero al aplicar una FAT16 el n£mero de clusters baja de
;              nuevo de 4085 (debido al mayor consumo de disco de la
;              FAT16) resultado de ello la asignaci¢n de una FAT12,
;              pese a que se reserva espacio para la de 16. Hay que
;              considerar adem†s el caso de que el disco tenga 2 FAT.

adaptar_param  PROC
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
prop_ok:       CMP   dosver,300h
               JAE   prop_valido
               CMP   AX,4084*2     ; en DOS 2.xx evitar FAT16
               JB    prop_valido
               MOV   CL,8
               CMP   AX,4084*4
               JB    prop_valido
               MOV   CL,16
               CMP   AX,4084*8
               JB    prop_valido
               MOV   CL,32
prop_valido:   MOV   tdir,BX
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
               CMP   AX,31*1024
               JA    tcluster_mal  ; cluster de m†s de 31 Kb
               MOV   tcluster,BL   ; sectores por cluster
               MOV   tamcluster,AX ; tama§o de cluster
               MOV   CX,param_f    ; considerar n£mero de FATs
               MOV   nfats,CL
               MOV   SI,3
               MOV   CX,param_f
               SHL   SI,CL
               SHR   SI,1
               CALL  eval_clust    ; obtener nß m†s alto de cluster
               CMP   AX,4086
               JAE   fat16         ; el nß m†s alto supera 4085
               MOV   CX,3
               MUL   CX            ; clusters * 3
               SHR   DX,1
               RCR   AX,1          ; clusters * 3 / 2 = clusters * 1,5
               JMP   calc_sfat
fat16:         MOV   SI,4
               MOV   CX,param_f    ; considerar n£mero de FATs
               SHL   SI,CL
               SHR   SI,1
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
adaptar_param  ENDP

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

; ------------ Preparar el BPB del disco virtual seg£n los par†metros
;              y forzar que el DOS lo lea indicando cambio de disco.

preparar_BPB   PROC
               MOV   AX,tsect
               MOV   bytes_sector,AX
               MOV   AL,tcluster
               MOV   sect_cluster,AL
               MOV   AX,tdir
               MOV   entradas_raiz,AX
               MOV   AX,numsect
               MOV   num_sect,AX
               MOV   AL,nfats
               MOV   num_fats,AL
               MOV   AX,sfat
               MOV   sectores_fat,AX
               MOV   cambiado,0FFh     ; ha habido ÆcambioØ de disco
               RET
preparar_BPB   ENDP

; ------------ Preparar el disco para operar. ES apunta al disco al
;              entrar. Se proceder† a copiar la rutina necesaria en
;              funci¢n del tipo de memoria que gestiona el disco.
;              DespuÇs, se copiar†n las variables que gestionan TDSK
;              sobre la copia residente, as° como el nuevo BPB.

prep_driver    PROC
               MOV   AL,tipo_soporte
               LEA   SI,procesa_xms
               MOV   CX,tam_proc_xms
               DEC   AL
               JZ    prep_mem          ; instalar rutina XMS
               LEA   SI,procesa_ems
               MOV   CX,tam_proc_ems
               DEC   AL
               JZ    prep_mem          ; instalar rutina EMS
               LEA   SI,procesa_con
               MOV   CX,tam_proc_con   ; instalar rutina memoria conv.
prep_mem:      LEA   DI,procesa_io
               CLD
               XPUSH <SI,DI,CX>
               REP   MOVSB             ; instalar rutina en el disco
               XPOP  <CX,DI,SI>
               XPUSH <ES,DS>
               POP   ES
               REP   MOVSB             ; y en el propio TDSK.EXE (para
               POP   ES                ; usarla despuÇs al formatear)
               LEA   CX,f_tdsk_ctrl
               LEA   SI,i_tdsk_ctrl
               SUB   CX,SI
               MOV   DI,SI
               REP   MOVSB             ; actualizar variables
               LEA   CX,fin_bpb
               LEA   SI,bpb
               SUB   CX,SI
               MOV   DI,SI
               REP   MOVSB             ; actualizar BPB
               RET
prep_driver    ENDP

; ------------ Autorelocalizaci¢n de TDSK.EXE
;              Es necesario si se reserva memoria convencional para el
;              disco virtual. El motivo es evitar que al inicializar
;              la BOOT, la FAT y el ROOT al inicio del disco, si Çste
;              est† justo encima de TDSK, TDSK se autodestruya. Por
;              ello, TDSK se autocopiar† en la mitad de los 128 Kb del
;              mayor bloque de memoria libre, nunca utilizados por el
;              disco (aunque este bloque no haya sido reservado, ≠como
;              est† libre!). Finalmente pasar† a correr en ese nuevo
;              destino. Se copia TODO, pila incluida. La copia se hace
;              en Æsegm_reubicarØ que apunta a la mitad de esos 128 Kb
;              con objeto de evitar solapamientos origen/destino (TDSK
;              ocupa s¢lo alrededor de 16 Kb en memoria).

relocalizar    PROC
               CMP   tipo_soporte,3
               JE    procede_reloc     ; usada memoria convencional
               RET
procede_reloc: PUSH  ES                ; * preservar ES
               MOV   ES,segm_reubicar  ; segmento de reubicaci¢n
               XOR   SI,SI
               XOR   DI,DI
               MOV   BX,SS             ; final de TURBODSK (pila)
               MOV   CX,DS             ; inicio de _PRINCIPAL
               SUB   BX,CX             ; tama§o de TDSK en p†rrafos
               MOV   CL,4
               SHL   BX,CL             ; ahora en bytes
               ADD   BX,tam_pila+16    ; 16 por si acaso
               MOV   CX,BX             ; CX = bytes a relocalizar
               CLD
               REP   MOVSB             ; auto-copiaje arriba
               MOV   AX,ES
               MOV   DS,AX             ; nuevo segmento de datos
               POP   ES                ; * restaurar ES
               MOV   BX,CS
               SUB   AX,BX             ; ES - CS --> cuant°a del salto
               MOV   BX,SS
               ADD   BX,AX
               MOV   SS,BX             ; actualizar segmento de pila
               POP   AX                ; direcci¢n de retorno cercano
               PUSH  DS                ; segmento de ÆretornoØ
               PUSH  AX                ; offset
               RETF                    ; retorno cargando CS:
relocalizar    ENDP

; ------------ Inicializar la BOOT, FAT y ROOT del disco virtual.
;              En versiones del DOS anteriores a la 3.3, el sistema
;              inexplicablemente hace caso omiso del cambio de disco
;              (®?), por lo que hay que avisarle ≠dos veces!, con el
;              correspondiente doble cambio del byte descriptor de
;              medio, para que se tome en serio el cambio de disco.
;              Por fortuna desde el DOS 3.3 ya no es preciso hacer
;              esta extra§a maniobra. Para que el DOS acceda al disco,
;              se le pregunta simplemente el espacio libre del mismo.

formatear_tdsk PROC
               PUSH  ES                ; *
               PUSH  DS
               POP   ES
               LEA   SI,sector_cero
               LEA   DI,area_trabajo
               MOV   CX,128
               CLD
               REP   MOVSB             ; primeros 128 bytes del BOOT
               XOR   AX,AX
               MOV   CX,tam_a_trabajo-128
               REP   STOSB             ; a 0 resto del †rea de trabajo
               LEA   DI,area_trabajo
               ADD   DI,tsect
               MOV   WORD PTR [DI-2],0AA55h     ; marca de sector v†lido
               CALL  escribe_sectAX    ; escribir sector BOOT (AX=0)
               LEA   DI,area_trabajo
               MOV   CX,tsect
               REP   STOSB             ; borrar area de trabajo
               MOV   AX,sfat
               MOV   CX,param_f        ; considerar n£mero de FATs
               SHL   AX,CL
               SHR   AX,1
               ADD   AX,sdir           ; AX = sectores fat + dir. raiz
ini_fat:       CMP   AX,1
               JE    pfat
               CALL  escribe_sectAX    ; inicializar directorio raiz
               DEC   AX                ; y £ltimos sectores de la FAT
               JMP   ini_fat
pfat:          LEA   DI,area_trabajo
               MOV   BYTE PTR [DI],media
               MOV   AX,0FFFFh         ; inicializar 3 bytes FAT...
               MOV   DS:[DI+1],AX
               CMP   ultclus,4086      ; ®menos de 4085 clusters?
               JB    pfat_ok
               MOV   DS:[DI+3],AL      ; inicializar 4ß byte FAT
pfat_ok:       MOV   AX,1
               CALL  escribe_sectAX    ; primer sector FAT preparado
               CALL  fecha_hora
               LEA   SI,dir_raiz
               MOV   [SI+22],AX        ; hora actual
               MOV   [SI+24],DX        ; fecha actual
               LEA   DI,area_trabajo
               MOV   CX,32
               REP   MOVSB
               MOV   AX,sfat
               MOV   CX,param_f        ; considerar n£mero de FATs
               SHL   AX,CL
               SHR   AX,1
               INC   AX
               CALL  escribe_sectAX    ; primer sector raiz preparado
               POP   ES                ; *
               CMP   dosver,31Eh
               JAE   formateado        ; DOS 3.3+
               NOT   ES:media_byte     ; cambiar descriptor de medio
               MOV   AH,36h            ; Æobtener espacio libreØ
               MOV   DL,ES:letra_unidad
               SUB   DL,'A'-1          ; unidad de disco virtual
               PUSH  DX
               INT   21h               ; primer acceso al disco
               POP   DX
               NOT   ES:media_byte     ; restaurar descriptor de medio
               MOV   ES:cambiado,0FFh  ; nuevo ÆcambioØ de disco
               MOV   AH,36h
               INT   21h               ; acceder otra vez al disco
formateado:    RET
formatear_tdsk ENDP

               ; ---- Escribir el sector nß AX del disco virtual. No
               ;      se utiliza INT 26h (imposible desde el CONFIG).

escribe_sectAX PROC
               PUSHF                   ; preservar bit DF
               XPUSH <AX,BX,CX,DX,SI,DI,BP,DS,ES>
               XOR   BP,BP             ; indicar escritura
               LEA   DI,area_trabajo   ; ES:DI buffer
               MOV   BX,AX             ; n£mero de sector
               MOV   AX,1              ; 1 sector
               CALL  io_proc           ; acceder al disco directamente
               XPOP  <ES,DS,BP,DI,SI,DX,CX,BX,AX>
               POPF
               RET
escribe_sectAX ENDP

               ; ---- Obtener fecha y hora del sistema en DX y AX

fecha_hora     PROC
               MOV   AH,2Ah
               INT   21h               ; obtener fecha del sistema
               MOV   AL,32
               MUL   DH                ; AX = mes * 32
               SUB   CX,1980
               SHL   CL,1              ; (a§o-1980)*2
               ADD   AH,CL             ; sumar (a§o-1980)*512
               MOV   CL,DL             ; CX = dia (CH=0)
               ADD   AX,CX
               PUSH  AX                ; * guardar fecha
               MOV   AH,2Ch
               INT   21h               ; obtener hora del sistema
               MOV   AL,32
               MUL   CL                ; AX = minutos*32
               MOV   CL,3
               SHL   CH,CL
               XOR   CL,CL             ; CX = hora*2048
               ADD   AX,CX
               SHR   DH,1              ; segundos/2
               ADD   AL,DH
               ADC   AH,0
               POP   DX                ; * recuperar fecha
               RET
fecha_hora     ENDP

; ------------ Cambiar el nombre al bloque de control de memoria para
;              mejorar la informaci¢n del comando MEM del sistema si
;              el disco se define en memoria convencional/superior.

renombrar_mcb  PROC
               PUSH  ES
               MOV   AL,letra_unidad
               MOV   BYTE PTR nombre_tdsk+5,AL
               MOV   BYTE PTR nombre_tdsk+4,'('
               MOV   BYTE PTR nombre_tdsk+6,')'
               MOV   AX,segm_psp
               DEC   AX
               MOV   ES,AX
               LEA   SI,nombre_tdsk
               MOV   DI,8
               MOV   CX,DI
               CLD
               REP   MOVSB
               POP   ES
               RET
renombrar_mcb  ENDP

; ------------ Informar sobre el disco virtual instalado.

info_disco     PROC
               CALL  InitMultiPrint
               LEA   DX,ayuda_txt      ; ayuda en espa§ol
               CMP   param_h,ON        ; ®solicitud de ayuda?
               JNE   cont_info         ; no
               JMP   info_exit
cont_info:     TEST  err_grave,0FFFFh
               JZ    info_no_fatal
               LEA   DX,err_grave_gen  ; texto de encabezamiento
               CALL  imprimir          ; imprimir errores graves:
               LEA   DX,e0
               TEST  err_grave,ERROR0
               JZ    otro_fallo        ; no es error de DOS incorrecto
               CALL  imprimir
               MOV   SP,tam_pila
               PUSH  segm_psp          ; en DOS 1.x hay que terminar
               XOR   AX,AX             ; con CS = PSP
               PUSH  AX
               RETF                    ; ejecutar INT 20h de PSP:0
otro_fallo:    LEA   DX,e1
               TEST  err_grave,ERROR1
               JNZ   info_g
               LEA   DX,e2
               TEST  err_grave,ERROR2
               JNZ   info_g
               LEA   DX,e3
info_g:        JMP   info_exit
info_no_fatal: CMP   ES:tipo_soporte,0 ; error no fatal
               JNE   info_reporte
               LEA   DX,info_ins       ; disco no formateado
               CALL  imprimir
               CALL  impr_unidad
               LEA   DX,info_ins2
               CMP   lista_err,0
               JE    info_exit         ; sin mensajes de advertencia
               CALL  imprimir          ; ... o con ellos
               JMP   info_err
info_reporte:  CALL  pr_info           ; disco formateado
               CMP   lista_err,0
               JE    info_ret          ; sin mensajes de advertencia
               LEA   DX,cab_adv_txt    ; ... o con ellos
               CALL  imprimir          ; cabecera de advertencias
info_err:      MOV   AX,lista_err
               LEA   BX,tabla_mens-2   ; tabla de mensajes
               MOV   CX,16             ; 16 posibles mensajes
busca_err:     ADD   BX,2
               SHR   AX,1
               JC    informa
mas_mens:      LOOP  busca_err         ; no se produce ese error
               JMP   info_ret
informa:       LEA   DX,mens_cabec     ; inicio com£n a los mensajes
               CALL  imprimir
               MOV   DX,[BX]           ; direcci¢n de ese mensaje
               CALL  imprimir
               JMP   mas_mens          ; acabar con todos
info_exit:     CALL  imprimir
info_ret:      RET
info_disco     ENDP

pr_info        PROC
               LEA   DX,info_txt
               CALL  imprimir
               CALL  impr_unidad
               LEA   DX,inf_tsect
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
               LEA   DX,inf_tdisco
               CALL  imprimir
               MOV   AX,ES:num_sect
               MUL   ES:bytes_sector
               MOV   BX,1024
               DIV   BX
               MOV   CL,5
               CALL  print_32
               LEA   DX,inf_tcluster
               CALL  imprimir
               MOV   AL,ES:sect_cluster
               XOR   AH,AH
               XOR   DX,DX
               MOV   CL,5
               CALL  print_32
               LEA   DX,inf_mem
               CALL  imprimir
               MOV   AL,ES:tipo_soporte
               LEA   DX,inf_mem_xms
               DEC   AL
               JZ    mem_ifdo          ; memoria XMS
               LEA   DX,inf_mem_ems
               DEC   AL
               JZ    mem_ifdo          ; memoria EMS
               LEA   DX,inf_mem_con
               CMP   ES:mem_handle,0A000h
               JB    mem_ifdo          ; memoria convencional
               LEA   DX,inf_mem_sup    ; memoria superior
mem_ifdo:      CALL  imprimir
               LEA   DX,inf_nclusters
               CALL  imprimir

               MOV   AX,ES:entradas_raiz
               MOV   BX,32
               MUL   BX                ; bytes ocupados por directorio
               DIV   ES:bytes_sector   ; AX = sectores del directorio
               ADD   AX,ES:sect_reserv
               ADD   AX,ES:sectores_fat
               SUB   AX,ES:num_sect
               NEG   AX                ; AX = sectores libres
               XOR   DX,DX
               MOV   BL,ES:sect_cluster
               XOR   BH,BH
               DIV   BX                ; AX = nß de clusters
               XOR   DX,DX
               MOV   CL,5
               CALL  print_32
               LEA   DX,inf_tfat
               CALL  imprimir
               LEA   DX,inf_tfat12
               CMP   AX,4085           ; ®FAT12?
               JB    ifat_ok
               LEA   DX,inf_tfat16
ifat_ok:       CALL  imprimir
               LEA   DX,inf_final
               CALL  imprimir
               RET
pr_info        ENDP

               ; --- Imprimir letra de unidad en AL.

impr_unidad    PROC
               XPUSH <AX, DX>
               MOV   AL,letra_unidad
               MOV   AH,0
               MOV   WORD PTR area_trabajo,AX
               LEA   DX,area_trabajo
               CALL  imprimir
               XPOP  <DX, AX>
               RET
impr_unidad    ENDP

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

; ------------ Dividir DX:AX / CX sin desbordamientos (cociente: AX,
;              resto: DX). Si el cociente excede los 16 bits, CF = 1
;              y todos los registros intactos.

divCX          PROC
               XPUSH <BX,SI,CX,AX,DX>
               MOV   SI,32
               XOR   BX,BX
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

; ------------ Impresi¢n en color o monocroma (esta £ltima
;              redireccionable). Desde el CONFIG.SYS se imprime en
;              monocromo para no llamar la atenci¢n, a menos que
;              indiquen /M, al contrario que desde el DOS.

imprimir       PROC
               PUSH  AX
               MOV   AL,param_m
               CMP   modo,CONFIG       ; ®en CONFIG.SYS?
               JNE   m_ok              ; no
               XOR   AL,ON             ; s°: /M opera al revÇs
m_ok:          MOV   pr_mono,AL
               CALL  print
               POP   AX
               RET
imprimir       ENDP

; ------------ Imprimir cadena en DS:DX delimitada por un 0 ¢ un 255.
;              Si acaba en 0, se imprime como tal; en caso contrario,
;              se supone que el mensaje es multilingÅe y los diversos
;              idiomas (1, 2, ... N) separan sus cadenas por sucesivos
;              c¢digos 255. El car†cter de control 127 realiza una
;              pausa hasta que se pulsa una tecla.

print          PROC
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
pr_cad:        ; MOV   AH,40h
               ; MOV   BX,1
               ; INT   21h               ; imprimir con el DOS
               MOV   SI,DX
               LEA   DI,area_trabajo
               PUSH  DS
               POP   ES                ; por si acaso
               CLD
               REP   MOVSB
               MOV   [DI],CL           ; ASCIIZ
               LEA   DX,area_trabajo
               CALL  MultiPrint        ; imprimir en color
               RET
print          ENDP

; ------------ Impresi¢n en pantalla, en color o monocromo, usando el
;              BIOS o el DOS respectivamente. Antes deber† ejecutarse
;              InitMultiPrint para inicializar.   Al  hacer scroll se
;              intenta respetar el posible  color  global  de  fondo.
;              Con Æpr_monoØ en ON se solicita imprimir en monocromo.
;
;              - El texto a imprimir es apuntado por DS:DX.
;              - C¢digos de control soportados:
;
;                 0 -> final de cadena
;                 1 -> el siguiente car†cter indica el color (BIOS)
;                 2 -> el siguiente car†cter indica el nß de veces que
;                      se imprimir† el que viene detr†s
;                 3 -> avanzar cursor a la derecha
;                10 -> retorno de carro y salto de l°nea estilo UNIX

MultiPrint     PROC
               XPUSH <AX,BX,CX,DX,SI,DI,BP,DS,ES>
               PUSH  DS
               POP   ES
               PUSH  CS
               POP   DS
               LEA   AX,pr_AL_dos
               CMP   pr_mono,ON
               JE    pr_rut_ok
               LEA   AX,pr_AL_bios
pr_rut_ok:     MOV   pr_rut,AX         ; instalar rutina de impresi¢n
               MOV   BX,DX
pr_otro:       MOV   AL,ES:[BX]
               PUSH  BX
               CMP   AL,' '
               JAE   pr_ASCII          ; no es un c¢digo de control
               AND   AL,AL
               JZ    pr_exit           ; c¢digo de control 0: final
               CMP   AL,1
               JE    pr_setcolor       ; c¢digo de control 1: color
               CMP   AL,2
               JE    pr_setveces       ; c¢digo de control 2: repetir
pr_ASCII:      CALL  pr_rut
               POP   BX
               INC   BX
               JMP   pr_otro
pr_setcolor:   MOV   AL,ES:[BX+1]
               MOV   pr_color,AL       ; actualizar color
               POP   BX
               ADD   BX,2
               JMP   pr_otro
pr_setveces:   MOV   AL,ES:[BX+1]
               MOV   pr_veces,AL       ; actualizar repeticiones
               POP   BX
               ADD   BX,2
               JMP   pr_otro
pr_exit:       XPOP  <BX,ES,DS,BP,DI,SI,DX,CX,BX,AX>
               RET
MultiPrint     ENDP

pr_AL_bios     PROC                    ; imprimir en color usando BIOS
               PUSH  AX
               MOV   AH,3
               MOV   BH,pr_pagina
               INT   10h               ; DX = coordenadas del cursor
               POP   AX
               CMP   AL,3
               JE    pr_derecha        ; c¢digo de control 3: avanzar
               CMP   AL,10
               JE    pr_crlf           ; c¢digo de control 10: CR & LF
               MOV   AH,9
               MOV   BH,pr_pagina
               MOV   BL,pr_color
               MOV   CL,pr_veces
               XOR   CH,CH
               PUSH  DX
               INT   10h               ; imprimir car†cter
               POP   DX
pr_derecha:    ADD   DL,pr_veces
               MOV   pr_veces,1
               CMP   DL,pr_maxX
               JBE   pr_av
pr_crlf:       XOR   DL,DL             ; volver al inicio de l°nea
               INC   DH                ; salto a la siguiente
               CMP   DH,pr_maxY
               JBE   pr_av
               DEC   DH
               PUSH  DX                ; es preciso hacer scroll
               MOV   AX,601h
               MOV   BH,pr_colorb      ; color por defecto
               XOR   CX,CX
               MOV   DL,pr_maxX
               MOV   DH,pr_maxY
               INT   10h               ; hacer scroll usando BIOS
               POP   DX
pr_av:         MOV   BH,pr_pagina
               MOV   AH,2
               INT   10h               ; posicionar cursor
               RET                     ; retorno del procedimiento
pr_AL_bios     ENDP

pr_AL_dos      PROC                    ; imprimir usando DOS
               CMP   AL,3
               JNE   pr_no_der
               MOV   AL,' '            ; c¢digo de control 3: avanzar
pr_no_der:     CMP   AL,10
               JNE   pr_dos
               MOV   AL,13             ; c¢digo de control 10: CR & LF
               CALL  pr_dos            ; llamada "recursiva"
               MOV   AL,10
pr_dos:        MOV   CL,pr_veces
               XOR   CH,CH
               MOV   pr_veces,1
               MOV   DL,AL
pr_chr:        XPUSH <DX,CX>
               MOV   AH,2
               INT   21h               ; imprimir car†cter
               XPOP  <CX,DX>
               LOOP  pr_chr
               RET
pr_AL_dos      ENDP

InitMultiPrint PROC
               XPUSH <AX,BX,CX,DX,BP,DS,ES>
               PUSH  CS
               POP   DS
               MOV   pr_veces,1
               MOV   pr_color,15       ; valores por defecto
               MOV   pr_mono,OFF
pr_i_80?:      MOV   AH,0Fh
               INT   10h
               CMP   AH,80             ; ®80 ¢ m†s columnas?
               JAE   pr_i_video_ok     ; as° es
               MOV   AX,3
               INT   10h               ; forzar modo de 80 columnas
               JMP   pr_i_80?
pr_i_video_ok: MOV   pr_maxX,AH        ; inicializar m†xima coord. X
               MOV   pr_pagina,BH      ; inicializar p†gina activa
               MOV   AX,40h
               MOV   ES,AX             ; ES: -> variables del BIOS
               MOV   AL,ES:[84h]       ; variable de nß l°neas - 1
               CMP   AL,24             ; ®el BIOS define la variable?
               JB    pr_i_maxy_ok      ; no
               MOV   pr_maxY,AL        ; inicializar m†xima coord. Y
pr_i_maxy_ok:  MOV   AH,8              ; (BH = p†gina)
               INT   10h               ; obtener color por defecto
               MOV   pr_colorb,AH
               XPOP  <ES,DS,BP,DX,CX,BX,AX>
               RET
InitMultiPrint ENDP

pr_pagina      DB    0       ; p†gina de visualizaci¢n activa
pr_veces       DB    1       ; veces que se imprime cada car†cter
pr_color       DB    15      ; color BIOS para imprimir
pr_colorb      DB    ?       ; color por defecto en pantalla
pr_maxX        DB    80      ; m†xima coordenada X en pantalla
pr_maxY        DB    24      ; m†xima coordenada Y en pantalla
pr_mono        DB    OFF     ; a ON si imprimir en monocromo
pr_rut         DW    ?       ; apunta a pr_AL_bios / pr_AL_dos

; ------------ Rutina de gesti¢n de memoria XMS. Se copiar† sobre
;              la de memoria EMS si se utiliza memoria XMS.
;              En esta rutina se emplea la pila para pasar los
;              par†metros al controlador XMS.

procesa_xms    PROC
               MOV   DS,CS:mem_handle
               JNC   no_xmslib
               .286                    ; rutina ejecutada desde 286+
               PUSHA                   ; sistema reinicializando:
               MOV   AH,0Dh
               CALL  llama_XMS         ; desbloquear EMB (prudente)
               MOV   AH,0Ah
               CALL  llama_XMS         ; liberar EMB
               POPA
               .8086
               RET
no_xmslib:     DEC   BP                ; leer/escribir en el disco
               JNZ   xms_escribe
               PUSH  ES
               PUSH  DI                ; segmento:offset destino
               PUSH  BP                ; handle destino (BP=0)
xms_escribe:   PUSH  DX
               PUSH  AX                ; desplazamiento DX:AX
               PUSH  DS                ; handle fuente/destino
               JZ    xms_general
               INC   BP                ; hacer BP = 0
               PUSH  ES
               PUSH  DI                ; segmento:offset fuente
               PUSH  BP                ; handle fuente (BP=0)
xms_general:   SHL   CX,1              ; palabras -> bytes
               RCL   BP,1              ; BP era 0
               PUSH  BP                ; tama§o bloque (parte alta)
               PUSH  CX                ; tama§o bloque (parte baja)
               MOV   SI,SP
               PUSH  SS
               POP   DS                ; DS:SI apuntando a la pila
               MOV   AH,0Bh            ; funci¢n para mover EMB
               CALL  llama_XMS         ; mover EMB (DS no importa)
               ADD   SP,16             ; equilibrar pila
               CMP   AL,1              ; ®fall¢ el controlador?
               JE    xms_proc_ok
               MOV   AX,0C81h          ; anomal°a general
xms_proc_ok:   XCHG  AH,AL             ; colocar resultado
               RET
procesa_xms    ENDP

llama_XMS      PROC
               MOV   DX,DS             ; handle en DS (si utilizado)
               CALL  CS:xms_driver     ; ejecutar funci¢n XMS
               RET
llama_XMS      ENDP

tam_proc_xms   EQU   $-OFFSET procesa_xms   ; tama§o de esta rutina

; ------------ Rutina de gesti¢n de memoria convencional. Se copiar†
;              sobre la de memoria EMS si se utiliza memoria conv.

procesa_con    PROC
               JC    con_exit          ; sistema inicializ†ndose
               MOV   BX,16             ; bytes por p†rrafo
               DIV   BX                ; AX = segmento, DX = offset
               ADD   AX,CS:mem_handle  ; segmento de inicio datos
               MOV   DS,AX
               MOV   SI,DX             ; DS:SI inicio de datos
               DEC   BP                ; y ES:DI destino del buffer
               JZ    con_general       ; es lectura
               XCHG  SI,DI             ; escritura: intercambiar
               XPUSH <DS,ES>
               XPOP  <DS,ES>
con_general:   CLD
               CMP   CS:cpu386,ON
               JE    con_tr32bit
               REP   MOVSW
               JMP   con_tr_fin
con_tr32bit:   SHR   CX,1              ; nß palabras de 32 bit a mover
               JCXZ  con_trdo          ; evitar desgracia
               .386
               PUSHAD
               XOR   EAX,EAX           ; asegurar no violaci¢n
               DEC   AX                ; de segmento-64K
               AND   ECX,EAX           ; EAX = 0FFFFh
               AND   ESI,EAX
               AND   EDI,EAX
               REP   MOVSD             ; transferencia ultrarr†pida
con_trdo:      POPAD                   ; POPAD falla en muchos 386
               NOP                     ; arreglar fallo de POPAD
               .8086
con_tr_fin:    MOV   AX,100h           ; todo fue bien, por supuesto
con_exit:      RET
procesa_con    ENDP

tam_proc_con   EQU   $-OFFSET procesa_con   ; tama§o de esta rutina


; ************ Datos no residentes para la instalaci¢n

ON             EQU   1            ; constantes booleanas
OFF            EQU   0

CONFIG         EQU   1            ; TURBODSK ejecutado desde el CONFIG
AUTOEXEC       EQU   2            ; TURBODSK se ejecuta desde el DOS

emm_id         DB    "EMMXXXX0"   ; identificaci¢n del controlador EMS

nombre_tdsk    DB    "TDSK U: "   ; para nombrar handle EMS y el MCB

modo           DB    ?            ; CONFIG/AUTOEXEC
dosver         DW    ?            ; versi¢n del DOS
top_ram        DW    0            ; segmento m†s alto de la RAM
segm_psp       DW    0            ; segmento del PSP
segm_tdsk      DW    0            ; segmento donde reside TURBODSK
segm_reubicar  DW    0            ; segmento donde reubicar TURBODSK
ems4           DB    OFF          ; a ON si EMS versi¢n 4.0+
cpu286         DB    OFF          ; a ON si 286 ¢ superior
idioma         DB    0            ; selecciona el n£mero de idioma (1..N)
idioma_seps    DW    ",."         ; separadores de millares/decimales

param_unidad   DB    0            ; letra de unidad (si indicada)
param_tdiscof  DB    OFF          ; a ON si se define tama§o de disco
param_tdisco   DW    0            ; tama§o de disco (si se define)
param_tsect    DW    0            ; tama§o de sector (si se define)
param_tdir     DW    0            ; n£mero de entradas (si se define)
param_tcluster DW    0            ; tama§o de cluster (si se define)
param_a        DB    OFF          ; a ON si indicado par†metro /A o /X
param_e        DB    OFF          ; a ON si indicado par†metro /E
param_b        DB    OFF          ; a ON si indicado par†metro /B
param_c        DB    OFF          ; a ON si indicado par†metro /C
param_h        DB    OFF          ; a ON si indicado par†metro /? o /H
param_m        DB    OFF          ; a ON si indicado par†metro /M
param_i        DB    OFF          ; Y ON si indicado par†metro /I
param_f        DW    1            ; nß de FATs (1-2): par†metro /F=

codigo_tfno    DW    ?            ; valor de /I= si se indica
tdisco         DW    ?            ; tama§o de disco (Kb)
ultclus        DW    ?            ; n£mero m†s alto de cluster
tamcluster     DW    ?            ; tama§o de cluster (bytes)
sdir           DW    ?            ; sectores para directorio raiz
xms_kb         DW    0            ; Kb de memoria XMS libres
ems_kb         DW    0            ; Kb de memoria EMS libres
con_kb         DW    0            ; Kb de memoria convencional libres

sector_cero    LABEL BYTE
               JMP   SHORT botar
               NOP
               DB    "TDSK 2.3"   ; identificaci¢n del sistema
tsect          DW    512          ; tama§o de sector por defecto
tcluster       DB    ?            ; sectores por cluster
               DW    1            ; sectores reservados
nfats          DB    ?            ; n£mero de FAT's
tdir           DW    ?            ; n£mero de entradas al dir. raiz
numsect        DW    ?            ; nß sectores del disco (<=32Mb)
               DB    media        ; descriptor de medio
sfat           DW    ?            ; sectores por FAT
               DW    1, 1         ; sectores por pista / cabezas
               DD    0            ; sectores ocultos
               DD    0            ; nß total de sectores (si > 32Mb)
               DB    7 DUP (0)    ; 7 bytes reservados
botar:         DB    0EAh         ; c¢digo de JMP FAR...
               DW    0,0FFFFh     ; ...FFFF:0000 (programa BOOT)
               DB    "(C)1992 CiriSOFT"; resto de primeros 64 bytes
               DB    ". Grupo Universi"
               DB    "tario de Inform†"
               DB    "tica (GUI) - Val"
               DB    "ladolid (Espa§a)"; resto de primeros 128 bytes

dir_raiz       DB    "TURBODSK   "; Directorio raiz: primera entrada
               DB    8            ; etiqueta de vol£men
               DB    10 DUP (0)   ; reservado
               DW    ?            ; hora (inicializado al formatear)
               DW    ?            ; fecha
               DW    0,0,0        ; £ltimos bytes (hasta 32)

; ------------ Areas de datos para informaci¢n del disco virtual

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

; ------------ Mensaje de no formateado

info_ins       DB    10,1,10,"TURBODSK 2.3 - Unidad ",255
               DB    10,1,10,"TURBODSK 2.3 - Laufwerk ",255
               DB    10,1,10,"TURBODSK 2.3 - Drive ",0

info_ins2      DB    ": sin formatear.",10,1,14,255
               DB    ": nicht formatiert.",10,1,14,255
               DB    ": unformatted.",10,1,14,0

; ------------ Cuadro de informaci¢n

colA EQU 11+1*16  ; color del recuadro y los mensajes
colB EQU 15+1*16  ; color de los par†metros de operaci¢n del disco
colC EQU 15+0*16  ; color de lo que rodea a la ventana
colD EQU 10+1*16  ; color de ÆTURBODSKØ

info_txt       DB    10,2,12,3,1,colA,"⁄",2,27,"ƒ¬",2,25,"ƒø",1,colC
               DB    10,2,12,3,1,colA,"≥ ",1,colD,"TURBODSK 2.3",1,colA
               DB    " - Unidad ",1,colB
               DB    255

               DB    10,2,10,3,1,colA,"⁄",2,28,"ƒ¬",2,28,"ƒø",1,colC
               DB    10,2,10,3,1,colA,"≥ ",1,colD,"TURBODSK 2.3",1,colA
               DB    " - Laufwerk ",1,colB
               DB    255

               DB    10,2,12,3,1,colA,"⁄",2,26,"ƒ¬",2,25,"ƒø",1,colC
               DB    10,2,12,3,1,colA,"≥ ",1,colD,"TURBODSK 2.3",1,colA
               DB    " - Drive ",1,colB
               DB    0

inf_tsect      DB    ":",1,colA,"  ≥ Tama§o de sector:",1,colB," ",255
               DB    ":",1,colA," ≥ Sektorgrî·e:",2,8," ",1,colB," ",255
               DB    ":",1,colA,"  ≥ Sector size:",2,5," ",1,colB," ",0

inf_tdir       DB    " ",1,colA,"≥",1,colC,10,2,12,3
               DB    1,colA,"√",2,27,"ƒ¥ Nß entradas raiz:",1,colB," "
               DB    255

               DB    " ",1,colA,"≥",1,colC,10,2,10,3
               DB    1,colA,"√",2,28,"ƒ¥ VerzeichniseintrÑge:",1,colB, " "
               DB    255

               DB    " ",1,colA,"≥",1,colC,10,2,12,3
               DB    1,colA,"√",2,26,"ƒ¥ Root entries:",2,4," ",1,colB," "
               DB    0

inf_tdisco     DB    " ",1,colA,"≥",1,colC,10
               DB    2,12,3,1,colA,"≥ Tama§o:  ",1,colB," "
               DB    255

               DB    " ",1,colA,"≥",1,colC,10
               DB    2,10,3,1,colA,"≥ Grî·e:",2,10," ",1,colB," "
               DB    255

               DB    " ",1,colA,"≥",1,colC,10
               DB    2,12,3,1,colA,"≥ Size:",2,4," ",1,colB," "
               DB    0

inf_tcluster   DB    " Kbytes    ",1,colA,"≥ Sectores/cluster:",1,colB," "
               DB    255
               DB    " KB  ",1,colA,"≥ Sektoren/Cluster:",2,3," ",1,colB," "
               DB    255
               DB    " Kbytes   ",1,colA,"≥ Sectors/cluster: ",1,colB," "
               DB    0

inf_mem        DB    " ",1,colA,"≥",1,colC,10
               DB    2,12,3,1,colA,"≥ Memoria:  ",1,colB
               DB    255

               DB    " ",1,colA,"≥",1,colC,10
               DB    2,10,3,1,colA,"≥ Speicher: ",1,colB
               DB    255

               DB    " ",1,colA,"≥",1,colC,10
               DB    2,12,3,1,colA,"≥ Memory:   ",1,colB
               DB    0

inf_nclusters  DB    " ",1,colA,"≥",1,colB," ",255
               DB    "  ",1,colA,"≥",1,colB," ",255
               DB    1,colA,"≥",1,colB," ",0

inf_tfat       DB    1,colA," clusters (",1,colB,"FAT",255
               DB    1,colA," Cluster  (",1,colB,"FAT",255
               DB    1,colA," clusters (",1,colB,"FAT",0

inf_tfat12     DB    "12",0
inf_tfat16     DB    "16",0

inf_final      DB    1,colA,")  ",1,colA,"≥",1,colC,10,2,12,3
               DB    1,colA,"¿",2,27,"ƒ¡",2,25,"ƒŸ",1,colC,10
               DB    255

               DB    1,colA,")",2,5," ",1,colA,"≥",1,colC,10
               DB    2,10,3,1,colA,"¿",2,28,"ƒ¡",2,28,"ƒŸ",1,colC,10
               DB    255

               DB    1,colA,")  ",1,colA,"≥",1,colC,10,2,12,3
               DB    1,colA,"¿",2,26,"ƒ¡",2,25,"ƒŸ",1,colC,10
               DB    0

inf_mem_xms    DB    "Extendida (XMS)",255
               DB    "Erweitert (XMS)",255
               DB    "Extended (XMS) ",0

inf_mem_ems    DB    "Expandida (EMS)",255
               DB    "Expansion (EMS)",255
               DB    "Expanded (EMS) ",0

inf_mem_sup    DB    " Superior (UMB) ",255
               DB    "Oberer Sp. (UMB)",255
               DB    "   Upper (UMB)  ",0

inf_mem_con    DB    "  Convencional ",255
               DB    "  Konventionell",255
               DB    "  Conventional ",0

; ------------ Errores ÆlevesØ

ERROR0         EQU   1
ERROR1         EQU   2
ERROR2         EQU   4
ERROR3         EQU   8         ; TURBODSK es muy flexible y se instala
ERROR4         EQU   16        ; casi de cualquier forma, aunque a
ERROR5         EQU   32        ; veces no se reserve memoria y sea
ERROR6         EQU   64        ; necesario volver a ejecutarlo despuÇs
ERROR7         EQU   128       ; desde el DOS para ÆformatearloØ.
ERROR8         EQU   256
ERROR9         EQU   512
ERROR10        EQU   1024
ERROR11        EQU   2048
ERROR12        EQU   4096
ERROR13        EQU   8192
ERROR14        EQU   16384
ERROR15        EQU   32768

lista_err      DW    0    ; palabra que indica los mensajes a imprimir

mens_cabec     DB    2,8,3,0

tabla_mens     DW    m0,m1,m2,m3,m4,m5,m6,m7
               DW    m8,m9,m10,m11,m12,m13,m14,m15

cab_adv_txt    DB    10,2,8,3,1,12
               DB    "Advertencias y/o errores de TURBODSK:",2,27," ",10,1,10
               DB    255

               DB    10,2,8,3,1,12
               DB    "Warnungen und Fehlermeldungen von TURBODSK:",2,27," ",10,1,10
               DB    255

               DB    10,2,8,3,1,12
               DB    "Warnings and errors of TURBODSK:",2,32," ",10,1,10
               DB    0

m0             DB    "- Error de sintaxis o par†metro fuera de rango.  No se define el",10,2,8,3
               DB    "  disco virtual ahora o no se modifica el que estaba definido.  ",10
               DB    255

               DB    "- Syntaxfehler oder ungÅltiger Parameter. Die RAM-Disk ist zur  ",10,2,8,3
               DB    "  Zeit nicht definiert bzw. wurde nicht modifiziert.",10
               DB    255

               DB    "- Syntax error and/or parameter out of range. The Ramdisk is not",10,2,8,3
               DB    "  defined now or the previous one is not modified.",2,14," ",10
               DB    0

m1             DB    "- El par†metro /C o la letra de unidad s¢lo han de emplearse",2,4," ",10,2,8,3
               DB    "  desde la l°nea de comandos o el AUTOEXEC (les ignorarÇ).",2,6," ",10
               DB    255

               DB    "- Parameter /C und Laufwerksbuchstaben kînnen nur bei Aufrufen  ",2,4," ",10,2,8,3
               DB    "  von TURBODSK in der AUTOEXEC verwendet werden.                ",2,6," ",10
               DB    255

               DB    "- The /C parameter and the driver letter only can be used when  ",10,2,8,3
               DB    "  executing TURBODSK in command line or AUTOEXEC (now, ignored).",10
               DB    0

m2             DB    "- Para poder emplear memoria expandida hay que incluir la opci¢n",10,2,8,3
               DB    "  /A en CONFIG.SYS, con objeto de dejar espacio para las rutinas",10,2,8,3
               DB    "  de control EMS: la memoria ocupada crecer† de 432 a 608 bytes.",10
               DB    255

               DB    "- Zur Verwendung von EMS mÅssen Sie Option /A in CONFIG.SYS     ",10,2,8,3
               DB    "  setzen, um Speicher fÅr die EMS-UnterstÅtzung zu reservieren. ",10,2,8,3
               DB    "  Dadurch erhîht sich der Speicherbedarf von 432 auf 608 Bytes. ",10
               DB    255

               DB    "- In order to use expanded memory you must include the /A option",10,2,8,3
               DB    "  in CONFIG.SYS, needed to reserve too space for the EMS support",10,2,8,3
               DB    "  routines: the memory used will increase from 432 to 608 bytes.",10
               DB    0

m3             DB    "- El tama§o de sector es mayor que el definido en cualquier otro",10,2,8,3
               DB    "  controlador de dispositivo: ind°quese ese tama§o en CONFIG.SYS",10,2,8,3
               DB    "  para que el DOS ajuste sus buffers (≠m†s consumo de memoria!).",10
               DB    255

               DB    "- Die Sektorengrî·e ist grî·er als in allen anderen Treibern;   ",10,2,8,3
               DB    "  Sie mÅssen die Sektorgrî·e in CONFIG.SYS festlegen, da DOS die",10,2,8,3
               DB    "  Puffergrî·e anpassen mu· (hîherer Speicherverbrauch)          ",10
               DB    255

               DB    "- Sector size is greater than any other defined  by  any  device",10,2,8,3
               DB    "  driver loaded: you must indicate the sector size in CONFIG.SYS",10,2,8,3
               DB    "  because DOS need adjust buffers length (more memory spent!).  ",10
               DB    0

m4             DB    "- La cantidad de memoria solicitada no existe, se ha rebajado.  ",10
               DB    255

               DB    "- Die gewÅnschte Speichergrî·e existiert nicht und wurde reduziert.",10
               DB    255

               DB    "- The amount of memory requested does not exist: size reduced.  ",10
               DB    0

m5             DB    "- No hay memoria XMS/EMS disponible: no la reservo; ejecute TDSK",10,2,8,3
               DB    "  de nuevo desde el DOS para utilizar memoria convencional.",2,5," ",10
               DB    255

               DB    "- Kein XMS/EMS verfÅgbar: FÅhren Sie TDSK nochmals von der      ",10,2,8,3
               DB    "  Kommandozeile aus und benutzen Sie konventionellen Speicher.  ",2,5," ",10
               DB    255

               DB    "- There is not XMS/EMS memory available: execute TDSK again from",10,2,8,3
               DB    "  DOS command line or AUTOEXEC and use conventional memory.",2,5," ",10
               DB    0

m6             DB    "- No existe memoria XMS: pruebe a indicar EMS en su lugar (/A)  ",10
               DB    255

               DB    "- Kein XMS verfÅgbar: Versuchen Sie, EMS zu verwenden (/A).     ",10
               DB    255

               DB    "- There is not XMS memory available: try to request EMS (/A).   ",10
               DB    0

m7             DB    "- No existe memoria EMS: pruebe a indicar XMS en su lugar (/E)  ",10
               DB    255

               DB    "- Kein EMS verfÅgbar: Versuchen Sie, XMS zu verwenden (/E).     ",10
               DB    255

               DB    "- There is not EMS memory available: try to request XMS (/E).   ",10
               DB    0

m8             DB    "- Fallo del controlador XMS: imposible usar memoria extendida.  ",10
               DB    255

               DB    "- Fehler des XMS-Managers: Verwendung von XMS unmîglich.        ",10
               DB    255

               DB    "- XMS controller failure: imposible to use extended memory.",2,5," ",10
               DB    0

m9             DB    "- Fallo del controlador EMS: imposible usar memoria expandida.  ",10
               DB    255

               DB    "- Fehler des EMS-Managers: Verwendung von EMS unmîglich.        ",10
               DB    255

               DB    "- EMS controller failure: imposible to use expanded memory.",2,5," ",10
               DB    0

m10            DB    "- No existe suficiente memoria convencional para TURBODSK.",2,6," ",10
               DB    255

               DB    "- Nicht genÅgend konventioneller Speicher fÅr TURBODSK verfÅgbar.",2,6," ",10
               DB    255

               DB    "- There is not sufficient conventional memory for TURBODSK.",2,5," ",10
               DB    0

m11            DB    "- Tama§o de sector incorrecto: lo establezco por defecto.",2,7," ",10
               DB    255

               DB    "- UngÅltige Sektorengrî·e angegeben, Vorgabewert wird verwendet.",2,7," ",10
               DB    255

               DB    "- Incorrect sector size indicated: default values assumed.",2,6," ",10
               DB    0

m12            DB    "- N£mero de entradas incorrecto: lo establezco por defecto.",2,5," ",10
               DB    255

               DB    "- UngÅltige Anz. von VerzeichnisantrÑgen, Vorgabewert wird verwendet.",2,5," ",10
               DB    255

               DB    "- Incorrect number of root entries: default value assumed.",2,6," ",10
               DB    0

m13            DB    "- Tama§o de cluster incorrecto: lo establezco por defecto.",2,6," ",10
               DB    255

               DB    "- UngÅltige Clustergrî·e angegeben, Vorgabewert wird verwendet.",2,6," ",10
               DB    255

               DB    "- Incorrect cluster size indicated: default value assumed.",2,6," ",10
               DB    0

m14            DB    "- FATAL: fallo al liberar la memoria que ocupaba el disco.",2,6," ",10
               DB    255

               DB    "- ACHTUNG: Freigabe des belegten Speichers gescheitert.",2,6," ",10
               DB    255

               DB    "- FATAL: imposible to free memory alocated by TURBODSK.",2,9," ",10
               DB    0

m15            DB    "- Para discos de m†s de 32 Mb, hace falta un tama§o de sector de",10,2,8,3
               DB    "  al menos 1024 bytes.",2,42," ",10
               DB    255

               DB    "- Laufwerke mit mehr als 32 MB erfordern eine Sektorgrî·e",10,2,8,3
               DB    "  von mindestens 1024 Bytes.",2,42," ",10
               DB    255

               DB    "- In drives over 32 Mb, sector size must be at least 1024 bytes.",10
               DB    0

; ------------ Errores ÆgravesØ (se imprime s¢lo el m†s importante)

err_grave      DW    0   ; tipo de error grave a imprimir

err_grave_gen  DB    10,1,10,"TURBODSK 2.3",10,1,12,0

e0             DB    "  - Este disco virtual requiere DOS 2.0 o superior.",10,255
               DB    "  - Diese RAM-Disk erfordert mindestens DOS 2.0.",10,255
               DB    "  - This Ram Disk needs at least DOS 2.0 or above.",10,0

e1             DB    "  - Instale primero TURBODSK desde CONFIG.SYS (con DEVICE).",10
               DB    "  - Puede solicitar ayuda con TDSK /?",10
               DB    255

               DB    "  - Sie mÅssen zuerst TURBODSK von der CONFIG.SYS aus installieren",10
               DB    "    (mit DEVICE). Hilfe erhalten Sie durch Eingabe von TDSK /?",10
               DB    255

               DB    "  - You must install first TURBODSK from CONFIG.SYS (using DEVICE).",10
               DB    "  - Help is available with TDSK /?",10
               DB    0

e2             DB "  - La unidad indicada no es un dispositivo TURBODSK 2.3",10,255
               DB "  - Angegebener Laufwerksbuchstabe bezeichnet keinen Treiber von TURBODSK.", 10,255
               DB "  - Drive letter indicated does not is a TURBODSK 2.3 device.",10,0

e3             DB    "  - No pueden modificarse las caracter°sticas de operaci¢n de",10
               DB    "    TURBODSK dentro de WINDOWS. Config£relo con anterioridad.",10
               DB    255

               DB    "  - TURBODSK kann nicht innerhalb einer WINDOWS-Sitzung modifiziert werden.",10
               DB    "    Sie mÅssen die Einstellungen vorher durchfÅhren.",10
               DB    255

               DB    "  - Operational characteristics of disk can not be altered inside",10,2,4
               DB    " a WINDOWS session. You must configure TURBODSK before.",10
               DB    0

; ------------ Ayuda

colorA   EQU 15+4*16+128  ; color de ÆTURBODSKØ
colorAm  EQU 14+1*16      ; color del marco de fondo de ÆTURBODSKØ
colorB   EQU 13+1*16      ; color de la fecha
colorC   EQU 10+1*16      ; color de sintaxis y par†metros
colorD   EQU 15+1*16      ; color principal del texto
colorDm  EQU 11+1*16      ; color del marco de fondo
colorDmx EQU 11+0*16      ; color de la esquina del marco
colorE   EQU 11+1*16      ; color del nombre del autor
colorF   EQU 14+1*16      ; color para llamar la atenci¢n
colorG   EQU 12+1*16      ; color para la direcci¢n de mail
colorH   EQU  9+1*16      ; color para mensaje de dominio p£blico

ayuda_txt      LABEL BYTE
               DB    10,3,1,colorDm,"  ",1,colorA," TURBODSK 2.3 ",1,colorAm,"‹"
               DB    1,colorB,2,51," 12/12/95 ",1,colorDmx,"‹",10
               DB    3,1,colorE,"   ",1,colorAm,2,14,"ﬂ",1,colorE
               DB    "  (C) 1995 Ciriaco Garc°a de Celis. ",1,colorG
               DB    "(Mail: ciri@gui.uva.es).",1,colorDm,"€",10
               DB    3,1,colorE," (C) Grupo Universitario de Inform†tica. "
               DB    "Apartado 6062, Valladolid (Espa§a). ",1,colorDm,"€",10
               DB    3,1,colorH,2,18," ","* * *  Programa de Dominio P£blico  * * *"
               DB    2,18," ",1,colorDm,"€",10
               DB    3,1,colorD,"   Bienvenido al disco virtual ",1,colorF,"m†s r†pido"
               DB    1,colorD,", con soporte de memoria EMS, XMS y ",1,colorDm,"€",10
               DB    3,1,colorD," convencional; redimensionable, f†cil de usar. En DOS "
               DB    "5 ocupa 432-608 bytes. ",1,colorDm,"€",10
               DB    3,1,colorC,2,77," ",1,colorDm,"€",10
               DB    3,1,colorC," DEVICE=TDSK.EXE [tama§o [tsector "
               DB    "[nfich [scluster]]]] [/E] [/A|X] [/C] [/M] ",1,colorDm,"€",10
               DB    3,1,colorC,2,77," ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," El tama§o debe de estar en "
               DB    "el rango 8 - 65534 Kb; son v†lidos sectores de ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," 32 a 2048 bytes (en potencias de dos, aunque alg£n "
               DB    "sistema s¢lo los soporta ",1,colorDm,"€",10
               DB    3,1,colorD," de 128 a 512). El n£mero de ficheros del directorio "
               DB    "raiz debe estar entre 1 ",1,colorDm,"€",10
               DB    3,1,colorD," y 65534 y el de sectores por cluster entre 1 y 255 ("
               DB    "en alg£n sistema han de ",1,colorDm,"€",10
               DB    3,1,colorD," ser potencia de dos). Seg£n el tama§o se ajustar† "
               DB    "lo dem†s autom†ticamente. ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," Se puede indicar ",1,colorC
               DB    "/E",1,colorD," para emplear memoria extendida XMS, y ",1,colorC
               DB    "/A",1,colorD," o ",1,colorC,"/X",1,colorD," para la ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," expandida EMS; aunque por defecto, TURBODSK utilizar†"
               DB    " autom†ticamente estas ",1,colorDm,"€",10
               DB    3,1,colorD," memorias si puede. Con la opci¢n ",1,colorC,"/C"
               DB    1,colorD," se pide el uso de memoria convencional. ",1,colorDm
               DB    "€",10
               DB    3,1,colorD,32,1,colorF,"˛",1,colorD," Tras ser instalado, se puede"
               DB    " ejecutar desde el DOS para cambiar el tama§o ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," del disco (perdiÇndose los datos almacenados):  con "
               DB    "un tama§o 0 se anula el ",1,colorDm,"€",10
               DB    3,1,colorD," disco por completo, liber†ndose la memoria. "
               DB    "Utilizando memoria convencional ",1,colorDm,"€",10
               DB    3,1,colorD," es ",1,colorF,"MUY",1,colorD," conveniente anular el "
               DB    "disco previo antes de modificar su tama§o. Con ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," m†s de un disco presente se pueden distinguir "
               DB    "indicando la letra de unidad. ",1,colorDm,"€",10
               DB    3,1,1*16,"‹",1,colorDm,2,76,"‹€",10

               DB    255

               DB    10,3,1,colorDm,"  ",1,colorA," TURBODSK 2.3 ",1,colorAm,"‹"
               DB    1,colorB,2,52," 12/12/95 ",1,colorDmx,"‹",10
               DB    3,1,colorE,"   ",1,colorAm,2,14,"ﬂ",1,colorE
               DB    "  (C) 1995 Ciriaco Garc°a de Celis. ",1,colorG
               DB    "(Mail: ciri@gui.uva.es). ",1,colorDm,"€",10
               DB    3,1,colorE," (C) Grupo Universitario de Inform†tica. "
               DB    "Apartado 6062, Valladolid (Spanien). ",1,colorDm,"€",10
               DB    3,1,colorC,2,78," ",1,colorDm,"€",10
               DB    3,1,colorD,"   Willkommen bei der ",1,colorF,"schnelleren"
               DB    1,colorD,"  RAM-Disk,  die auch EMS-, XMS- und konven- ",1,colorDm,"€",10
               DB    3,1,colorD," tionellen Speicher unterstÅtzt;  grî·enverstellbar,"
               DB    "  einfache  Bedienung wie ",1,colorDm,"€",10
               DB    3,1,colorD," bei DOS-RAM-Disks, erfordert maximal 608 Bytes. "
               DB    1,colorH," Das Programm ist Freeware!. ",1,colorDm,"€",10
               DB    3,1,colorC,2,78," ",1,colorDm,"€",10
               DB    3,1,colorC,"  DEVICE=TDSK.EXE [Grî·e [Sekt. [Dateien [Cluster]]]]"
               DB    " [/E] [/A|X] [/C] [/M]   ",1,colorDm,"€",10
               DB    3,1,colorC,2,78," ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," ZulÑssig fÅr Grî·e: 8-65534 KB;"
               DB    " zulÑssig fÅr Sektoren: 32-2048 Bytes (2er- ",1,colorDm,"€",10
               DB    3,1,colorD," Potenz),  obwohl einige DOS-Versionen nur 128,"
               DB    "  256  und  512  unterstÅtzen. ",1,colorDm,"€",10
               DB    3,1,colorD, " ZulÑssige Anzahl der VerzeichniseintrÑge: "
               DB    "1-65534,  Sektoren/Cluster:  1-255 ",1,colorDm,"€",10
               DB    3,1,colorD," (einige Systeme erforden 2er-Potenzen)."
               DB    "  Nur die Grî·enangabe ist notwendig. ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," Bei ",1,colorC, "/E",1,colorD
               DB    " wird XMS, bei ",1,colorC, "/A",1,colorD," oder ",1,colorC,"/X",1,colorD
               DB    " wird EMS,  und bei ",1,colorC, "/C",1,colorD," wird konventioneller ",1,colorDm
               DB    "€",10,3,1,colorD, " Speicher benutzt. Normalerweise versucht TURBODSK,"
               DB    " XMS oder EMS zu benutzen. ",1,colorDm,"€",10
               DB    3,1,colorD,32,1,colorF,"˛",1,colorD," Nach der Installation in"
               DB    " CONFIG.SYS sollte  TURBODSK spÑter nochmal ausge- ",1,colorDm,"€",10
               DB    3,1,colorD," fÅhrt werden,  um die Grî·e zu Ñndern (den"
               DB    " Speicherverbrauch);  dadurch wird ",1,colorDm,"€",10
               DB    3,1,colorD," der Inhalt der  RAM-Disk  gelîscht. Durch Grî·e 0 wird"
               DB    " die RAM-Disk komplett ",1,colorDm,"€",10
               DB    3,1,colorD," gelîscht,  bei Verwendung von konventionellem Speicher"
               DB    " kann eine Annulierung ",1,colorDm,"€",10
               DB    3,1,colorF," VOR",1,colorD," der Grî·enverÑnderung sinnvoll sein. Wenn mehrere"
               DB    " TURBODSK's installiert ",1,colorDm,"€",10
               DB    3,1,colorD," sind, kînnen diese durch ihren Laufwerksbuchstaben"
               DB    " angesteuert werden. ",2,6," ",1,colorDm,"€",10
               DB    3,1,1*16,"‹",1,colorDm,2,77,"‹€",10

               DB    255

               DB    10,3,1,colorDm,"  ",1,colorA," TURBODSK 2.3 ",1,colorAm,"‹"
               DB    1,colorB,2,51," 12/12/95 ",1,colorDmx,"‹",10
               DB    3,1,colorE,"   ",1,colorAm,2,14,"ﬂ",1,colorE
               DB    "  (C) 1995 Ciriaco Garcia de Celis. ",1,colorG
               DB    "(Mail: ciri@gui.uva.es).",1,colorDm,"€",10
               DB    3,1,colorE,"  (C) Grupo Universitario de Inform†tica. "
               DB    "Apartado 6062, Valladolid (Spain). ",1,colorDm,"€",10
               DB    3,1,colorC,2,77," ",1,colorDm,"€",10
               DB    3,1,colorD,"   Welcome to the ",1,colorF,"faster",1,colorD
               DB    " RAM disk!,  which includes support of both EMS, XMS "
               DB    1,colorDm,"€",10
               DB    3,1,colorD," and conventional memory.  Full resizeable,  easy to "
               DB    "use like DOS RAM disks, ",1,colorDm,"€",10
               DB    3,1,colorD," in DOS 5.0 it takes only about 432-608 bytes. "
               DB    1,colorH,"This program is freeware!.",2,4," ",1,colorDm,"€",10
               DB    3,1,colorC,2,77," ",1,colorDm,"€",10
               DB    3,1,colorC," DEVICE=TDSK.EXE [size [s_sector [files [s_cluster]]]]"
               DB    " [/E] [/A|X] [/C] [/M] ",1,colorDm,"€",10
               DB    3,1,colorC,2,77," ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," Size must be in the range "
               DB    "8 - 65534 Kb; are valid sectors from 32 to 2048 ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," bytes (in power of 2), though some DOS versions only "
               DB    "support 128, 256 & 512 ",1,colorDm,"€",10
               DB    3,1,colorD," bytes. Files of root may be 1 to 65534 and sectors "
               DB    "by cluster can vary from ",1,colorDm,"€",10
               DB    3,1,colorD," 1 to 255 (some systems need a power of 2). Only the "
               DB    "size is necessary.",2,6," ",1,colorDm,"€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorC," /E",1,colorD," force the "
               DB    "use of XMS memory, ",1,colorC,"/A",1,colorD," and ",1,colorC
               DB    "/X",1,colorD," indicates the use of EMS memory ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," and ",1,colorC,"/C",1,colorD," the conventional. By "
               DB    "default, TURBODSK try to use XMS or EMS memory. ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," ",1,colorF,"˛",1,colorD," After been installed in "
               DB    "CONFIG.SYS, TURBODSK must be executed in AUTOEXEC ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," or command line in order to vary the disk size (the "
               DB    "amount of memory used); ",1,colorDm,"€",10
               DB    3,1,colorD," this operation erase the disk contents.  A size 0 "
               DB    "can be used to complitely ",1,colorDm,"€",10
               DB    3,1,colorD," anulation of the disk freezen the memory: when using "
               DB    "conventional memory it ",1,colorDm,"€",10
               DB    3,1,colorD," is useful to annulate the disk ",1,colorF,"BEFORE"
               DB    1,colorD," resizing. When more than one TURBODSK ",1,colorDm
               DB    "€",10
               DB    3,1,colorD," is installed, they can be identified using in "
               DB    "adition the drive letter.",2,5," ",1,colorDm,"€",10
               DB    3,1,1*16,"‹",1,colorDm,2,76,"‹€",10

               DB    0

tam_a_trabajo  EQU   4096              ; tama§o del mayor sector soportado
                                       ; por TURBODSK o del mayor texto
                                       ; a imprimir
area_trabajo   EQU   $
               DB    tam_a_trabajo DUP (?)

_PRINCIPAL     ENDS

tam_pila       EQU   2048              ; 2 Kb de pila son suficientes

_PILA          SEGMENT STACK 'STACK'
               DB    tam_pila DUP (?)
_PILA          ENDS

               END   main
