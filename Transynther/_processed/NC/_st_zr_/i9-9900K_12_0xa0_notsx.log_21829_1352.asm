.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x186b0, %rsi
lea addresses_UC_ht+0x7cf0, %rdi
add %r12, %r12
mov $64, %rcx
rep movsw
nop
xor %r12, %r12
lea addresses_UC_ht+0x67c8, %rsi
lea addresses_WC_ht+0xceed, %rdi
nop
nop
nop
nop
inc %r8
mov $3, %rcx
rep movsw
nop
nop
nop
sub $3182, %r12
lea addresses_UC_ht+0x65f0, %rsi
lea addresses_WT_ht+0x67b0, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $23869, %r9
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
and $31781, %r12
lea addresses_D_ht+0x3b30, %rsi
lea addresses_WC_ht+0x1bca0, %rdi
nop
nop
nop
and %rax, %rax
mov $7, %rcx
rep movsl
inc %rax
lea addresses_normal_ht+0x1e10c, %rcx
nop
inc %rsi
movb $0x61, (%rcx)
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x14cb0, %r12
nop
and %rdi, %rdi
mov (%r12), %cx
add %rdi, %rdi
lea addresses_normal_ht+0x12820, %rsi
lea addresses_WC_ht+0x1d2f0, %rdi
nop
nop
nop
xor %r9, %r9
mov $3, %rcx
rep movsw
nop
nop
inc %r8
lea addresses_A_ht+0xa230, %rsi
lea addresses_UC_ht+0x145ed, %rdi
nop
nop
nop
and %r11, %r11
mov $6, %rcx
rep movsq
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1ebb0, %r11
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
nop
and $39103, %r9
lea addresses_normal_ht+0x15db5, %r9
nop
nop
nop
nop
nop
and $28932, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x12c30, %rsi
lea addresses_WT_ht+0x1d890, %rdi
nop
nop
xor %r12, %r12
mov $2, %rcx
rep movsq
nop
dec %rax
lea addresses_UC_ht+0x335c, %r12
nop
nop
add $39619, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
cmp $15636, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_UC+0xc430, %r8
nop
nop
add $15009, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r8)
nop
add $18773, %r8

// Store
lea addresses_PSE+0x67f5, %r15
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
cmp $7407, %rdi

// Store
lea addresses_RW+0xc845, %r8
dec %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x73e8, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %rdi
movntdq %xmm4, (%rdi)
add %r12, %r12

// Store
lea addresses_WT+0x38c0, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movntdq %xmm4, (%rdi)
inc %rsi

// Store
mov $0xab0, %rdi
nop
nop
nop
inc %r10
movw $0x5152, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
xor $48602, %r10

// Load
mov $0x58282e00000002b0, %r8
nop
nop
nop
nop
nop
xor $2689, %r10
movaps (%r8), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
inc %r12

// Load
lea addresses_D+0x1810, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %rdi
nop
nop
nop
nop
nop
and $30414, %r12

// Load
mov $0x237ec10000000ab0, %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
inc %rsi

// Faulty Load
mov $0x71133e0000000ab0, %rdi
clflush (%rdi)
nop
nop
nop
inc %r15
mov (%rdi), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'52': 19703, '00': 2126}
52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 00 00 00 52 52 52 52 52 00 00 00 00 52 00 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 52 00 52 00 00 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
