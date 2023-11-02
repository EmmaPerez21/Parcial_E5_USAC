;PROBLEMA #4 SEGUNDO EXAMEN PARCIAL DE ELECTRONICA 5 FACULTAD DE INGENIERIA SEGUNDO SEMESTRE 2023 UNIVERSIDAD DE SAN CARLOS DE GUATEMALA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;	Determine el volumen de un cono, cubo y esfera, según lo escoja el usuario. Debe
;   de preguntar determinar primero, el volumen que se desea averiguar, y luego
;   ingresar los valores para realizar el cálculo


; Programa para calcular el volumen de un cono, cubo o esfera

; El resultado final siempre se va a guardar en S7
	
	AREA codigo, CODE, READONLY, ALIGN=2
	THUMB
	EXPORT Start

Start
    ; Registro de menu, para seleccionar cono(1), cubo(2) o esfera(3)
    LDR R0, =1 ;------------------------------------------------------
	
	; Ingreso de datos de cono (altura, radio)
	VLDR.F32 S1, =3.5	; radio ---------------------------
    VLDR.F32 S2, =9.8 ; altura --------------------------
	VLDR.F32 S3, = 0.333333333	;1/3 NO MOVER
	VLDR.F32 S4, = 3.141592654 ; PI NO MOVER
	
	; Ingreso de datos de cubo (lado)
;	VLDR.F32 S1, = 8.9	; lado --------------------------------------
	
	; Ingreso de datos de esfera (radio)
;	 VLDR.F32 S1, = 12.5		;Valor de radio ---------------------------------
;	 VLDR.F32 S3, = 1.333333333	;4/3 NO MOVER
;	 VLDR.F32 S4, = 3.141592654 ; PI NO MOVER
	
    ; Ordenar los registros de forma descendente
    BL seleccion


seleccion
	CMP R0, #1
	BEQ Cono
	
	CMP R0, #2
	BEQ Cubo
	
	CMP R0, #3
	BEQ Esfera

Cono
	VMUL.F32 S9, S3, S4	; S9 = 1/3 * pi
	VMUL.F32 S8, S1, S1	; S8 = r^2
	VMUL.F32 S8, S8, S2	; S8 = S8 * h = r^2 * h
	VMUL.F32 S7, S9, S8	; S7 = S8 * S9 = 1/3 * pi * r^2 * h
	BX LR

Cubo
	VMUL.F32 S7, S1, S1	; S7 = lado^2
	VMUL.F32 S7, S7, S1	; S7 = S7 * lado = lado^3
	BX LR
	
Esfera
	VMUL.F32 S7, S3, S4	; S7 = 4/3 * pi
	VMUL.F32 S8, S1, S1	; S8 = radio^2
	VMUL.F32 S8, S8, S1	; S8 = S8 * radio = radio ^3
	VMUL.F32 S7, S7, S8	; S7 = S7 * S8 = 4/3 * pi * radio^3
	BX LR

    ALIGN
    END