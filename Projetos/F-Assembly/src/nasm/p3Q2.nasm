;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Simulado P3 2019-b
;;
;; Transcreva o pseudocódigo a seguir para assembly do Z01.1:.
;; WHILE(TRUE):
;;  IF RAM[5] == 3:
;;     RAM[0] = -3
;;  ELSE:
;;      RAM[0] = 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



LOOP:
leaw $3, %A
movw %A, %D
leaw $5, %A
movw (%A), %S
subw %S, %D, %S
leaw $ELSE, %A 
jne %S
nop
leaw $0, %A
negw %D
movw %D, (%A)
leaw $LOOP, %A
jmp
nop
ELSE:
leaw $0, %A
movw %A, %D
movw %D, (%A)
leaw LOOP, %A
jmp
nop
