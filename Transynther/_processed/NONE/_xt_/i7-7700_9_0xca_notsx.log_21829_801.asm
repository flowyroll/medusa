.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8b80, %rbp
nop
nop
nop
xor $44726, %rax
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
and $33070, %r8
lea addresses_A_ht+0x1ae01, %r9
clflush (%r9)
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r9)
sub $4605, %r9
lea addresses_A_ht+0x1e808, %rsi
lea addresses_UC_ht+0x172c0, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $36, %rcx
rep movsb
nop
nop
nop
nop
sub $58109, %rax
lea addresses_UC_ht+0x1e6c0, %r9
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r9
vmovaps %ymm5, (%r9)
nop
nop
nop
nop
cmp $8090, %rcx
lea addresses_D_ht+0x35b8, %rbp
clflush (%rbp)
nop
nop
sub %r8, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xe6e0, %r8
nop
cmp $47103, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
add $51953, %rcx
lea addresses_A_ht+0x10340, %rsi
lea addresses_WC_ht+0x123c0, %rdi
xor %r8, %r8
mov $119, %rcx
rep movsl
nop
nop
and $41054, %rsi
lea addresses_normal_ht+0xdd64, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdi), %eax
nop
nop
nop
nop
nop
add $58202, %rdi
lea addresses_normal_ht+0x17cc, %r9
nop
nop
nop
inc %rsi
mov (%r9), %eax
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1d00, %r13
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x3b60, %rsi
lea addresses_D_ht+0xe8ec, %rdi
nop
nop
and $45109, %rbp
mov $93, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $58889, %rdi
lea addresses_UC_ht+0xa6c0, %rbp
xor %r8, %r8
mov (%rbp), %bx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0xecc0, %r13
nop
nop
nop
nop
sub $33086, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x136a0, %rsi
lea addresses_A_ht+0x1dff8, %rdi
xor %r8, %r8
mov $96, %rcx
rep movsq
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0xb2c0, %rbx
nop
nop
nop
nop
sub $631, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
dec %rbx

// REPMOV
lea addresses_PSE+0x16ac0, %rsi
lea addresses_PSE+0x2c0, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $107, %rcx
rep movsb
nop
add %rbx, %rbx

// Store
lea addresses_A+0x14f2d, %rdi
nop
nop
nop
xor $50979, %rsi
movw $0x5152, (%rdi)
nop
nop
and $36910, %rcx

// Faulty Load
lea addresses_PSE+0x2c0, %r10
cmp $14057, %rdi
movups (%r10), %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
