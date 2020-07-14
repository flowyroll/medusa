.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16741, %rsi
lea addresses_A_ht+0x21fd, %rdi
and $48749, %r13
mov $119, %rcx
rep movsw
nop
cmp $19932, %rdx
lea addresses_WT_ht+0x3c55, %rsi
lea addresses_UC_ht+0x6e81, %rdi
nop
nop
xor $29619, %r9
mov $30, %rcx
rep movsl
nop
nop
nop
and $6160, %r13
lea addresses_D_ht+0xe331, %rsi
nop
nop
nop
nop
nop
cmp $26804, %r11
movb (%rsi), %cl
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x1d5c1, %rsi
lea addresses_UC_ht+0x1afb1, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $12, %rcx
rep movsb
nop
nop
nop
cmp $19927, %rbp
lea addresses_WC_ht+0x13901, %rsi
lea addresses_A_ht+0xb001, %rdi
nop
nop
nop
nop
dec %r13
mov $1, %rcx
rep movsb
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x19d81, %rdx
sub $30245, %r13
mov (%rdx), %cx
xor $18895, %rdx
lea addresses_UC_ht+0xd061, %rsi
lea addresses_A_ht+0x1901, %rdi
and $16068, %r13
mov $97, %rcx
rep movsw
nop
nop
xor $28428, %r9
lea addresses_A_ht+0x2bdb, %rsi
lea addresses_WC_ht+0x14581, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $116, %rcx
rep movsq
cmp $19185, %rsi
lea addresses_WC_ht+0xb01, %rsi
lea addresses_D_ht+0x1d901, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x8f01, %rdi
nop
xor $797, %rbp
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $8672, %rbp
lea addresses_WT_ht+0x3301, %r9
nop
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%r9)
nop
and $26428, %rsi
lea addresses_A_ht+0xc581, %rsi
cmp %rdi, %rdi
mov (%rsi), %r11d
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x3551, %rsi
lea addresses_US+0x1aa81, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $22, %rcx
rep movsb
nop
nop
xor $48984, %rbx

// Faulty Load
lea addresses_US+0x1e501, %rbx
inc %r8
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 173}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
