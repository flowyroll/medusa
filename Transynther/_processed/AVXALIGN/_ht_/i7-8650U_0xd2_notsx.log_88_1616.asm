.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcab8, %r14
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x8a68, %r15
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1a7f8, %rsi
lea addresses_normal_ht+0x6ab8, %rdi
nop
nop
nop
add %r14, %r14
mov $86, %rcx
rep movsq
and %r15, %r15
lea addresses_A_ht+0x1217a, %rdi
nop
nop
nop
nop
nop
sub $31127, %rbp
movw $0x6162, (%rdi)
nop
nop
sub $51414, %r15
lea addresses_WC_ht+0x12b8, %r15
clflush (%r15)
nop
nop
add %r9, %r9
mov (%r15), %rdi
nop
nop
nop
nop
xor $40940, %r14
lea addresses_A_ht+0x162b8, %r15
clflush (%r15)
nop
nop
nop
nop
inc %rbp
mov (%r15), %cx
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x7ab8, %r9
nop
nop
nop
xor $13331, %r15
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rsi
nop
sub $26269, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp

// Store
lea addresses_A+0x8eb8, %r13
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r13)
add %rbp, %rbp

// Faulty Load
mov $0x30c40000000ab8, %rbp
xor $24536, %r15
vmovntdqa (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'44': 77, '45': 11}
44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 45 44 44
*/
