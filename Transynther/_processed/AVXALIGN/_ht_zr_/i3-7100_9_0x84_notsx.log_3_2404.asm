.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15862, %r11
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
mfence
lea addresses_WC_ht+0x1905a, %rsi
lea addresses_D_ht+0xb7ae, %rdi
nop
nop
dec %r13
mov $106, %rcx
rep movsb
sub $19457, %r12
lea addresses_UC_ht+0x12502, %r13
nop
nop
nop
and %rsi, %rsi
mov (%r13), %ecx
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x15b22, %rcx
nop
nop
sub $14166, %r14
mov (%rcx), %si
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x16e62, %r12
nop
nop
nop
nop
nop
cmp $29175, %rsi
movw $0x6162, (%r12)
and %r11, %r11
lea addresses_A_ht+0x1cf53, %rsi
lea addresses_UC_ht+0x1162, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $61, %rcx
rep movsw
nop
nop
add $13984, %rsi
lea addresses_WC_ht+0x1cc62, %rsi
lea addresses_D_ht+0x170e2, %rdi
nop
nop
dec %rax
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x1c662, %rsi
lea addresses_A_ht+0x511a, %rdi
nop
nop
cmp %r12, %r12
mov $43, %rcx
rep movsw
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xe8d0, %rsi
lea addresses_normal_ht+0xbcf0, %rdi
nop
add %rax, %rax
mov $123, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_A_ht+0xf462, %rsi
lea addresses_D_ht+0x4e62, %rdi
nop
add $41411, %r13
mov $14, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x10ee2, %rsi
lea addresses_WT_ht+0x2982, %rdi
nop
inc %r12
mov $28, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xa262, %rax
add %r12, %r12
mov (%rax), %r11w
nop
nop
nop
nop
xor $30816, %r11
lea addresses_WT_ht+0xa8d2, %rcx
nop
nop
nop
cmp $31862, %r11
mov (%rcx), %r12w
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_PSE+0x13d82, %rcx
nop
nop
sub %r14, %r14
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x1e662, %r15
sub %rbp, %rbp
movw $0x5152, (%r15)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_WC+0x1e03c, %rbp
nop
and %rbx, %rbx
movb $0x51, (%rbp)
nop
nop
sub $50644, %r14

// Load
mov $0x5d276a00000000bd, %rbx
sub $22351, %r14
mov (%rbx), %r15d
nop
nop
nop
nop
nop
xor $8129, %rbp

// Load
mov $0xfa2, %r15
nop
nop
and %rsi, %rsi
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_US+0x11662, %rbx
nop
nop
nop
nop
inc %r8
movl $0x51525354, (%rbx)
inc %rbx

// Store
lea addresses_D+0x28e2, %r15
nop
nop
nop
nop
add %r8, %r8
movl $0x51525354, (%r15)
nop
nop
inc %rbx

// Faulty Load
lea addresses_RW+0x9662, %rbp
clflush (%rbp)
nop
nop
nop
cmp $33501, %rcx
vmovaps (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2, '45': 1}
00 00 45
*/
