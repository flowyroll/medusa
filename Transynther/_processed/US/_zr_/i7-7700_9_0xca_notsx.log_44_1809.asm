.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12547, %rsi
lea addresses_WC_ht+0x9067, %rdi
add $6242, %r12
mov $104, %rcx
rep movsw
nop
nop
nop
nop
xor $7525, %r14
lea addresses_WC_ht+0x15147, %r12
clflush (%r12)
nop
nop
nop
and $64690, %rbp
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
dec %r14
lea addresses_WT_ht+0x5c47, %rsi
lea addresses_WC_ht+0x54f7, %rdi
nop
nop
nop
xor $52638, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
and $6211, %rcx
lea addresses_A_ht+0x287, %rax
nop
nop
nop
and %rdi, %rdi
mov (%rax), %cx
nop
nop
lfence
lea addresses_WC_ht+0x546f, %rdi
nop
nop
nop
xor %rax, %rax
movb $0x61, (%rdi)
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x19e96, %rsi
lea addresses_A+0x12b47, %rdi
clflush (%rdi)
nop
and $50041, %r8
mov $52, %rcx
rep movsw
sub $47991, %r8

// Faulty Load
lea addresses_US+0xe047, %r10
nop
nop
nop
nop
cmp $46264, %rdi
mov (%r10), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 44}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
