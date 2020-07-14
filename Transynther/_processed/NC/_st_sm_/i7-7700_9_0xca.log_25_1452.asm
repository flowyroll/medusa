.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e618, %rsi
lea addresses_A_ht+0x19418, %rdi
nop
sub $34398, %rax
mov $21, %rcx
rep movsl
sub %r11, %r11
lea addresses_WC_ht+0x1405b, %rsi
lea addresses_normal_ht+0x5c18, %rdi
nop
cmp $60487, %r15
mov $99, %rcx
rep movsb
nop
inc %rdi
lea addresses_WT_ht+0x2418, %rcx
add %r8, %r8
movw $0x6162, (%rcx)
nop
nop
add $48776, %rax
lea addresses_WT_ht+0x1c020, %rsi
nop
nop
nop
nop
cmp $50409, %rdi
mov (%rsi), %r11w
nop
nop
nop
nop
and $11231, %rsi
lea addresses_UC_ht+0x14cb0, %rsi
lea addresses_WC_ht+0x126e4, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $52, %rcx
rep movsb
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x12218, %rax
nop
nop
nop
cmp $34870, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1b418, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r8, %r8
mov (%rax), %rdi
nop
nop
nop
and $32261, %r11
lea addresses_UC_ht+0xcdec, %r11
clflush (%r11)
nop
nop
nop
nop
sub $61651, %r10
mov (%r11), %edi
sub %rcx, %rcx
lea addresses_D_ht+0xde18, %r10
cmp %r15, %r15
mov (%r10), %edi
nop
and %rax, %rax
lea addresses_D_ht+0x17c18, %r8
xor %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
cmp $20766, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rdi

// Store
lea addresses_A+0x14618, %r12
nop
nop
nop
nop
inc %r9
movb $0x51, (%r12)
nop
sub %r12, %r12

// Load
mov $0x7f23780000000c18, %r13
sub %r9, %r9
mov (%r13), %r12d
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_WT+0x12ca0, %rdi
nop
xor $53362, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
nop
inc %r12

// Store
lea addresses_D+0x1e572, %rdi
nop
nop
inc %r13
movb $0x51, (%rdi)
nop
nop
sub %rbp, %rbp

// Store
mov $0x7f23780000000c18, %r9
cmp $31259, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
and %r14, %r14

// Store
lea addresses_RW+0x6818, %rbp
nop
nop
add $45977, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x7f23780000000c18, %r9
sub $22990, %rdi
movl $0x51525354, (%r9)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_US+0xe018, %r13
sub $7016, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r13)
and %r12, %r12

// Faulty Load
mov $0x7f23780000000c18, %r9
nop
nop
nop
nop
cmp $15500, %r11
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'54': 25}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
