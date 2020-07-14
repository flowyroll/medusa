.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1ce80, %rdi
add %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x11a00, %rsi
and $61652, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x280, %r10
nop
nop
nop
nop
dec %r8
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
cmp $26921, %rcx
lea addresses_UC_ht+0x1e600, %r10
nop
nop
nop
nop
xor $27858, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xd432, %rsi
add $19051, %rdx
movb $0x61, (%rsi)
sub $21036, %rax
lea addresses_D_ht+0x1162c, %rsi
lea addresses_WC_ht+0x6d90, %rdi
nop
nop
add %r8, %r8
mov $54, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x304e, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
cmp $6638, %rdx
lea addresses_UC_ht+0x7e80, %rsi
lea addresses_WT_ht+0x10680, %rdi
nop
nop
nop
nop
sub $5024, %rbp
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x8d80, %rbp
nop
nop
nop
cmp %rcx, %rcx
mov (%rbp), %esi
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x134d0, %rdi
nop
nop
nop
sub %r10, %r10
movb (%rdi), %dl
nop
nop
nop
sub $42547, %r8
lea addresses_WT_ht+0x19481, %r8
add %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r8
movaps %xmm7, (%r8)
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0xdc20, %rsi
lea addresses_WT_ht+0x19680, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $4141, %rbp
mov $30, %rcx
rep movsw
sub $11496, %rdi
lea addresses_normal_ht+0x9860, %rsi
lea addresses_WC_ht+0x5bd6, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $31, %rcx
rep movsw
xor $38283, %rsi
lea addresses_A_ht+0x1632c, %rsi
lea addresses_A_ht+0x186c0, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $68, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WT+0x8e80, %r14
nop
xor $7039, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r14)
add %rcx, %rcx

// Store
lea addresses_WC+0x1e580, %r8
nop
nop
nop
nop
add $34166, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r8)

// Exception!!!
nop
nop
nop
mov (0), %r8
nop
nop
sub $3860, %r14

// Store
lea addresses_US+0x4ff4, %rcx
nop
nop
xor %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
add $56533, %r8

// Store
lea addresses_UC+0x155e0, %rcx
add $25814, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
add $11592, %r13

// Load
lea addresses_UC+0x2584, %r14
nop
dec %rcx
mov (%r14), %r11w
nop
nop
nop
nop
nop
sub $17812, %r8

// Faulty Load
lea addresses_UC+0x8a80, %r13
clflush (%r13)
nop
nop
nop
xor $14377, %rcx
mov (%r13), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'00': 17102}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
