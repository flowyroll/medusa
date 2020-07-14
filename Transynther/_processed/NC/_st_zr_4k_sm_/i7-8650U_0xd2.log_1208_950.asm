.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb800, %rsi
lea addresses_A_ht+0xb5f4, %rdi
nop
nop
xor %r12, %r12
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1b8a4, %rsi
lea addresses_UC_ht+0xe974, %rdi
nop
nop
nop
nop
nop
xor $62876, %rbx
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $22688, %rbx
lea addresses_A_ht+0x1de00, %rsi
clflush (%rsi)
nop
nop
nop
and $37618, %rbx
movw $0x6162, (%rsi)
add $19324, %rdi
lea addresses_WC_ht+0x12fe8, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xa10, %rsi
lea addresses_UC_ht+0x1700, %rdi
clflush (%rdi)
nop
sub $52407, %r12
mov $104, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x1a1e0, %rsi
lea addresses_WT_ht+0x1de00, %rdi
sub $44674, %r12
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1c940, %rsi
lea addresses_WT_ht+0x17566, %rdi
nop
nop
nop
cmp $40074, %r10
mov $89, %rcx
rep movsl
nop
nop
nop
nop
and $9138, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1dde0, %rsi
cmp %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
dec %rcx

// Store
lea addresses_A+0x18c00, %r9
and $56724, %r14
movl $0x51525354, (%r9)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_US+0x179c4, %r8
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
cmp $593, %rsi

// Store
mov $0x565ee10000000400, %r14
sub %r8, %r8
movb $0x51, (%r14)
nop
nop
nop
xor $43782, %r8

// Store
lea addresses_WC+0x71bc, %r9
nop
nop
cmp $42733, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_PSE+0x4c00, %rbp
nop
and $7126, %rdx
movl $0x51525354, (%rbp)
nop
nop
nop
and $44668, %rsi

// Faulty Load
mov $0x565ee10000000400, %rcx
and $21250, %rsi
mov (%rcx), %r14d
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'51': 908, '00': 300}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 00 00 00 00 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 00 00 51 51 00 51 51 51 00 51 51 00 00 00 00 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 00 51 51 00 00 51 51 51 00 00 51 51 51 51 00 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 00 51 51 51 51 00 00 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 51 00 00 00 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 00 51 00 00 51 51 00 51 00 00 00 51 51 51 51 00 00 51 51 00 51 51 00 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 00 51 51 00 51 51 00 51 00 51 51 51 51 51 00 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 00 51 51 00 51 00 51 51 51 51 00 51 51 00 00 00 51 00 51 51 00 00 51 51 51 51 00 00 00 00 00 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 00 51 51 00 51 51 51 00 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 00 51 00 51 51 00 51 51 51 00 51 51 51 51 00 00 51 51 00 51 51 51 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 51 00 00 00 51 51 51 00 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 00 51 51 51 51 00 00 51 51 00 00 51 00 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 00 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 00 51 00 00 51 51 00 51 51 51 51 51 00 51 00 51 00 00 51 51 00 51 51 51 00 51 51 51 51 00 00 00 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 51 00 51 51 51 00 51 51 51 00 00 00 00 00 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 00 00 00 51 51 00 00 00 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 00 00 51 00 51 51 51 51 51 51 00 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 00 51 51 00 00 00 51 51 51 51 51 00 00 51 51 00 00 51 00 00 51 51 51 51 51 51 51 51 00 00 51 51 00 00 51 51 51 00 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 00 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 00 51 51 00 51 51 00
*/
