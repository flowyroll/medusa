.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x600c, %rsi
lea addresses_D_ht+0xdddd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $36552, %r9
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xb8ec, %rsi
lea addresses_UC_ht+0x9238, %rdi
nop
nop
nop
nop
xor $31870, %r14
mov $107, %rcx
rep movsb
nop
add $5733, %rcx
lea addresses_UC_ht+0x420c, %rsi
lea addresses_normal_ht+0x2d2c, %rdi
nop
nop
inc %r12
mov $127, %rcx
rep movsl
nop
nop
nop
and $13092, %rbx
lea addresses_A_ht+0x12406, %rsi
nop
xor $46828, %r12
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x25e2, %rsi
lea addresses_WT_ht+0x320c, %rdi
nop
dec %r10
mov $5, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x980c, %r10
nop
cmp %rbx, %rbx
mov (%r10), %edi
nop
dec %r10
lea addresses_WC_ht+0x725e, %rsi
lea addresses_WC_ht+0x11a94, %rdi
nop
nop
nop
nop
dec %r10
mov $78, %rcx
rep movsw
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1ba0c, %r9
nop
dec %r14
movb $0x61, (%r9)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1d80c, %r14
add %r10, %r10
movw $0x6162, (%r14)
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x9ebc, %rbp
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
nop
nop
and $31438, %rcx

// REPMOV
lea addresses_US+0x1f40c, %rsi
lea addresses_A+0xdec, %rdi
clflush (%rdi)
nop
nop
and $51997, %r8
mov $10, %rcx
rep movsq
add %r10, %r10

// Store
lea addresses_RW+0x2bb0, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
sub $25245, %rdi

// Store
mov $0x5faef7000000040c, %rsi
nop
and $39111, %r8
movw $0x5152, (%rsi)
nop
cmp %r8, %r8

// Store
mov $0x686dae000000000c, %rax
nop
nop
xor %r8, %r8
movl $0x51525354, (%rax)
and %r10, %r10

// Store
lea addresses_UC+0x4ca4, %rdi
nop
nop
xor $2884, %rsi
movw $0x5152, (%rdi)
nop
add $47283, %rax

// Faulty Load
mov $0x686dae000000000c, %rdi
clflush (%rdi)
nop
sub %r10, %r10
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 15649, '48': 5783}
00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 48 00 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 48 00 48 48 00 48 00 48 48 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 00 00 48 00 00 00 48 00 00 48 48 48 48 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 48 48 48 48 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 00 48 00 48 48 48 00 00 48 48 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 48 48 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 48 00 00 48 00 48 00 00 00 48 00 00 48 48 00 00 48 48 00 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 48 00 00 48 48 00 48 00 48 48 48 00 48 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 48 48 00 00 48 00 00 48 48 00 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 00 00 48 48 00 48 48 48 00 00 48 00 00 48 00 00 00 48 00 00 48 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 48 00 00 48 00 48 00 48 00 00 00 48 00 00 48 00 48 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 48 48 00 00 00 48 00 00 00 48 48 48 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 48 00 00 48 00 48 00 00 00 48 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 48 48 00 00 00 48 00 00 00 00 48 00 00 48 48 48 00 00 00 00 48 48 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48
*/
