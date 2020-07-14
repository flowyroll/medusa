.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x10f04, %rbp
nop
nop
dec %rax
movb (%rbp), %r8b
nop
nop
xor $61020, %rdx
lea addresses_WC_ht+0xab1c, %rsi
lea addresses_D_ht+0x172dc, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $114, %rcx
rep movsw
nop
nop
nop
cmp $18318, %r8
lea addresses_D_ht+0x1c55c, %rdx
clflush (%rdx)
nop
nop
sub %rsi, %rsi
mov (%rdx), %r13w
sub %r8, %r8
lea addresses_WT_ht+0x1d75c, %r8
nop
nop
nop
dec %rsi
mov (%r8), %rcx
dec %rdx
lea addresses_WC_ht+0xbcee, %rcx
inc %rax
mov (%rcx), %r8d
and $56158, %r13
lea addresses_WT_ht+0xcedc, %r13
cmp %rbp, %rbp
movb $0x61, (%r13)
nop
add %rbp, %rbp
lea addresses_normal_ht+0xb81c, %rsi
lea addresses_A_ht+0xc35c, %rdi
add %rax, %rax
mov $114, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x875c, %rsi
lea addresses_normal_ht+0x935c, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $92, %rcx
rep movsl
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_A+0x1677c, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
cmp %rax, %rax

// Store
mov $0x2fe472000000035c, %r15
nop
nop
nop
nop
and %r13, %r13
movb $0x51, (%r15)
nop
nop
cmp %r13, %r13

// Faulty Load
mov $0x2fe472000000035c, %r15
nop
nop
nop
nop
inc %r13
mov (%r15), %cx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'00': 3349, '5f': 951, '51': 17529}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5f 5f 5f 51 00 5f 51 51 51 51 51 00 51 5f 51 51 51 51 51 5f 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 5f 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 5f 51 51 00 51 51 5f 51 00 51 51 00 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 00 5f 5f 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 5f 51 5f 51 51 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 5f 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5f 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 00 00 51 5f 51 00 51 5f 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 5f 51 51 51 51 51 51 00 00 51 51 5f 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 5f 51 00 00 51 00 00 51 00 51 51 51 51 51 51 00 51 5f 51 51 51 51 5f 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 51 51 5f 51 51 51 51 51 51 51 51 51 5f 51 51 51 51 5f 00 51 00 51 51 51 51 51 51 51 51 5f 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5f 51 51 51 51 51 51 00 51 51 51 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 00 51 51 51 51 5f 51 51 00 51 00 51 51 5f 5f 51 51 51 51 51 51 51 51 51 51 51 5f 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 5f 51 51 51 51 00 00 5f 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 5f 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 5f 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 00 51 00 00 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 5f 5f 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 5f 51 00 51 51 51 51 51 51 00 00 00 51 51 51 00 51 51 51 51 51 51 51 00 51 00 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5f 51 51 5f 51 00 51 51 51 51 51 51 51 51 51 5f 00 51 5f 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 51 51 5f 51 00 51 51 51 51 00 51 5f 51 00 51 5f 00 51 51 51 00 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 5f 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 5f 51 51 51 5f 51 51 51 51 51 51 51 51 51 00 00 51 51 51 5f 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 5f 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 5f 51 51 51 51 51 51 51 00
*/
