.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11215, %rsi
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm6, (%rsi)
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0xc505, %rsi
lea addresses_D_ht+0x96a5, %rdi
nop
nop
nop
nop
nop
cmp $10650, %r14
mov $108, %rcx
rep movsl
nop
nop
inc %r11
lea addresses_WC_ht+0x4b95, %rsi
lea addresses_D_ht+0x6a15, %rdi
cmp %r9, %r9
mov $21, %rcx
rep movsq
add %rsi, %rsi
lea addresses_WC_ht+0x6755, %rsi
lea addresses_WC_ht+0x15e15, %rdi
nop
nop
nop
nop
nop
xor $3148, %r10
mov $4, %rcx
rep movsq
nop
nop
add $31317, %r11
lea addresses_UC_ht+0xc533, %r11
nop
nop
and $3501, %rcx
mov (%r11), %r14
nop
add %rcx, %rcx
lea addresses_WT_ht+0xa215, %rsi
lea addresses_WC_ht+0x1c879, %rdi
nop
nop
nop
nop
and $19227, %r11
mov $34, %rcx
rep movsw
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xf315, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rdi), %cx
nop
nop
nop
nop
nop
and $54958, %r9
lea addresses_UC_ht+0x32d1, %rsi
nop
nop
nop
and %r10, %r10
movb $0x61, (%rsi)
inc %rcx
lea addresses_WC_ht+0x1de15, %rsi
lea addresses_A_ht+0xbc15, %rdi
clflush (%rsi)
cmp %r14, %r14
mov $105, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x9015, %rsi
lea addresses_WT_ht+0x98d5, %rdi
sub $57638, %r10
mov $72, %rcx
rep movsl
add $1329, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xe535, %r8
and $5775, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
add $26091, %rdi

// Store
mov $0x905570000000815, %rdi
clflush (%rdi)
nop
nop
xor $55019, %r13
movl $0x51525354, (%rdi)
nop
nop
mfence

// Store
mov $0x36e9820000000215, %rsi
cmp %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rsi)
nop
and $54458, %rsi

// Store
mov $0x4c0d3f0000000215, %rdi
nop
nop
dec %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_A+0xb055, %rdi
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
cmp $30710, %rdi

// Load
lea addresses_RW+0x11405, %r11
nop
nop
nop
nop
nop
add $59184, %rdi
mov (%r11), %r8d
nop
dec %r11

// Load
lea addresses_PSE+0x1fa15, %rsi
nop
and %r13, %r13
mov (%rsi), %r12w
nop
nop
nop
and $43797, %rsi

// REPMOV
lea addresses_A+0x1bb15, %rsi
mov $0x543ca100000007d9, %rdi
nop
inc %r14
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
and $20816, %rcx

// Store
lea addresses_US+0x2fee, %rdi
nop
nop
nop
nop
nop
cmp $13737, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdi)
inc %r13

// Load
lea addresses_RW+0x51f5, %r11
nop
nop
nop
nop
nop
add $59207, %rcx
movb (%r11), %r14b
nop
nop
xor %rsi, %rsi

// Store
lea addresses_D+0x7615, %rdi
sub $54886, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
xor $39563, %rcx

// Store
lea addresses_WC+0x18c65, %r13
nop
nop
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%r13)
nop
inc %r8

// Faulty Load
mov $0x36e9820000000215, %r8
nop
nop
nop
cmp $15649, %rsi
mov (%r8), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'86': 1}
86
*/
