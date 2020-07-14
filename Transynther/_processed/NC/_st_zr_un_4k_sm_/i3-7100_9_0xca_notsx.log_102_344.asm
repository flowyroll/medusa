.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xcdd4, %rsi
lea addresses_WT_ht+0x6594, %rdi
nop
nop
nop
sub %r9, %r9
mov $79, %rcx
rep movsw
nop
nop
nop
cmp $13142, %rax
lea addresses_WC_ht+0x19fd4, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xe3d4, %rsi
lea addresses_WC_ht+0xf98a, %rdi
nop
nop
nop
and $63053, %rax
mov $8, %rcx
rep movsl
nop
nop
xor $878, %r9
lea addresses_normal_ht+0x163d4, %rsi
lea addresses_A_ht+0x119d4, %rdi
cmp %r14, %r14
mov $19, %rcx
rep movsl
nop
nop
nop
nop
xor $20321, %rax
lea addresses_normal_ht+0x1b38a, %r14
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x12254, %rsi
lea addresses_WC_ht+0xa8fc, %rdi
sub $40015, %r13
mov $77, %rcx
rep movsb
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x10f74, %rsi
lea addresses_D_ht+0x268c, %rdi
nop
nop
nop
add $20048, %r13
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $36556, %r13
lea addresses_UC_ht+0x8c6b, %rsi
lea addresses_normal_ht+0x1fd4, %rdi
nop
nop
xor $25050, %r15
mov $83, %rcx
rep movsl
nop
sub %r14, %r14
lea addresses_D_ht+0x12f14, %rsi
lea addresses_A_ht+0x3254, %rdi
nop
nop
nop
and $39327, %rax
mov $127, %rcx
rep movsb
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x190f0, %rsi
lea addresses_A_ht+0xff44, %rdi
dec %r14
mov $15, %rcx
rep movsw
nop
nop
nop
xor $63372, %rax
lea addresses_WC_ht+0x67d4, %rsi
lea addresses_normal_ht+0x98d4, %rdi
nop
nop
nop
xor $56760, %r15
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
add $10069, %r9
lea addresses_WT_ht+0xec86, %rsi
lea addresses_D_ht+0xc5d4, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_D_ht+0x11a14, %rcx
nop
add %rax, %rax
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
cmp $21971, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx

// Store
mov $0x63dc2100000007d4, %r13
nop
nop
nop
nop
nop
add $31604, %rax
movl $0x51525354, (%r13)
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_A+0x11e, %r10
nop
xor $57687, %rcx
mov (%r10), %r11w
nop
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0x5e14, %r10
nop
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%r10)
nop
nop
nop
xor $62394, %r9

// Store
mov $0x63d8ab0000000214, %r11
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%r11)
nop
nop
add $27403, %r11

// Store
lea addresses_normal+0x18fd4, %r13
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movntdq %xmm3, (%r13)
nop
nop
xor $29361, %r10

// Faulty Load
mov $0x63dc2100000007d4, %r11
nop
nop
nop
nop
nop
inc %r10
mov (%r11), %r9d
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'d6': 1, '00': 8, '54': 93}
d6 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 00 00 54 54
*/
