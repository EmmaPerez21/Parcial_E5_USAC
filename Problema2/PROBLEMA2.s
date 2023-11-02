;PROBLEMA #7 SEGUNDO EXAMEN PARCIAL DE ELECTRONICA 5 FACULTAD DE INGENIERIA SEGUNDO SEMESTRE 2023 UNIVERSIDAD DE SAN CARLOS DE GUATEMALA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Ingresar 15 números de 2 cifras, y ordenarlos descendentemente
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Inicializacion del codigo
	AREA Codigo,CODE, READONLY, ALIGN =2
	THUMB
	EXPORT Start

Start
    ; Lista de registros para que el usuario coloque la lista de numeros que desee que se ordenen de forma descendente.
    VLDR.F32 S0, =99.0   
    VLDR.F32 S1, =30.0   
    VLDR.F32 S2, =87.0   
    VLDR.F32 S3, =19.0   
    VLDR.F32 S4, =39.0   
	VLDR.F32 S5, =63.0
	VLDR.F32 S6, =11.0
	VLDR.F32 S7, =13.0
	VLDR.F32 S8, =59.0
	VLDR.F32 S9, =70.0
	VLDR.F32 S10, =44.0
	VLDR.F32 S11, =15.0
	VLDR.F32 S12, =21.0
	VLDR.F32 S13, =41.0
	VLDR.F32 S14, =50.0

    ; Inicio del bucle externo
Loop
    ; Inicio del bucle interno 
    VMOV.F32 S20, S0    ; Carga S0 en S6 para comparaciones
    VMOV.F32 S21, S1    ; Carga S1 en S7 para comparaciones
	
    ; Compara S0 y S1 (S15 y S16)
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
	
    ; Si S0 < S1  intercambia S0 y S1
    IT LT
    VMOVLT.F32 S20, S0  
    VMOVLT.F32 S0, S1  
    VMOVLT.F32 S1, S20  

    ; Repite el proceso para los demás pares de registros (S1-S2, S2-S3, S3-S4....)
	
	;S1-S2
    VMOV.F32 S20, S1
    VMOV.F32 S21, S2
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S1
    VMOVLT.F32 S1, S2
    VMOVLT.F32 S2, S20
	
	;S2-S3
	VMOV.F32 S20, S2
    VMOV.F32 S21, S3
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S2
    VMOVLT.F32 S2, S3
    VMOVLT.F32 S3, S20
	
	;S3-S4
	VMOV.F32 S20, S3
    VMOV.F32 S21, S4
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S3
    VMOVLT.F32 S3, S4
    VMOVLT.F32 S4, S20
	
	;S4-S5
	VMOV.F32 S20, S4
    VMOV.F32 S21, S5
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S4
    VMOVLT.F32 S4, S5
    VMOVLT.F32 S5, S20
	
	;S5-S6
	VMOV.F32 S20, S5
    VMOV.F32 S21, S6
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S5
    VMOVLT.F32 S5, S6
    VMOVLT.F32 S6, S20
	
	;S6-S7
	VMOV.F32 S20, S6
    VMOV.F32 S21, S7
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S6
    VMOVLT.F32 S6, S7
    VMOVLT.F32 S7, S20
	
	;S7-S8
	VMOV.F32 S20, S7
    VMOV.F32 S21, S8
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S7
    VMOVLT.F32 S7, S8
    VMOVLT.F32 S8, S20
	
	;S8-S9
	VMOV.F32 S20, S8
    VMOV.F32 S21, S9
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S8
    VMOVLT.F32 S8, S9
    VMOVLT.F32 S9, S20
	
	;S9-S10
	VMOV.F32 S20, S9
    VMOV.F32 S21, S10
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S9
    VMOVLT.F32 S9, S10
    VMOVLT.F32 S10, S20
	
	;S10-S11
	VMOV.F32 S20, S10
    VMOV.F32 S21, S11
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S10
    VMOVLT.F32 S10, S11
    VMOVLT.F32 S11, S20
	
	;S11-S12
	VMOV.F32 S20, S11
    VMOV.F32 S21, S12
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S11
    VMOVLT.F32 S11, S12
    VMOVLT.F32 S12, S20
	
	;S12-S13
	VMOV.F32 S20, S12
    VMOV.F32 S21, S13
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S12
    VMOVLT.F32 S12, S13
    VMOVLT.F32 S13, S20
	
	;S13-S14
	VMOV.F32 S20, S13
    VMOV.F32 S21, S14
    VCMPE.F32 S20, S21
    VMRS APSR_nzcv, FPSCR
    IT LT
    VMOVLT.F32 S20, S13
    VMOVLT.F32 S13, S14
    VMOVLT.F32 S14, S20

    ; Fin del bucle interno 

    ; Decrementa el contador del bucle externo 
    SUBS R0, R0, #1

    ; Si el contador del bucle externo  no es cero, repite el bucle externo
    BNE Loop



		ALIGN
		END