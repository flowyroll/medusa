.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xa91, %r8
nop
nop
nop
nop
nop
add $51519, %r13
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
add $51747, %rcx
lea addresses_WC_ht+0xa0d1, %rsi
lea addresses_WC_ht+0x72d1, %rdi
nop
inc %r10
mov $68, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x951, %rsi
lea addresses_D_ht+0x9fc5, %rdi
nop
nop
nop
dec %r15
mov $53, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x8091, %r10
nop
sub %r12, %r12
mov (%r10), %si
nop
nop
nop
nop
and $45970, %r15
lea addresses_UC_ht+0x62d9, %r10
nop
nop
nop
nop
sub $45751, %rcx
mov (%r10), %r8w
sub $36318, %rcx
lea addresses_A_ht+0x3491, %rsi
lea addresses_normal_ht+0x11e91, %rdi
clflush (%rsi)
nop
nop
and %r15, %r15
mov $18, %rcx
rep movsb
nop
nop
sub $51481, %rdi
lea addresses_UC_ht+0x1cf91, %rdi
nop
nop
nop
xor $57347, %r8
movl $0x61626364, (%rdi)
nop
nop
xor $15093, %rsi
lea addresses_normal_ht+0x11011, %rcx
nop
cmp %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rcx)
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0xe191, %rsi
lea addresses_A_ht+0x15291, %rdi
nop
nop
xor $42412, %r13
mov $123, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x3f91, %rsi
lea addresses_WC_ht+0x16891, %rdi
nop
nop
nop
nop
nop
sub $58192, %r15
mov $0, %rcx
rep movsb
nop
and $10573, %r8
lea addresses_D_ht+0xf271, %rsi
lea addresses_A_ht+0xd6c0, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $59, %rcx
rep movsq
nop
and $19964, %rcx
lea addresses_WC_ht+0xc891, %r13
nop
xor $7110, %rsi
mov (%r13), %ecx
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_UC+0x15291, %r12
xor %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movaps %xmm0, (%r12)
nop
nop
nop
nop
nop
cmp $10192, %r10

// Store
lea addresses_WT+0x7211, %rsi
and $1007, %r13
movw $0x5152, (%rsi)
nop
nop
add $49402, %rsi

// Store
lea addresses_normal+0x5691, %rsi
nop
nop
nop
nop
and $59557, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
and $20807, %r10

// Store
lea addresses_UC+0x11e3, %r13
nop
nop
inc %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
dec %r13

// Load
lea addresses_US+0x1be91, %rsi
nop
and %r10, %r10
mov (%rsi), %r12
nop
sub %r13, %r13

// Store
mov $0x140efb0000000add, %rcx
nop
add $9234, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rcx)
dec %r9

// Store
lea addresses_US+0x1ce91, %r9
dec %r13
mov $0x5152535455565758, %r12
movq %r12, (%r9)
nop
xor %r12, %r12

// Faulty Load
lea addresses_normal+0x5691, %r9
xor $63263, %rcx
mov (%r9), %ebp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
