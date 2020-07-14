.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1502b, %rsi
lea addresses_normal_ht+0x982b, %rdi
nop
nop
nop
nop
and $64289, %r12
mov $107, %rcx
rep movsl
nop
dec %r8
lea addresses_UC_ht+0xa42b, %r15
nop
nop
nop
nop
nop
sub $563, %r14
movw $0x6162, (%r15)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x662b, %rsi
lea addresses_WC_ht+0x2f26, %rdi
clflush (%rsi)
nop
add $62367, %r12
mov $108, %rcx
rep movsq
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x187d, %r8
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add $27984, %r15
lea addresses_UC_ht+0x682b, %rsi
lea addresses_D_ht+0x75cb, %rdi
nop
nop
nop
cmp $52292, %rbx
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $30049, %rbx
lea addresses_WC_ht+0x1882b, %r12
nop
nop
sub $24451, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x542b, %r9
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
sub $13436, %rsi

// Store
mov $0x1397be000000072b, %r11
nop
nop
nop
nop
xor $57951, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
cmp %r8, %r8

// Store
mov $0x8eb, %rbp
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_PSE+0x1342b, %rbx
nop
cmp %rsi, %rsi
mov (%rbx), %r9d
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_UC+0x1db37, %r8
nop
nop
nop
nop
sub $53841, %r11
movl $0x51525354, (%r8)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x1512b, %r11
clflush (%r11)
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovaps %ymm0, (%r11)
xor $3833, %rbx

// Store
lea addresses_WC+0x3c7b, %r11
clflush (%r11)
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_A+0xffcb, %rbx
nop
nop
add $23054, %r9
mov (%rbx), %r8d
nop
nop
nop
add $42402, %rbx

// REPMOV
lea addresses_WT+0x9a2b, %rsi
lea addresses_A+0x602b, %rdi
sub %rbp, %rbp
mov $18, %rcx
rep movsq
nop
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x4c2b, %rbp
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
nop
cmp $44047, %r12

// Load
lea addresses_A+0xb2ab, %rdi
nop
nop
sub %rcx, %rcx
movb (%rdi), %r11b
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_WC+0x28c7, %rdi
nop
nop
nop
and %r8, %r8
mov (%rdi), %ebx
nop
nop
cmp $62832, %r9

// Store
lea addresses_PSE+0x97db, %r8
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r8)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
sub $62307, %r9

// Faulty Load
lea addresses_RW+0x4c2b, %r8
sub $65307, %rbp
movb (%r8), %r12b
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'1a': 1}
1a
*/
