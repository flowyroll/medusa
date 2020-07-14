.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1207, %r14
nop
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r14)
nop
and %r12, %r12
lea addresses_WT_ht+0x12c47, %rdi
clflush (%rdi)
nop
nop
xor %r11, %r11
movw $0x6162, (%rdi)
nop
nop
mfence
lea addresses_normal_ht+0x8e47, %rsi
lea addresses_WC_ht+0x10a47, %rdi
nop
nop
nop
nop
nop
and $55713, %r9
mov $91, %rcx
rep movsl
dec %rdi
lea addresses_WC_ht+0x101af, %rdi
nop
nop
nop
nop
nop
add $40462, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx

// Load
lea addresses_WC+0x19907, %rax
nop
sub %r11, %r11
mov (%rax), %rbx
xor %r15, %r15

// Store
lea addresses_A+0x1300d, %rax
nop
nop
nop
nop
xor $45074, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
and %rbx, %rbx

// Load
mov $0xa47, %rax
nop
dec %rbp
movb (%rax), %r14b
nop
nop
xor $28739, %rbx

// Store
mov $0x1f37050000000445, %rbp
nop
nop
inc %r14
movl $0x51525354, (%rbp)

// Exception!!!
nop
mov (0), %rax
nop
nop
nop
and $18871, %r14

// Store
mov $0x54a7000000000527, %r11
cmp %r15, %r15
movl $0x51525354, (%r11)
nop
sub $1343, %rax

// Store
mov $0xe47, %r13
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
nop
xor %r11, %r11

// Faulty Load
mov $0x18ccf70000000e47, %rbx
nop
add %r11, %r11
mov (%rbx), %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'58': 14683, '00': 7146}
00 58 00 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 00 58 00 58 58 58 00 58 00 58 00 58 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 00 00 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 00 00 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 00 00 00 00 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 58 00 00 58 58 58 00 00 00 00 00 58 58 58 00 58 00 00 58 58 00 58 00 00 58 58 58 58 00 58 58 00 00 58 00 00 00 00 58 58 58 00 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 00 00 58 00 00 58 00 58 00 00 00 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 00 58 58 58 00 00 00 00 58 58 00 00 00 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 58 00 58 00 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 58 00 58 58 58 58 00 00 58 00 58 00 58 00 00 00 58 58 58 58 58 00 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 00 58 00 58 58 00 58 00 58 58 00 58 58 58 00 00 58 00 58 00 58 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 00 00 58 00 58 58 00 58 00 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 00 00 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 58 58 58 58 00 58 00 00 00 58 58 00 58 58 00 58 58 58 00 58 58 58 00 00 00 00 00 00 00 58 58 58 00 58 00 00 58 00 58 58 00 58 58 00 58 58 00 58 00 58 58 00 00 58 00 00 58 58 58 58 58 00 58 58 00 58 58 00 58 00 00 00 00 58 00 58 58 58 58 58 00 58 58 00 00 00 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 00 00 00 58 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 00 58 00 58 00 00 58 00 00 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 58 58 00 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 00 00 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 00 00 00 58 00 58 58 00 58 58 00 58 58 58 58 58 00 00 58 00 00 00 58 00 00 00 00 00 58 58 58 58 00 58 00 58 58 58 00 58 00 00 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 00 00 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 00 58
*/
