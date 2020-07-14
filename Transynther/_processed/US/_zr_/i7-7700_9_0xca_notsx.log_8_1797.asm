.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ea7f, %r15
nop
cmp $23572, %rax
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xdda9, %rax
nop
nop
and %rbx, %rbx
mov (%rax), %r13d
nop
lfence
lea addresses_D_ht+0x272f, %rsi
lea addresses_D_ht+0x4eef, %rdi
clflush (%rdi)
nop
nop
inc %r9
mov $124, %rcx
rep movsw
nop
xor $1123, %rbx
lea addresses_normal_ht+0x392f, %rbx
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
xor $4554, %r13
lea addresses_WT_ht+0xcbcf, %r13
nop
nop
nop
and $3370, %r15
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
nop
add $42973, %r13
lea addresses_UC_ht+0x1352f, %rsi
lea addresses_D_ht+0x1e44f, %rdi
nop
nop
nop
nop
cmp $36133, %rax
mov $34, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_UC_ht+0xdb5f, %r15
nop
nop
nop
xor $27194, %rsi
movw $0x6162, (%r15)
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x10e0d, %r9
sub %r15, %r15
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
add $32953, %rax
lea addresses_normal_ht+0x693f, %rsi
lea addresses_normal_ht+0x1a10f, %rdi
nop
nop
cmp %r13, %r13
mov $17, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1e82f, %rsi
lea addresses_WC_ht+0xd10f, %rdi
cmp $13239, %r15
mov $14, %rcx
rep movsb
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xc32f, %rax
add %r15, %r15
movl $0x61626364, (%rax)
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x187ff, %rcx
nop
nop
nop
nop
nop
add $5653, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x3c47, %r15
nop
nop
nop
nop
lfence
movb $0x61, (%r15)
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1432f, %rbx
add $41005, %rax
movb (%rbx), %r13b
dec %r13
lea addresses_D_ht+0x170f, %rax
nop
nop
nop
xor %rbx, %rbx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_WT+0x13dd, %r15
nop
nop
nop
nop
nop
add $57975, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_WT+0x772f, %r8
nop
nop
nop
sub $8735, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0xe756, %rdx
clflush (%rdx)
and $28098, %r12
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
xor $38735, %r14

// Faulty Load
lea addresses_US+0x2b2f, %rdx
nop
nop
nop
nop
and $43182, %r12
movb (%rdx), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
