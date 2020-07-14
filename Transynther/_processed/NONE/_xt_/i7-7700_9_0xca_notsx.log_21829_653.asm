.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1339e, %rsi
lea addresses_UC_ht+0x16a9e, %rdi
nop
nop
and $51355, %rbp
mov $110, %rcx
rep movsl
nop
sub %r9, %r9
lea addresses_D_ht+0x17dbe, %r14
nop
nop
cmp $14654, %r13
mov (%r14), %r9w
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1435e, %rsi
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
inc %rsi
lea addresses_normal_ht+0x1e6b1, %rsi
lea addresses_WT_ht+0x111e, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $28, %rcx
rep movsb
nop
dec %r14
lea addresses_D_ht+0x16a8c, %rcx
nop
inc %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0xa6a8, %r14
clflush (%r14)
nop
nop
nop
add %r10, %r10
mov (%r14), %esi
nop
nop
nop
sub $5542, %rsi
lea addresses_normal_ht+0x6fe1, %r10
add $47955, %rcx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
nop
cmp $4959, %rcx
lea addresses_WC_ht+0x19e1e, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x979e, %r10
nop
nop
nop
nop
and %rdi, %rdi
mov (%r10), %si
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x439e, %r10
clflush (%r10)
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
cmp $6580, %r9
lea addresses_D_ht+0x113fe, %rsi
lea addresses_WC_ht+0xb69e, %rdi
clflush (%rdi)
and $36114, %r9
mov $110, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x101fe, %rsi
nop
nop
nop
nop
sub %r10, %r10
mov (%rsi), %r9d
nop
inc %rbp
lea addresses_A_ht+0x1c33e, %r9
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r9)
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x7d, %rdx
nop
nop
nop
nop
nop
inc %rbp
movl $0x51525354, (%rdx)
and %rbx, %rbx

// Store
mov $0xf9e, %rbx
clflush (%rbx)
nop
add $37506, %rsi
movw $0x5152, (%rbx)

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_D+0x900c, %rdx
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_UC+0x1539e, %rdx
nop
nop
nop
xor %rbp, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp $48766, %rbx

// Store
lea addresses_WT+0x13b9e, %r14
nop
add $9740, %rsi
movl $0x51525354, (%r14)
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x1039e, %r14
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r14)
nop
nop
and $53306, %rdx

// Faulty Load
lea addresses_WT+0x4b9e, %rbp
nop
nop
nop
sub $34663, %rbx
movb (%rbp), %dl
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
