#include "libc/nt/codegen.h"
.imp	user32,__imp_SetClipboardData,SetClipboardData

	.text.windows
	.ftrace1
SetClipboardData:
	.ftrace2
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	mov	__imp_SetClipboardData(%rip),%rax
	jmp	__sysv2nt
#elif defined(__aarch64__)
	mov	x0,#0
	ret
#endif
	.endfn	SetClipboardData,globl
	.previous
