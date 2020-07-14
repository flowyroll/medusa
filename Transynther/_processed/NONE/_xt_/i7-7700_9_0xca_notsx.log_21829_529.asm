.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2ad1, %rcx
clflush (%rcx)
add $1563, %r11
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
inc %r11
lea addresses_UC_ht+0xd323, %rsi
lea addresses_normal_ht+0x113b9, %rdi
nop
nop
nop
and $39245, %r15
mov $72, %rcx
rep movsw
nop
nop
nop
cmp $48570, %r14
lea addresses_WC_ht+0x9ed1, %r14
nop
nop
nop
nop
and %rbp, %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x2711, %rsi
lea addresses_WT_ht+0xced1, %rdi
nop
cmp %r8, %r8
mov $68, %rcx
rep movsl
nop
nop
nop
xor $49921, %r8
lea addresses_D_ht+0x1a267, %r8
nop
sub %rdi, %rdi
mov (%r8), %r14d
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x8ee1, %rbp
nop
cmp $18919, %rdi
movw $0x6162, (%rbp)
sub $34361, %rsi
lea addresses_UC_ht+0x9c51, %r11
nop
nop
nop
nop
add $52777, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x1a731, %rbp
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xfed1, %rsi
lea addresses_WT_ht+0x10ad1, %rdi
clflush (%rdi)
nop
nop
cmp %rbp, %rbp
mov $83, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xa6d1, %r8
nop
nop
nop
sub %rdi, %rdi
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rbp
cmp $11019, %rbp
lea addresses_WC_ht+0xe941, %rbp
nop
add $40402, %rdi
movl $0x61626364, (%rbp)
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rdi

// Faulty Load
lea addresses_UC+0x1e2d1, %rbp
sub %r8, %r8
mov (%rbp), %edi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
