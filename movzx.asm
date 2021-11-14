 ============================
; Attached: HW 3abcde
; ============================
; Program: HW_3e
; Class: CMPR 154
; Programmer: Michael Daza
; ============================

INCLUDE Irvine32.inc
.data
  num1 SWORD 3
  num2 SWORD -4
  num3 SWORD -1
.code
  main PROC
  movzx eax, num1
  call WriteInt
  call Crlf
  neg eax
  call WriteInt
  call Crlf
  neg num2
  movzx ebx, num2
  mov eax, ebx
  neg eax
  call WriteInt
  call DumpRegs
  exit
main ENDP
END main
