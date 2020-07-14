.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x208d, %rsi
lea addresses_A_ht+0xa75, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $100, %rcx
rep movsq
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x1acb9, %rsi
lea addresses_WC_ht+0x1438d, %rdi
nop
nop
nop
nop
nop
xor $13569, %r11
mov $53, %rcx
rep movsw
sub $12402, %r10
lea addresses_WT_ht+0x3409, %rdi
nop
and $6661, %r8
movb $0x61, (%rdi)
nop
dec %rcx
lea addresses_WT_ht+0xefa8, %rsi
lea addresses_WC_ht+0x1e5a5, %rdi
clflush (%rsi)
sub %r9, %r9
mov $54, %rcx
rep movsl
nop
nop
nop
sub $10713, %rdi
lea addresses_A_ht+0x1770d, %rsi
lea addresses_D_ht+0x1d9f3, %rdi
nop
nop
nop
xor %r12, %r12
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x718d, %rdi
nop
xor %r9, %r9
mov (%rdi), %rcx
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x193cd, %r11
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r11), %esi
nop
nop
dec %r10
lea addresses_A_ht+0x528d, %rsi
lea addresses_UC_ht+0x118d, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $117, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x19259, %rsi
lea addresses_UC_ht+0x13895, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
and $16591, %r12
lea addresses_WT_ht+0x18f55, %rsi
lea addresses_normal_ht+0xe8cd, %rdi
nop
nop
nop
sub %r12, %r12
mov $23, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x16c8d, %rsi
lea addresses_D_ht+0xd8ad, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $116, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0xd08d, %r12
xor $32203, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r12)
dec %rcx
lea addresses_UC_ht+0x28ff, %rsi
lea addresses_UC_ht+0x688d, %rdi
and %r9, %r9
mov $60, %rcx
rep movsq
nop
nop
sub $46956, %rcx
lea addresses_WT_ht+0x608d, %r10
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r10)
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_normal+0x9eb, %r15
nop
nop
nop
nop
nop
cmp $32256, %rax
mov (%r15), %rbp
nop
nop
nop
nop
nop
add $2310, %rdi

// Store
lea addresses_WC+0x1bd0d, %r15
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
xor $48452, %rax

// Store
mov $0x6cd, %r9
nop
xor $53442, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r9)
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0xc5cd, %r14
nop
nop
nop
nop
xor $24557, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r14)
add %r14, %r14

// Load
lea addresses_UC+0xc78d, %r15
nop
nop
add %rbp, %rbp
mov (%r15), %r14w
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_RW+0x1208d, %r13
nop
nop
xor %r14, %r14
movb (%r13), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 531}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
