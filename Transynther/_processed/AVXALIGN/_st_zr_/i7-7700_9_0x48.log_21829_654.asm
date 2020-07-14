.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe64e, %rax
nop
nop
nop
nop
add $16229, %r15
mov (%rax), %r13
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1b49c, %rsi
lea addresses_D_ht+0x7e0c, %rdi
nop
nop
nop
nop
inc %r13
mov $47, %rcx
rep movsw
nop
nop
add $33030, %r13
lea addresses_normal_ht+0x1b3c8, %rcx
clflush (%rcx)
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
add $32505, %r15
lea addresses_normal_ht+0x1452c, %rax
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rax
movaps %xmm4, (%rax)
nop
nop
nop
nop
nop
and $10609, %r15
lea addresses_WT_ht+0xe02c, %rsi
nop
sub $18722, %r15
movw $0x6162, (%rsi)
sub $5522, %r10
lea addresses_UC_ht+0x12c, %rsi
lea addresses_UC_ht+0x1bb2c, %rdi
nop
nop
nop
nop
nop
xor $61250, %r9
mov $67, %rcx
rep movsl
add %rdi, %rdi
lea addresses_WC_ht+0x1832c, %rsi
lea addresses_A_ht+0xdd2c, %rdi
nop
nop
nop
nop
add $31566, %r13
mov $111, %rcx
rep movsl
nop
nop
nop
nop
and $39585, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0x912c, %rsi
cmp %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%rsi)
nop
nop
xor $37663, %r11

// Store
lea addresses_A+0x1d2a2, %r13
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x323eea000000042c, %rdx
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
inc %rbp

// Faulty Load
lea addresses_US+0x1a12c, %r14
nop
nop
nop
xor %rdx, %rdx
mov (%r14), %r12w
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'58': 19333, '00': 2496}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 00 58 58 58 00 00 00 58 58 58 58 58 00 00 00 58 58 58 58 00 58 58 58 00 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58
*/
