.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x523e, %rsi
lea addresses_D_ht+0x1847e, %rdi
add $55871, %r8
mov $24, %rcx
rep movsq
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1767e, %rsi
lea addresses_UC_ht+0xfd3e, %rdi
nop
nop
and $55792, %rax
mov $52, %rcx
rep movsq
add $2447, %rdi
lea addresses_normal_ht+0x1a3e, %rdi
nop
xor $8946, %rax
mov (%rdi), %r13d
nop
cmp $58240, %rax
lea addresses_WT_ht+0x1dc8e, %rsi
lea addresses_D_ht+0xb83e, %rdi
nop
nop
nop
nop
dec %rbp
mov $84, %rcx
rep movsl
nop
nop
xor $10733, %rdi
lea addresses_D_ht+0x3c3, %rsi
lea addresses_WT_ht+0x1633e, %rdi
nop
nop
sub %rax, %rax
mov $32, %rcx
rep movsw
nop
nop
nop
add $32555, %r13
lea addresses_normal_ht+0x883e, %rsi
clflush (%rsi)
xor $11152, %rbp
mov (%rsi), %r8w
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x666a, %rsi
lea addresses_UC_ht+0x3cf6, %rdi
nop
sub %rbx, %rbx
mov $106, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $47134, %rax
lea addresses_D_ht+0x17246, %rsi
lea addresses_normal_ht+0x157de, %rdi
nop
cmp $6850, %rbx
mov $72, %rcx
rep movsb
nop
nop
nop
xor $31996, %r8
lea addresses_UC_ht+0x1eb10, %rsi
lea addresses_normal_ht+0x1aa5e, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1303e, %rsi
lea addresses_WT_ht+0xc3e, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $89, %rcx
rep movsw
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x6fee, %rsi
lea addresses_UC_ht+0x19e96, %rdi
nop
nop
nop
and %r8, %r8
mov $4, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1543e, %r13
nop
nop
nop
nop
and $1634, %r8
mov (%r13), %rbx
nop
nop
and $44732, %rcx
lea addresses_normal_ht+0xc83e, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_RW+0xe03e, %r14
nop
cmp %rcx, %rcx
movw $0x5152, (%r14)
nop
nop
nop
xor %r8, %r8

// Store
mov $0xd11e600000003a6, %r13
nop
nop
inc %r12
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add $8667, %r13

// Store
lea addresses_A+0x3dc6, %r14
nop
cmp $59807, %r12
movb $0x51, (%r14)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x383e, %r13
nop
nop
nop
cmp %r12, %r12
mov (%r13), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
