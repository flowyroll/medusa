.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbb47, %rsi
lea addresses_normal_ht+0xca5d, %rdi
nop
nop
nop
cmp $29905, %r15
mov $113, %rcx
rep movsl
sub $5744, %r11
lea addresses_WT_ht+0x1df4d, %r14
nop
nop
nop
add $2828, %rdi
mov (%r14), %r11w
nop
nop
nop
nop
cmp $36565, %rdi
lea addresses_WT_ht+0x7ded, %rsi
lea addresses_D_ht+0x18ded, %rdi
nop
nop
nop
and $16524, %r12
mov $37, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_A_ht+0xd2ad, %rsi
lea addresses_A_ht+0x56e9, %rdi
nop
xor %r9, %r9
mov $75, %rcx
rep movsw
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x13fed, %r12
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, (%r12)
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x9fed, %rsi
lea addresses_UC+0xf7ed, %rdi
nop
nop
nop
and $3441, %rbx
mov $10, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x154ed, %r10
sub %rsi, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
nop
xor $60149, %rdi

// Load
lea addresses_RW+0xbc6b, %rax
nop
xor %rcx, %rcx
mov (%rax), %si
nop
nop
nop
nop
inc %rdi

// Faulty Load
mov $0x47aee700000007ed, %r14
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovaps (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 40}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
