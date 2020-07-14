.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c570, %rsi
lea addresses_UC_ht+0x8d70, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $29, %rcx
rep movsw
nop
nop
sub $61903, %rax
lea addresses_normal_ht+0x17760, %rsi
lea addresses_UC_ht+0x151d0, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $6, %rcx
rep movsw
xor $51251, %r13
lea addresses_A_ht+0x1d4b0, %rax
nop
nop
dec %rbp
movw $0x6162, (%rax)
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1c670, %rcx
nop
nop
nop
xor %rax, %rax
mov (%rcx), %r12d
nop
nop
nop
nop
nop
xor $43486, %rsi
lea addresses_A_ht+0x9f70, %rax
nop
nop
nop
nop
nop
sub %r13, %r13
movb $0x61, (%rax)
nop
nop
nop
nop
sub $27438, %rcx
lea addresses_UC_ht+0xeef0, %rsi
lea addresses_UC_ht+0x18270, %rdi
nop
dec %r15
mov $113, %rcx
rep movsq
inc %r13
lea addresses_WC_ht+0x3770, %r13
nop
nop
nop
nop
nop
xor %rcx, %rcx
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
cmp $32798, %rax
lea addresses_A_ht+0x8870, %r13
nop
add $4278, %r12
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_WT+0xbd70, %rcx
nop
add $3532, %r13
movntdqa (%rcx), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'44': 15757, '45': 179, '61': 8, '08': 11, '00': 5874}
44 00 00 00 44 44 00 00 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 00 44 44 44 00 00 44 44 44 00 00 00 00 00 00 44 00 44 44 00 44 44 44 44 44 44 00 00 00 00 00 00 44 44 44 00 44 00 00 00 44 44 00 00 44 44 44 00 44 44 44 00 44 00 00 44 44 44 00 44 44 00 00 44 00 44 44 00 00 00 44 00 00 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 45 00 44 44 00 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 00 44 44 44 44 45 44 44 00 44 00 44 00 44 44 44 44 00 00 44 00 00 44 44 00 44 44 44 00 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 00 44 44 00 00 44 44 00 44 44 00 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 00 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 00 00 00 44 00 44 44 00 44 00 00 00 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 45 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 00 00 44 00 44 44 44 44 44 00 00 44 00 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 45 44 00 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 00 00 44 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 00 00 00 44 00 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 00 00 44 44 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 00 00 00 44 44 00 44 44 44 00 00 00 00 44 00 44 00 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 00 00 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 00 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 00 44 00 44 44 00 44 00 00 44 44 44 44 44 44 44 44 00 44 00 44 00 00 44 44 44 00 44 44 44 00 00 44 44 00 44 44 00 44 44 44 44
*/
