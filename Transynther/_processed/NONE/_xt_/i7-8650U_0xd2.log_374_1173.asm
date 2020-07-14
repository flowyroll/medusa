.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x105e4, %r11
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%r11)
cmp %rcx, %rcx
lea addresses_normal_ht+0x18284, %rdi
nop
nop
cmp %r11, %r11
movb (%rdi), %al
nop
add $41746, %rcx
lea addresses_WC_ht+0x13384, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add %r11, %r11
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x19484, %rsi
lea addresses_normal_ht+0x7204, %rdi
add $46504, %rax
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
and $25940, %rdi
lea addresses_D_ht+0x13c92, %rsi
lea addresses_WT_ht+0xee34, %rdi
clflush (%rdi)
xor %r10, %r10
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1e464, %rdi
nop
nop
dec %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
xor $60634, %r11
lea addresses_UC_ht+0xbe74, %rsi
nop
nop
nop
add $9570, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x14da4, %rsi
xor $62407, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rsi)
nop
and %rdx, %rdx
lea addresses_A_ht+0x1465d, %r10
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r10)
nop
nop
dec %rax
lea addresses_WC_ht+0x1a2a4, %rax
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
sub $16218, %r10
lea addresses_UC_ht+0x5e84, %rdx
nop
nop
nop
xor $53277, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x19084, %r9
nop
nop
and $10276, %r15
movl $0x51525354, (%r9)
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_WT+0xc884, %r15
nop
nop
sub $51920, %r13
mov (%r15), %ebp
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x3484, %rdi
nop
inc %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdi)
nop
dec %r9

// Load
lea addresses_UC+0x3f40, %r13
clflush (%r13)
nop
nop
nop
nop
add $36209, %rdi
movntdqa (%r13), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0xc3c4, %rbp
clflush (%rbp)
nop
nop
nop
sub $52596, %r13
movb $0x51, (%rbp)
xor %rdi, %rdi

// Store
lea addresses_normal+0x13d84, %r8
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r8)
dec %r13

// Store
mov $0x83c050000000e84, %r15
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r15)
inc %rbx

// Store
lea addresses_WC+0x9184, %rbx
nop
nop
nop
nop
and $62206, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_RW+0x9284, %r8
clflush (%r8)
nop
nop
nop
nop
dec %rbx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'32': 374}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
