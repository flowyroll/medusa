.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3df9, %rsi
lea addresses_WT_ht+0x3376, %rdi
nop
nop
add $21363, %r15
mov $3, %rcx
rep movsw
nop
nop
and $40428, %r9
lea addresses_A_ht+0xdde9, %rsi
lea addresses_D_ht+0x1b07, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $60, %rcx
rep movsl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xfd0a, %r9
nop
nop
xor %rbp, %rbp
mov (%r9), %r14
add $45461, %r15
lea addresses_normal_ht+0xfeb9, %rsi
lea addresses_D_ht+0x7afb, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $74, %rcx
rep movsl
nop
nop
add $23856, %r14
lea addresses_A_ht+0x136b9, %rbp
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
xor $7298, %rdi
lea addresses_D_ht+0x171b9, %r9
add %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xf6b9, %r9
nop
nop
nop
nop
and %r14, %r14
movb (%r9), %cl
nop
nop
xor $53748, %rdi
lea addresses_A_ht+0xf459, %rdi
nop
nop
nop
nop
nop
cmp $36217, %rcx
movw $0x6162, (%rdi)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1eb79, %rsi
lea addresses_UC_ht+0x6f39, %rdi
nop
nop
nop
cmp $36637, %r9
mov $91, %rcx
rep movsl
nop
nop
nop
and $50486, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x136b9, %r10
nop
nop
nop
nop
nop
cmp $22011, %r15
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'44': 12811, '00': 57, 'b9': 1, '01': 2, '45': 8955, '1c': 1, 'c6': 2}
44 44 44 44 44 44 44 45 45 44 45 45 44 44 44 45 45 44 45 44 44 45 44 45 45 45 44 45 44 45 44 44 44 45 44 44 44 45 44 45 45 45 44 44 45 44 45 44 44 45 45 44 45 44 45 45 44 45 45 44 45 45 44 44 45 45 45 44 45 45 44 44 44 44 45 45 45 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 45 45 45 44 45 44 44 44 44 45 45 44 44 44 45 45 45 45 44 44 44 45 44 44 45 45 45 45 44 44 45 45 44 44 44 44 44 45 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 45 45 45 44 45 44 44 45 45 44 44 45 44 45 44 45 44 45 44 45 44 44 45 44 44 44 45 44 45 45 44 44 44 45 44 45 44 45 45 45 45 45 45 44 44 44 45 44 44 44 44 44 45 45 44 44 45 44 44 44 44 45 45 44 44 45 44 44 45 45 45 44 45 45 44 44 44 44 44 45 44 44 44 44 45 45 44 44 44 45 44 44 45 44 44 00 44 44 44 44 44 44 45 44 44 44 45 44 44 45 44 45 45 45 45 44 44 45 44 44 45 44 44 45 45 45 44 45 44 44 44 44 44 44 44 44 45 45 44 44 44 45 45 45 45 45 44 44 45 44 44 44 44 45 45 44 44 44 45 44 45 45 45 45 44 45 45 45 44 45 45 44 44 45 44 44 45 44 45 45 44 44 44 45 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 45 45 44 44 44 44 44 45 44 45 44 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 45 45 44 44 44 44 44 45 44 45 45 45 45 44 45 45 44 44 45 44 44 45 45 44 44 45 45 44 44 44 45 44 44 44 44 45 45 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 45 44 44 44 45 44 44 45 45 45 44 44 44 45 44 44 44 45 45 44 44 45 44 44 45 45 44 45 45 44 44 44 00 45 45 45 45 44 45 44 45 45 44 44 44 45 00 44 44 44 45 45 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 45 44 44 44 44 45 44 44 45 45 44 44 45 44 44 44 44 45 45 45 45 44 44 44 44 44 44 44 44 44 45 44 45 44 44 45 45 44 45 44 44 45 45 45 44 44 44 44 44 44 45 45 44 45 45 44 45 45 45 45 44 45 45 44 44 45 45 45 45 44 44 44 45 45 44 44 44 44 44 45 44 45 44 45 45 45 45 44 44 45 44 44 44 45 44 44 44 45 45 45 44 45 45 44 44 44 44 45 44 44 44 44 45 44 44 44 45 45 44 44 45 45 45 44 44 44 44 44 45 44 44 44 45 44 44 44 45 44 44 45 45 45 44 44 45 45 45 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 45 44 45 44 44 44 45 44 44 45 45 44 44 45 45 45 44 44 44 44 44 44 45 44 45 45 45 44 45 44 44 45 44 45 44 44 44 45 44 45 44 45 44 45 44 45 45 44 45 44 44 45 45 44 45 45 45 44 44 45 45 44 45 44 44 44 44 45 44 45 44 44 44 45 45 44 45 44 45 45 45 45 45 44 44 45 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 45 44 45 45 45 44 44 45 45 45 44 44 44 44 44 44 44 44 45 44 45 44 45 45 44 45 44 44 45 44 45 45 44 44 45 45 45 45 45 44 45 45 44 44 44 45 45 45 44 44 45 44 45 45 44 44 45 44 44 45 45 45 45 45 44 45 45 44 44 44 45 44 44 44 45 44 44 44 45 45 45 45 44 44 45 44 44 45 44 44 44 45 45 44 45 45 44 44 44 45 45 45 44 45 45 45 44 44 44 44 45 44 45 45 44 44 45 45 44 44 44 45 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 45 44 45 45 44 45 44 44 45 44 44 45 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 45 44 45 44 45 45 45 44 44 44 44 45 44 45 45 44 44 44 44 45 45 45 44 45 44 44 45 44 45 44 44 44 44 44 45 45 44 44 44 44 44 44 45 44 44 45 45 44 45 45
*/
