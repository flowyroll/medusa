.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xdd49, %r14
nop
nop
nop
nop
sub $1993, %rbx
mov (%r14), %r8
nop
xor %r8, %r8
lea addresses_WC_ht+0x14b11, %rsi
lea addresses_normal_ht+0x1a8f9, %rdi
nop
cmp $24055, %rbp
mov $30, %rcx
rep movsb
and $54003, %rdi
lea addresses_UC_ht+0x4c51, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbp)
cmp $37420, %r8
lea addresses_UC_ht+0x7ad1, %rsi
lea addresses_D_ht+0x11ba5, %rdi
clflush (%rdi)
sub %r12, %r12
mov $87, %rcx
rep movsl
nop
nop
nop
nop
sub $57281, %rdi
lea addresses_normal_ht+0x142d1, %rdi
nop
nop
cmp %rbp, %rbp
mov (%rdi), %esi
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0xc401, %rsi
nop
xor %r14, %r14
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x11685, %r8
dec %rdi
movb $0x61, (%r8)
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x150d1, %r12
nop
nop
dec %rdi
movups (%r12), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rsi

// Store
lea addresses_PSE+0xc0d1, %r10
clflush (%r10)
xor $18715, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movaps %xmm7, (%r10)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0xa951, %rsi
nop
xor $49873, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovntdq %ymm3, (%rsi)
nop
cmp $5597, %r14

// Faulty Load
lea addresses_PSE+0x98d1, %rsi
nop
nop
nop
xor $8635, %r14
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
