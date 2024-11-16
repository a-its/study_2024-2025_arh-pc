%include 'in_out.asm'
SECTION .data
msg: DB 'Введите значение х: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
add eax,10
mov ebx,3
mul ebx
add eax,-20
mov edi,eax
mov eax,rem
call sprint
mov eax,edi
call iprintLF
call quit
