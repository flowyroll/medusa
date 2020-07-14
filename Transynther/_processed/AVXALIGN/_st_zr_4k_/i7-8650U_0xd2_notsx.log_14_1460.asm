.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x13d7d, %rsi
lea addresses_A_ht+0x90b9, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $59, %rcx
rep movsw
nop
add $5255, %r11
lea addresses_A_ht+0x16c66, %rdx
nop
nop
nop
nop
and $59107, %rbx
movw $0x6162, (%rdx)
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1d8bd, %rsi
nop
nop
nop
nop
nop
xor $1648, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x14fcb, %rsi
lea addresses_A_ht+0x1c4eb, %rdi
nop
nop
nop
nop
cmp $29123, %rbp
mov $4, %rcx
rep movsw
nop
xor $13150, %rsi
lea addresses_A_ht+0x1227d, %rsi
nop
nop
nop
nop
xor $63183, %rdi
mov (%rsi), %cx
nop
nop
nop
add $31203, %rcx
lea addresses_UC_ht+0xc5fd, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %rdi
mov (%rbx), %r11d
nop
nop
and $43624, %rdi
lea addresses_normal_ht+0xa4fd, %rsi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rsi), %ebx
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Store
lea addresses_RW+0x3cfd, %r11
nop
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%r11)
nop
inc %r15

// Store
lea addresses_WT+0x178fd, %rsi
clflush (%rsi)
nop
nop
cmp %r13, %r13
movb $0x51, (%rsi)
xor $59385, %r8

// Store
lea addresses_US+0x1063b, %r15
nop
cmp $15093, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
mov $0x2fd, %r13
nop
nop
nop
nop
and %r14, %r14
mov (%r13), %rbx
cmp $14882, %rbx

// Store
lea addresses_D+0x126be, %r14
nop
nop
add %r11, %r11
movw $0x5152, (%r14)
nop
xor %rbx, %rbx

// Faulty Load
mov $0xaf4f60000000cfd, %r15
nop
nop
add $14405, %r13
mov (%r15), %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 4, '52': 10}
00 52 52 00 52 52 52 00 52 52 00 52 52 52
*/
