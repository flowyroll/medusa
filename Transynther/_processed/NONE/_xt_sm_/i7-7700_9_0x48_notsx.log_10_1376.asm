.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rdi
lea addresses_D_ht+0xe69, %rbp
nop
nop
nop
nop
nop
and $45652, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
and %r14, %r14
pop %rdi
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xcf69, %rdx
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_A+0x1af69, %rdi
nop
nop
nop
sub $34782, %rcx
movb (%rdi), %r12b
nop
sub $59910, %r9

// Store
lea addresses_A+0x1af69, %rcx
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x3a69, %r15
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
add %rcx, %rcx

// Store
lea addresses_RW+0xf069, %rcx
nop
nop
nop
nop
sub %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0x1111d, %r9
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r9)
nop
sub %rcx, %rcx

// Load
lea addresses_US+0x17b69, %rcx
nop
nop
inc %rdx
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_A+0x1af69, %rdi
sub %rdx, %rdx
mov (%rdi), %si
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
