.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rdi
push %rsi
lea addresses_UC_ht+0x10fe9, %rbx
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rbx)
nop
nop
nop
and $10786, %r13
lea addresses_A_ht+0x14de9, %rdi
nop
add %r9, %r9
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x13c29, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
and $0xffffffffffffffc0, %rdi
vmovaps %ymm1, (%rdi)
nop
nop
nop
nop
nop
sub $12254, %r13
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_UC+0x1dde9, %r14
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
xor $50903, %rbp

// Store
mov $0xa93d900000007e9, %rax
nop
nop
nop
inc %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_normal+0x1bde9, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $63382, %r15
vmovntdqa (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'00': 274}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
