.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rdi
push %rdx
lea addresses_D_ht+0xd3b6, %rdi
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
cmp $19234, %r12
lea addresses_D_ht+0x1be56, %rax
nop
nop
nop
nop
nop
inc %r11
movb $0x61, (%rax)
nop
nop
nop
nop
nop
xor $43013, %rax
lea addresses_UC_ht+0x12596, %rbp
and $7247, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $61392, %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Load
mov $0xab6, %r8
add $16079, %rdi
mov (%r8), %ax
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x1c196, %rdi
nop
nop
nop
and $13913, %rbp
movw $0x5152, (%rdi)
xor %rbp, %rbp

// Store
lea addresses_PSE+0x18396, %r8
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
xor $18304, %rbp

// Store
lea addresses_WC+0xae96, %r8
nop
nop
sub %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
add %r12, %r12

// Load
lea addresses_RW+0x1cf96, %rbp
add %r12, %r12
mov (%rbp), %r11d
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x1c804, %r12
nop
nop
nop
nop
dec %rdi
movb $0x51, (%r12)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x11396, %r9
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x9706, %rdi
inc %rbp
movw $0x5152, (%rdi)
nop
sub %r11, %r11

// Store
lea addresses_UC+0x1a796, %rax
clflush (%rax)
nop
and %rbp, %rbp
movw $0x5152, (%rax)
add %rax, %rax

// Faulty Load
mov $0x2bd4010000000b96, %r12
nop
nop
add %rax, %rax
mov (%r12), %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 280}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
