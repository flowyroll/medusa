.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc8e8, %rsi
lea addresses_normal_ht+0x16b28, %rdi
nop
add %r14, %r14
mov $43, %rcx
rep movsl
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x66c8, %r13
clflush (%r13)
sub $56773, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r13)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x13ca0, %rsi
lea addresses_normal_ht+0x10be2, %rdi
nop
nop
nop
nop
dec %r9
mov $49, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x1771a, %rsi
nop
nop
xor %r9, %r9
mov (%rsi), %r11w
nop
nop
inc %r11
lea addresses_A_ht+0xfac8, %r9
xor $28804, %rdi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x2cc8, %r13
nop
nop
nop
sub $10838, %rdi
mov (%r13), %rsi
nop
nop
dec %rcx
lea addresses_UC_ht+0x18008, %r11
nop
nop
dec %rdi
movw $0x6162, (%r11)
cmp %r9, %r9
lea addresses_D_ht+0x2352, %rsi
lea addresses_A_ht+0x64d8, %rdi
nop
nop
nop
nop
nop
and $1947, %r9
mov $103, %rcx
rep movsw
cmp %r14, %r14
lea addresses_UC_ht+0x5988, %r14
nop
nop
nop
sub $21422, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r14
movntdq %xmm3, (%r14)
nop
sub %r14, %r14
lea addresses_normal_ht+0x17e88, %r14
nop
xor $41769, %rdi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x93c8, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x4148, %rsi
lea addresses_D_ht+0x16f7f, %rdi
clflush (%rsi)
nop
nop
nop
xor $49388, %r10
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
add $51841, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_A+0xcea7, %r8
nop
nop
nop
nop
nop
add $40609, %rdx
movl $0x51525354, (%r8)

// Exception!!!
nop
nop
mov (0), %r13
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0x1e4c8, %rax
add %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
add $35397, %rax

// Load
lea addresses_A+0x19288, %r14
sub $11324, %rdx
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
add $11023, %rax

// Store
lea addresses_A+0x13e3e, %r13
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
and %rdx, %rdx

// Store
lea addresses_normal+0x1b688, %rax
clflush (%rax)
inc %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
sub $50283, %r8

// Faulty Load
lea addresses_A+0x19288, %r13
and %rax, %rax
mov (%r13), %r14d
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'00': 242}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
