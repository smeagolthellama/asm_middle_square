global mysrand
global myrand

section .text
mysrand:
	mov	[seed], rdi
	mov	rax, [seed]
	ret
	
myrand:
	push	rbx
	push	rdx
	mov	rbx, [seed]
	mov	rax, rbx
	xor	rdx, rdx
	mul	rbx
	; x*=x
	mov	rbx, [w]
	add	rbx, qword [s]
	mov	[w], rbx
	; w+=s
	add	rax, rbx
	shr	rax, 32
	shl	rdx, 32
	xor	rax, rdx
	mov	[seed], rax
	pop	rdx
	pop	rbx
	ret

section .data
	seed	dq	0
	w	dq	0
	s	dq	0xb5ad4eceda1ce2a9
