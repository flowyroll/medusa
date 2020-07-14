.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12ef7, %r10
nop
nop
and $55185, %rax
movb $0x61, (%r10)
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x18437, %rbx
nop
nop
nop
add %r13, %r13
mov (%rbx), %r9d
nop
add $27658, %rbx
lea addresses_UC_ht+0x123b7, %rsi
lea addresses_UC_ht+0x4f73, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r10, %r10
mov $44, %rcx
rep movsb
nop
nop
nop
nop
xor $20397, %r13
lea addresses_normal_ht+0x18e37, %r10
nop
nop
nop
nop
nop
sub $18730, %r9
movl $0x61626364, (%r10)
nop
nop
nop
nop
add $47356, %rax
lea addresses_A_ht+0x18723, %rsi
nop
nop
nop
nop
sub $47710, %rax
movb (%rsi), %r12b
nop
xor $30989, %rsi
lea addresses_WC_ht+0xd237, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x12037, %rsi
lea addresses_normal_ht+0xd88f, %rdi
nop
nop
nop
nop
sub $11674, %rbx
mov $91, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x16637, %rsi
nop
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
add $7027, %rcx
lea addresses_D_ht+0x1c237, %rax
nop
nop
nop
xor $10024, %rcx
mov (%rax), %rbx
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x16d87, %r12
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%r12)
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0xb4a8, %r8
nop
cmp $40892, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_US+0x937, %r10
nop
nop
nop
add $4134, %rsi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0xb737, %rcx
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%rcx)
nop
nop
nop
dec %rsi

// Store
lea addresses_WT+0x19037, %r8
clflush (%r8)
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r8)
and %r10, %r10

// Store
lea addresses_D+0x69f7, %rsi
nop
add %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
xor $52595, %rbp

// Faulty Load
lea addresses_WT+0x19037, %r10
and $17641, %rsi
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'00': 1}
00
*/
