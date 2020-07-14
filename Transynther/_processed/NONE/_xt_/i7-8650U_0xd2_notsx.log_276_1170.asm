.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9bff, %rsi
lea addresses_UC_ht+0x135b7, %rdi
nop
nop
nop
nop
nop
and $36630, %r9
mov $10, %rcx
rep movsw
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xe8ef, %r8
nop
nop
nop
sub $41954, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm2
and $0xffffffffffffffc0, %r8
vmovntdq %ymm2, (%r8)
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x11ddf, %rsi
lea addresses_WC_ht+0x1ce57, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $116, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1a53f, %r13
nop
nop
inc %rsi
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
nop
nop
xor $16098, %rax
lea addresses_normal_ht+0xa27f, %r13
add $53686, %r8
mov (%r13), %r9w
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xa7ff, %r11
nop
nop
inc %r8
movw $0x6162, (%r11)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x18b9f, %r9
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
and $15205, %r13
lea addresses_D_ht+0x73e3, %r8
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r8), %r13w
nop
nop
xor $13147, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WC+0x166eb, %r8
nop
nop
nop
nop
nop
and $31186, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r8)

// Exception!!!
nop
nop
nop
mov (0), %rsi
and %rbx, %rbx

// Store
lea addresses_US+0x1c5ff, %r8
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r8)
nop
nop
and $60449, %rsi

// Faulty Load
lea addresses_PSE+0x101ff, %r11
nop
nop
nop
nop
xor %rbp, %rbp
movb (%r11), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'33': 276}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
