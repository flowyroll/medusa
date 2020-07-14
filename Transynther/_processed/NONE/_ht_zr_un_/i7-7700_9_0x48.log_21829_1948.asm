.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe9de, %rsi
lea addresses_normal_ht+0x2492, %rdi
nop
nop
inc %rbp
mov $65, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x17cfe, %r15
nop
nop
xor %r12, %r12
movb $0x61, (%r15)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x567e, %r12
nop
xor %rcx, %rcx
movw $0x6162, (%r12)
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x910a, %rdi
nop
sub $64198, %r14
movb $0x61, (%rdi)
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1177e, %rdi
nop
nop
add $16960, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x347e, %rsi
lea addresses_WC_ht+0x1987e, %rdi
nop
nop
nop
inc %r12
mov $51, %rcx
rep movsq
nop
nop
nop
xor $5193, %rdi
lea addresses_UC_ht+0x203e, %rsi
lea addresses_D_ht+0x78b6, %rdi
sub $56100, %rbp
mov $57, %rcx
rep movsb
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x6c7e, %rdi
nop
nop
nop
cmp $54710, %rcx
mov (%rdi), %rbp
nop
nop
nop
and $12324, %r15
lea addresses_normal_ht+0x1837e, %rsi
lea addresses_WT_ht+0x657e, %rdi
clflush (%rdi)
nop
and %r8, %r8
mov $69, %rcx
rep movsb
nop
nop
dec %r14
lea addresses_WC_ht+0x1dd42, %rsi
lea addresses_A_ht+0x1667e, %rdi
nop
nop
nop
dec %r12
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $59377, %r12
lea addresses_A_ht+0x4c7e, %rsi
lea addresses_UC_ht+0x1a87e, %rdi
nop
nop
xor %r8, %r8
mov $107, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0xdffe, %r15
nop
nop
nop
nop
and $59745, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r15)
and $50082, %r12
lea addresses_WT_ht+0xa47e, %rsi
lea addresses_normal_ht+0xa1f0, %rdi
nop
nop
nop
add $37625, %r12
mov $59, %rcx
rep movsb
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp

// Load
lea addresses_WT+0x1952e, %r8
nop
nop
nop
nop
nop
and %r13, %r13
mov (%r8), %ebp
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_PSE+0x1b77e, %r9
nop
nop
nop
inc %r11
movb $0x51, (%r9)
nop
nop
nop
nop
nop
sub $23818, %r14

// Store
lea addresses_A+0x5d68, %r8
nop
nop
nop
add $14054, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movntdq %xmm7, (%r8)
nop
nop
nop
nop
and $29958, %r9

// Faulty Load
lea addresses_A+0xd87e, %rbp
nop
nop
nop
nop
cmp $60704, %r8
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'08': 1, '45': 5980, '00': 9483, '49': 1360, '48': 336, '44': 4669}
00 45 45 45 45 48 00 44 44 00 00 00 00 00 00 00 00 49 00 45 45 45 45 00 00 44 44 44 44 00 00 00 00 00 49 45 45 45 45 45 48 44 44 00 00 00 00 00 00 00 49 45 45 45 45 45 00 44 44 00 00 00 49 45 45 45 45 45 00 44 44 44 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 49 45 45 45 00 44 44 00 00 00 00 00 00 00 45 45 45 45 48 00 44 44 00 00 00 00 45 45 45 45 44 44 00 00 00 00 49 45 45 45 45 48 00 44 44 44 44 00 00 00 00 49 49 45 45 45 45 44 44 44 44 44 00 00 00 00 49 49 45 45 45 45 45 00 44 44 00 00 00 00 00 00 00 49 49 45 45 45 45 45 00 00 44 44 44 00 00 00 00 00 45 45 45 48 00 00 44 44 44 44 00 00 00 00 00 00 49 45 45 45 45 45 45 00 44 44 44 44 44 00 00 00 00 49 49 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 00 00 49 45 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 00 45 45 45 45 45 45 00 00 44 44 44 00 00 00 00 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 45 45 45 45 00 44 44 00 00 00 00 00 49 45 45 45 45 45 45 45 00 00 44 44 44 44 00 00 00 00 00 00 49 49 49 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 49 49 45 45 45 45 45 00 00 44 44 44 00 00 00 00 00 45 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 49 45 45 45 45 48 00 44 44 00 00 00 00 00 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 00 00 49 45 45 45 45 45 00 44 44 00 00 00 00 00 45 45 45 00 48 00 44 44 44 00 00 00 00 00 00 00 49 45 45 45 45 45 00 00 44 44 00 00 00 00 00 49 45 45 45 00 00 00 44 44 44 00 00 00 00 00 00 49 49 45 45 45 45 00 44 44 44 00 00 00 00 00 00 00 49 49 45 45 45 48 00 00 44 44 44 00 00 00 00 00 00 00 49 45 49 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 00 49 45 45 45 45 48 00 44 44 44 44 00 00 00 49 45 45 45 45 45 48 00 44 44 44 44 00 44 00 00 00 00 49 45 45 45 00 45 45 00 44 44 44 00 00 00 00 00 00 00 45 45 45 45 48 00 00 44 44 44 00 00 00 00 00 00 45 45 45 45 45 45 48 44 44 44 00 00 00 00 49 49 45 45 45 45 44 44 44 00 00 00 49 45 45 45 45 45 45 00 44 44 44 00 00 00 00 49 45 45 45 45 00 44 44 44 44 00 00 00 00 49 49 45 45 45 45 48 00 44 44 00 00 00 00 45 45 00 45 45 48 48 44 44 44 44 00 00 00 00 00 49 49 45 45 45 45 00 44 00 00 00 00 00 00 45 45 45 00 44 44 00 44 44 00 00 00 00 45 45 45 45 00 44 44 44 00 00 49 45 45 45 45 00 44 44 44 44 44 00 00 00 00 00 45 45 45 48 00 44 44 44 44 00 00 00 00 00 45 45 45 00 00 44 44 44 00 00 00 00 00 49 45 45 45 45 00 44 44 44 44 44 00 00 00 00 00 00 49 49 45 45 45 45 00 00 44 44 44 00 00 00 00 49 49 45 45 48 45 00 44 44 00 00 00 00 00 00 49 45 45 45 45 45 45 48 00 44 44 44 44 00 00 00 00 00 00 00 00 49 45 45 45 45 45 00 44 44 44 00 00 00 00 49 45 45 45 45 45 45 00 44 44 00 00 00 00 00 00 49 49 45 45 45 45 48 45 00 44 44 44 00 00 00 00 00 00 00 49 45 45 45 45 45 48 00 44 44 44 44 00 00 00 00 45 45 45 45 48 00 44 44 44 44 44 00 00 49 45 45 45 45 00 44 44 44 44 44 00 00 00 45 45 45 45 48 00 44 44 44 44 00 00 00 00 49 45 45 45 48 00 44 44 44 00 00 00 00 00 49 45 45 45 45 45 45 45 45 00 44 44 44 44 00 00 00 00 00 00 45 45 45 45 45 00 44 44 44 00 00 00 00 00 45 00 45 48 00 00 44 44 00 00 00 00 00 00 00 49 45
*/
