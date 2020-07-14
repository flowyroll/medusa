.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xcac3, %rsi
lea addresses_D_ht+0x9db7, %rdi
nop
nop
dec %r11
mov $90, %rcx
rep movsl
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x14517, %r11
nop
nop
nop
nop
nop
and $60507, %r12
mov (%r11), %di
nop
xor $58249, %r11
lea addresses_WC_ht+0x831b, %r14
nop
nop
xor %r13, %r13
mov (%r14), %rsi
nop
and %r11, %r11
lea addresses_D_ht+0x33eb, %rsi
lea addresses_A_ht+0xffeb, %rdi
inc %rbp
mov $76, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0xbf77, %rsi
lea addresses_A_ht+0x18787, %rdi
nop
nop
nop
nop
nop
xor $21920, %r12
mov $126, %rcx
rep movsb
xor %rcx, %rcx
lea addresses_D_ht+0xa9eb, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%r14)
and $5990, %r12
lea addresses_normal_ht+0x19137, %rsi
nop
sub $4046, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x159eb, %r13
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%r13)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x13eb, %rsi
lea addresses_A_ht+0x12feb, %rdi
nop
xor %r12, %r12
mov $104, %rcx
rep movsq
nop
nop
inc %rbp
lea addresses_WC_ht+0xf1ab, %rsi
lea addresses_D_ht+0xe43b, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r14
mov $127, %rcx
rep movsq
and %r11, %r11
lea addresses_D_ht+0x12437, %rsi
lea addresses_normal_ht+0x15fcd, %rdi
nop
nop
inc %rbp
mov $6, %rcx
rep movsl
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x43a3, %rsi
lea addresses_normal+0x8feb, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $116, %rcx
rep movsw
nop
nop
nop
dec %r10

// REPMOV
lea addresses_D+0x1786b, %rsi
lea addresses_D+0x173eb, %rdi
sub %r10, %r10
mov $38, %rcx
rep movsl
nop
add $12732, %rcx

// Store
lea addresses_WC+0x618b, %rdi
sub %r11, %r11
movw $0x5152, (%rdi)
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0x1d5eb, %r11
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
and $30739, %rdx

// Store
mov $0x5e3663000000096b, %rdi
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0xc45ed0000000063, %rdx
nop
nop
and $60492, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
inc %r13

// Faulty Load
lea addresses_WT+0x63eb, %rdx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rdx), %r11d
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'39': 908}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
