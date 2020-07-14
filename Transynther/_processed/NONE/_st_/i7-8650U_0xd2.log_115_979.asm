.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13d1a, %rax
nop
nop
nop
nop
xor $62660, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rax)
dec %rsi
lea addresses_WC_ht+0x232e, %rsi
lea addresses_WT_ht+0x311a, %rdi
nop
nop
xor $14738, %r8
mov $40, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_WC_ht+0x13f5a, %rsi
lea addresses_WT_ht+0xfbc4, %rdi
nop
inc %r11
mov $99, %rcx
rep movsb
nop
nop
nop
sub $20363, %r11
lea addresses_UC_ht+0x1895a, %rsi
lea addresses_UC_ht+0x17b1a, %rdi
clflush (%rdi)
nop
nop
cmp %r15, %r15
mov $63, %rcx
rep movsl
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1a01a, %rdi
nop
cmp $33575, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rdi)
inc %rsi
lea addresses_WC_ht+0x1c51a, %rsi
lea addresses_D_ht+0xaf1a, %rdi
clflush (%rdi)
nop
cmp $7733, %r11
mov $85, %rcx
rep movsl
nop
and %r8, %r8
lea addresses_WT_ht+0x1e91a, %r14
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rsi

// Store
lea addresses_UC+0x109a, %rax
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rax)
add %rax, %rax

// Store
lea addresses_PSE+0xf3c6, %r13
nop
nop
nop
nop
add $30788, %r10
movb $0x51, (%r13)
nop
and $21823, %r8

// Store
lea addresses_UC+0xf64c, %r8
nop
nop
nop
nop
sub $40806, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
xor $1106, %rsi

// Store
lea addresses_US+0x1a91a, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rsi)
inc %r13

// Store
lea addresses_A+0x10e68, %rax
clflush (%rax)
nop
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%rax)
add %rax, %rax

// Faulty Load
lea addresses_WT+0x191a, %rsi
nop
nop
nop
nop
dec %rax
mov (%rsi), %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'58': 115}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
