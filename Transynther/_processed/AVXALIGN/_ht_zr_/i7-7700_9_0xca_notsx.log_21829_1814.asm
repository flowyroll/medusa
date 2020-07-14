.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd9e, %rsi
lea addresses_D_ht+0x17a9e, %rdi
nop
nop
nop
xor %r9, %r9
mov $63, %rcx
rep movsb
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x13f1e, %rsi
lea addresses_WC_ht+0x831e, %rdi
nop
nop
nop
nop
inc %r10
mov $5, %rcx
rep movsq
inc %rdi
lea addresses_normal_ht+0x1cf1e, %rsi
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rsi), %r9d
nop
nop
add $35563, %rdi
lea addresses_WT_ht+0x92de, %r10
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r10), %cl
add %rdi, %rdi
lea addresses_WC_ht+0x199de, %r12
nop
nop
nop
nop
add $3763, %r10
mov $0x6162636465666768, %r11
movq %r11, (%r12)
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x112e6, %rsi
nop
nop
nop
cmp $23650, %rcx
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x3ef6, %rsi
lea addresses_WT_ht+0x15fda, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rbp
mov $70, %rcx
rep movsw
nop
nop
nop
add $34147, %r10
lea addresses_WC_ht+0x1991e, %r9
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r9), %edi
and $61853, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x931e, %rsi
nop
nop
nop
nop
add $49311, %r10
movaps (%rsi), %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 4346, '45': 17433, '44': 50}
00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 44 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 45 00 45 00 45 45 00 45 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45
*/
