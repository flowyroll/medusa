.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16f78, %rsi
lea addresses_WC_ht+0x13d9a, %rdi
nop
nop
nop
sub $45198, %r13
mov $7, %rcx
rep movsl
and $51589, %r10
lea addresses_A_ht+0x5be, %rcx
nop
nop
nop
and %r11, %r11
mov (%rcx), %edi
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x3480, %rsi
lea addresses_WC_ht+0xf19a, %rdi
add %r14, %r14
mov $61, %rcx
rep movsq
nop
nop
add $51386, %r11
lea addresses_normal_ht+0x669a, %rcx
nop
nop
add $34141, %rdi
mov (%rcx), %r14d
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x102aa, %rdi
nop
nop
nop
nop
xor %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $4538, %r14
lea addresses_WC_ht+0x1bd9a, %rsi
lea addresses_D_ht+0x5ec2, %rdi
nop
nop
nop
add %r8, %r8
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_WT+0x1519a, %r8
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r13
and $0xff, %r13
shlq $12, %r13
mov (%r13,%r13,1), %r13
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'e1': 1}
e1
*/
