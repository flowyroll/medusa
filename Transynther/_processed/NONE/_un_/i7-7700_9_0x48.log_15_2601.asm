.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x473c, %r11
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
xor $7098, %r9
lea addresses_A_ht+0x10660, %rsi
lea addresses_WT_ht+0x1d660, %rdi
nop
and %r15, %r15
mov $87, %rcx
rep movsq
xor $58472, %r11
lea addresses_A_ht+0x9a60, %rdx
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
xor $25698, %r9
lea addresses_WC_ht+0x8e00, %r9
nop
nop
nop
nop
xor $56793, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
xor $22985, %r9
lea addresses_A_ht+0x1bf60, %rsi
lea addresses_WC_ht+0xd3c8, %rdi
nop
nop
nop
nop
sub $18498, %r11
mov $8, %rcx
rep movsq
add $8352, %r13
lea addresses_D_ht+0x1e60, %r13
nop
nop
dec %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and $22786, %r11
lea addresses_normal_ht+0x14a60, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x3a80, %rsi
lea addresses_A_ht+0x1f60, %rdi
nop
dec %r11
mov $107, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1e0c8, %r9
clflush (%r9)
nop
nop
xor %r15, %r15
mov (%r9), %r11d
xor %rdx, %rdx
lea addresses_normal_ht+0x116c0, %rdx
cmp %r15, %r15
movl $0x61626364, (%rdx)
nop
nop
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1f260, %rsi
lea addresses_WC+0x16a60, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r13, %r13
mov $41, %rcx
rep movsb
inc %rdi

// Faulty Load
lea addresses_WC+0x13a60, %r9
nop
nop
nop
nop
nop
add $45491, %r11
movb (%r9), %r13b
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'f0': 15}
f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0
*/
