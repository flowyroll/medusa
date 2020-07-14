.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7f58, %rsi
lea addresses_normal_ht+0x15970, %rdi
nop
nop
inc %r13
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
and $12518, %rbp
lea addresses_WC_ht+0x5958, %r13
nop
add $60420, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x13080, %r9
nop
nop
nop
nop
nop
and $55967, %rcx
mov (%r9), %di
nop
nop
nop
nop
nop
add $19692, %rbp
lea addresses_A_ht+0x1a158, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rcx), %edi
nop
inc %r13
lea addresses_A_ht+0x658, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
movb (%rbp), %r9b
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x3a74, %rsi
lea addresses_WT+0x136ac, %rdi
nop
nop
xor %r14, %r14
mov $80, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_RW+0x1dd58, %rax
dec %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
sub $44846, %rdi

// Store
mov $0xb752a0000000898, %rdi
nop
and $28711, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
add %rax, %rax

// Faulty Load
lea addresses_A+0x1b958, %rsi
nop
nop
xor %rcx, %rcx
mov (%rsi), %ax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'00': 4}
00 00 00 00
*/
