
; AddTwo.asm - ����32λ�������

.386	;��ʾ����32�����ܷ���32λ�Ĵ���
.model flat, stdcall	;flat:32λ����������ƽ���ڴ�ģʽ�洢	stdcall:���ù淶
.stack 4096	;����ʱ��ջ������4096�ֽڵĴ洢�ռ�
ExitProcess PROTO, dwExitCode:DWORD		;��������ԭ�� ���ΰ������������ƣ�PROTO���ؼ��֣���һ�����ţ�һ����������б�

.code		;������
main PROC	;��������
mov eax, 5
add eax, 6

INVOKE ExitProcess, 0
main ENDP
END main	;��ʶ�������ڵ㣬��ǻ������һ�У����¶���������