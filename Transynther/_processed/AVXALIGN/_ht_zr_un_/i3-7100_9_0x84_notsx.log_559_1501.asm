.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x92c6, %rsi
lea addresses_UC_ht+0xb25b, %rdi
nop
nop
nop
add %r15, %r15
mov $15, %rcx
rep movsl
dec %rcx
lea addresses_D_ht+0x1665b, %rax
nop
nop
inc %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rax)
nop
add $30239, %r15
lea addresses_UC_ht+0x3b13, %rax
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x5db, %rax
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
add %r13, %r13
lea addresses_normal_ht+0x1ce5b, %rcx
nop
nop
nop
nop
nop
xor $20714, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x84b3, %rsi
lea addresses_UC_ht+0x1b48b, %rdi
nop
nop
sub $21345, %rax
mov $4, %rcx
rep movsq
nop
nop
nop
cmp $31028, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbx
push %rdx

// Load
mov $0x6de05a0000000093, %rbx
nop
nop
add $3421, %r9
mov (%rbx), %r12w
nop
nop
and $41886, %r13

// Store
lea addresses_A+0x1715b, %r12
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movntdq %xmm0, (%r12)
nop
add %r9, %r9

// Faulty Load
lea addresses_PSE+0x1a65b, %rbx
nop
dec %rdx
vmovaps (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rbx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'ed': 1, 'f8': 2, 'd4': 1, 'e4': 1, 'ca': 1, '44': 1, '02': 14, '45': 535, '00': 2, 'ee': 1}
45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 ca 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 ee 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 ed 45 45 45 02 45 02 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 02 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 d4 45 45 45 45 45 45 45 45 45 f8 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 e4 45 00 45 45 45 45 45 45 45 45 f8 45 45 45 45 45 45 45 02 45 45 45 45 45 45 45 45
*/
