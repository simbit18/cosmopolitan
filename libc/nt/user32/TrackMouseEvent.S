#include "libc/nt/codegen.h"
.imp	user32,__imp_TrackMouseEvent,TrackMouseEvent

	.text.windows
	.ftrace1
TrackMouseEvent:
	.ftrace2
#ifdef __x86_64__
	push	%rbp
	mov	%rsp,%rbp
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_TrackMouseEvent(%rip)
	leave
#elif defined(__aarch64__)
	mov	x0,#0
#endif
	ret
	.endfn	TrackMouseEvent,globl
	.previous
