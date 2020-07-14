.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17f9e, %rax
nop
dec %rcx
mov (%rax), %r9
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0xeb9e, %rsi
lea addresses_UC_ht+0x97b4, %rdi
nop
nop
nop
nop
and $51236, %r9
mov $37, %rcx
rep movsq
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x6509, %rsi
lea addresses_WC_ht+0x1bb2f, %rdi
clflush (%rdi)
nop
nop
nop
and $27184, %r15
mov $51, %rcx
rep movsq
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x166, %rsi
lea addresses_A_ht+0x1771e, %rdi
nop
nop
add $20002, %r15
mov $84, %rcx
rep movsw
add %rsi, %rsi
lea addresses_UC_ht+0x10b6, %rcx
nop
sub $47595, %rdi
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
xor $62645, %r15
lea addresses_D_ht+0x12cb6, %r14
sub $3363, %rdi
mov (%r14), %r15
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x119e, %r14
nop
nop
sub $1477, %r15
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
xor $61164, %rsi
lea addresses_normal_ht+0x18e9e, %rax
nop
nop
nop
nop
sub $12442, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x146be, %rsi
lea addresses_A_ht+0xbfce, %rdi
nop
nop
nop
sub %r13, %r13
mov $126, %rcx
rep movsw
nop
nop
nop
nop
nop
add $8764, %rsi
lea addresses_UC_ht+0xbd5e, %r13
nop
nop
nop
add $56091, %rax
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x86ae, %r14
nop
xor $57792, %r15
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
add %rdi, %rdi
lea addresses_A_ht+0x1573e, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor $50021, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r9)
dec %rcx
lea addresses_normal_ht+0x1ca9e, %r15
nop
nop
sub $36735, %rdi
mov (%r15), %ecx
add $28288, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_A+0x8f28, %r14
nop
nop
nop
nop
nop
add $63208, %r9
movb $0x51, (%r14)
nop
nop
nop
xor $47474, %r14

// Store
lea addresses_UC+0x929e, %r8
nop
nop
dec %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
inc %r8

// Load
mov $0x67edf000000041e, %r8
nop
nop
nop
sub %rsi, %rsi
movb (%r8), %r9b
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x1269e, %r14
nop
nop
nop
nop
and $21495, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movntdq %xmm0, (%r14)
add $44332, %rcx

// Faulty Load
lea addresses_UC+0x929e, %r14
nop
and %r8, %r8
mov (%r14), %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 3}
58 58 58
*/
