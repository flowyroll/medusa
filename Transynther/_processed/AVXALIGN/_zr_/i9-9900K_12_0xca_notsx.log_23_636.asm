.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10b8d, %r14
xor %rdx, %rdx
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x11968, %r14
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%r14), %bp
nop
xor %r15, %r15
lea addresses_A_ht+0x1c0cc, %r10
nop
nop
nop
nop
cmp %r14, %r14
mov (%r10), %ebp
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x16368, %r13
nop
nop
nop
nop
nop
xor $34764, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
nop
nop
nop
add $44596, %r14
lea addresses_A_ht+0x1468, %rsi
lea addresses_WT_ht+0x10b68, %rdi
clflush (%rsi)
nop
cmp $16347, %rbp
mov $50, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x1e488, %rdx
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x9b46, %rcx
nop
xor $39905, %rbx
mov (%rcx), %edx
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x173b9, %rsi
lea addresses_WC_ht+0x17968, %rdi
nop
nop
nop
nop
cmp $61332, %r13
mov $122, %rcx
rep movsw
nop
nop
and $3532, %rcx
lea addresses_WC_ht+0x1509e, %r10
nop
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
add %rdx, %rdx
lea addresses_A_ht+0x11968, %rsi
lea addresses_D_ht+0xd18c, %rdi
clflush (%rsi)
xor %rbp, %rbp
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x1e7c8, %rbp
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rbp), %r13w
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1a968, %r15
nop
nop
nop
nop
nop
add $52023, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r15)
sub $34211, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1f020, %rsi
lea addresses_A+0x7d0, %rdi
nop
nop
and %rax, %rax
mov $125, %rcx
rep movsb
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0xe168, %rdi
nop
nop
nop
nop
nop
cmp $62758, %rbx
movb (%rdi), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
