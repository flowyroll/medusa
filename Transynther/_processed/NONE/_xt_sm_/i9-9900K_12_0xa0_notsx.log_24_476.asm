.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12b2f, %r12
nop
nop
nop
cmp $14093, %r11
movb $0x61, (%r12)
nop
nop
nop
nop
nop
add $13332, %r15
lea addresses_UC_ht+0x13b2f, %rbx
nop
and %r11, %r11
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rcx
cmp %r12, %r12
lea addresses_WC_ht+0x1292f, %rcx
nop
nop
nop
cmp $17261, %r15
movb (%rcx), %bl
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1132f, %rbx
nop
nop
nop
nop
dec %r9
movl $0x61626364, (%rbx)
nop
cmp $50597, %r11
lea addresses_UC_ht+0x4d2f, %r12
nop
nop
nop
sub $18583, %rdi
mov (%r12), %r15
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xac33, %rsi
lea addresses_A_ht+0x121ef, %rdi
nop
nop
cmp %r15, %r15
mov $28, %rcx
rep movsw
and $40812, %rsi
lea addresses_normal_ht+0x72f, %r11
clflush (%r11)
nop
nop
cmp %r12, %r12
movb (%r11), %r15b
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1bd3f, %rsi
lea addresses_WC_ht+0x118c7, %rdi
and %r9, %r9
mov $49, %rcx
rep movsw
nop
dec %r9
lea addresses_WC_ht+0x340f, %rsi
lea addresses_WT_ht+0xe8b1, %rdi
xor %r15, %r15
mov $18, %rcx
rep movsq
and %rdi, %rdi
lea addresses_WT_ht+0x1c4eb, %rsi
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rsi)
nop
xor $50410, %r9
lea addresses_D_ht+0x11e6f, %rsi
lea addresses_A_ht+0x1946f, %rdi
nop
nop
nop
nop
nop
xor $11229, %r9
mov $76, %rcx
rep movsw
and $51973, %rbx
lea addresses_A_ht+0x1688f, %rsi
lea addresses_normal_ht+0x133ff, %rdi
and $22064, %r9
mov $29, %rcx
rep movsl
nop
xor $6931, %rsi
lea addresses_A_ht+0x16405, %r11
nop
nop
nop
xor $31630, %r12
mov (%r11), %esi
nop
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x5d07, %r8
nop
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%r8)
inc %r12

// Store
lea addresses_PSE+0x14b2f, %rdi
nop
add %r15, %r15
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_A+0xb32f, %rdi
nop
xor $11527, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
sub $12848, %r8

// REPMOV
mov $0x7150680000000b2f, %rsi
lea addresses_WC+0x1cae7, %rdi
nop
nop
sub %rbx, %rbx
mov $42, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_A+0xb32f, %rsi
nop
nop
nop
nop
nop
xor $49225, %r8
movb (%rsi), %r10b
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'58': 24}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
