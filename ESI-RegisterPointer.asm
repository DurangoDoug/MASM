INCLUDE Irvine32.inc

.data
  numbers DWORD 3 DUP(1, 2, 3)
  numPtr DWORD numbers
  message BYTE "Here are the numbers in the array: "
.code
  main PROC
  mov edx, OFFSET message
  call WriteSTring
  call Crlf
  ; First number
  mov esi, numPtr
  mov eax, [esi]
  call WriteInt
  call Crlf
  ; Second number
  add esi, TYPE numbers
  mov eax, [esi]
  call WriteInt
  call Crlf
  ; Third number
  add esi, TYPE numbers
  mov eax, [esi]
  call WriteInt
  exit
main ENDP
END main
