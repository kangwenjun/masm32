
; AddTwo.asm - 两个32位整数相加

.386	;表示此乃32程序，能访问32位寄存器
.model flat, stdcall	;flat:32位程序总是以平面内存模式存储	stdcall:调用规范
.stack 4096	;运行时堆栈保留了4096字节的存储空间
ExitProcess PROTO, dwExitCode:DWORD		;声明函数原型 依次包含：函数名称，PROTO（关键字），一个逗号，一个输入参数列表

.code		;代码区
main PROC	;程序的入口
mov eax, 5
add eax, 6

INVOKE ExitProcess, 0
main ENDP
END main	;标识程序的入口点，标记汇编的最后一行，以下都将被忽略