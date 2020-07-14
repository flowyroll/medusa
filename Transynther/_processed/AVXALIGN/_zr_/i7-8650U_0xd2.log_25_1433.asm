.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1dd14, %r12
nop
nop
cmp $60047, %r10
movl $0x61626364, (%r12)
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xb824, %rsi
lea addresses_WT_ht+0x183d4, %rdi
nop
nop
nop
add %rbx, %rbx
mov $95, %rcx
rep movsq
nop
nop
nop
cmp $5713, %rbx
lea addresses_UC_ht+0xd2b4, %rcx
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x19a54, %rsi
lea addresses_WC_ht+0xcdd4, %rdi
nop
nop
nop
nop
nop
xor $59619, %r14
mov $65, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1241c, %rdi
xor $41604, %r13
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x4dd4, %rsi
lea addresses_D_ht+0x1dd94, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r14, %r14
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
add $24322, %rdi
lea addresses_UC_ht+0x64e4, %r12
nop
nop
nop
nop
and $8740, %rdi
movw $0x6162, (%r12)
and $6405, %rdi
lea addresses_UC_ht+0x1d9d4, %rsi
lea addresses_WC_ht+0x160be, %rdi
nop
nop
nop
cmp $49318, %r14
mov $26, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xc3d4, %rsi
lea addresses_A_ht+0x81d4, %rdi
nop
nop
nop
nop
nop
sub $8892, %rbx
mov $31, %rcx
rep movsl
nop
cmp $22629, %rbx
lea addresses_UC_ht+0x19dd4, %rsi
lea addresses_WC_ht+0x1c1d4, %rdi
nop
inc %r13
mov $38, %rcx
rep movsq
nop
nop
nop
sub $28497, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x99d4, %r12
nop
nop
and $29466, %rdx
mov (%r12), %r10
nop
nop
add $60497, %r10

// Store
lea addresses_US+0x126d4, %r10
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0x99d4, %r9
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovntdq %ymm6, (%r9)
nop
nop
add %rax, %rax

// Load
lea addresses_WC+0x131d4, %r10
nop
nop
nop
nop
nop
cmp %r9, %r9
movb (%r10), %al
nop
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x41c5350000000ce8, %rdi
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
xor %r10, %r10

// Store
mov $0x126, %r12
nop
nop
sub %rdx, %rdx
movb $0x51, (%r12)
nop
nop
nop
nop
inc %r9

// Faulty Load
lea addresses_WT+0x99d4, %r9
clflush (%r9)
nop
nop
nop
nop
cmp $44467, %r10
movb (%r9), %r12b
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'00': 25}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
