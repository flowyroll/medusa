.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6ab4, %r10
nop
nop
nop
xor $38366, %rbp
mov (%r10), %r9
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x4e8, %rsi
lea addresses_WC_ht+0x197a8, %rdi
nop
nop
sub $3677, %r8
mov $48, %rcx
rep movsq
nop
nop
add $26906, %rdi
lea addresses_WC_ht+0x16428, %r8
nop
add %r9, %r9
movw $0x6162, (%r8)
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x11fe8, %rsi
lea addresses_A_ht+0x1d150, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $15, %rcx
rep movsl
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x8aa8, %r8
and $8535, %r13
mov (%r8), %r9
add %r8, %r8
lea addresses_D_ht+0x37a8, %rsi
lea addresses_UC_ht+0x16da8, %rdi
nop
nop
nop
nop
nop
and $39072, %rbp
mov $37, %rcx
rep movsw
xor %r8, %r8
lea addresses_UC_ht+0x167a8, %rsi
lea addresses_UC_ht+0x1cfa8, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $61, %rcx
rep movsl
nop
inc %rcx
lea addresses_UC_ht+0x107a8, %rdi
and %r9, %r9
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
xor %r8, %r8
lea addresses_A_ht+0xe928, %r13
nop
nop
sub $6477, %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xafa8, %rsi
lea addresses_D_ht+0xe9a8, %rdi
nop
nop
sub $4515, %rbp
mov $110, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x18160, %r8
nop
inc %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
cmp $15270, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x149ee, %rdx
nop
inc %rsi
movb $0x51, (%rdx)
xor $9932, %rdx

// Store
lea addresses_UC+0xf1a8, %rax
clflush (%rax)
nop
nop
cmp $29240, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
sub $33509, %r14

// Store
lea addresses_D+0xcd48, %rcx
xor $14831, %rdx
movb $0x51, (%rcx)
nop
dec %rdx

// Store
mov $0x9a8, %rax
nop
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%rax)
and $63106, %rcx

// Store
lea addresses_US+0x1da28, %r12
clflush (%r12)
nop
nop
dec %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovntdq %ymm7, (%r12)
nop
and $16874, %rsi

// Store
lea addresses_D+0x18568, %r12
and %rsi, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_A+0x187a8, %rdx
nop
nop
nop
nop
add $57294, %r12
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'00': 160}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
