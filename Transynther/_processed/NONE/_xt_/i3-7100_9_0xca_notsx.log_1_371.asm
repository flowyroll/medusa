.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ac50, %r15
cmp $46205, %r10
movw $0x6162, (%r15)
nop
cmp $36405, %rbx
lea addresses_D_ht+0x11890, %r14
nop
nop
nop
dec %r13
movl $0x61626364, (%r14)
xor %r10, %r10
lea addresses_normal_ht+0xb030, %r13
nop
xor %r10, %r10
mov (%r13), %rcx
cmp %rbx, %rbx
lea addresses_A_ht+0x9898, %r13
nop
nop
xor %rbx, %rbx
mov (%r13), %r10
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x14d90, %rdi
cmp %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $49776, %rdi
lea addresses_UC_ht+0x19da2, %rsi
lea addresses_WC_ht+0x4c30, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $93, %rcx
rep movsq
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x80b0, %rsi
lea addresses_D_ht+0x1b330, %rdi
nop
nop
sub $22507, %r14
mov $46, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_UC_ht+0xb730, %rsi
lea addresses_normal_ht+0x96b0, %rdi
nop
nop
nop
nop
inc %rbx
mov $81, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_D_ht+0x14030, %rsi
lea addresses_WC_ht+0x37f0, %rdi
xor %r14, %r14
mov $94, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_UC_ht+0x9530, %r15
nop
sub $4228, %rdi
movw $0x6162, (%r15)
nop
nop
dec %rbx
lea addresses_WC_ht+0x435c, %r13
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r13), %rdi
nop
nop
and $10139, %r10
lea addresses_D_ht+0x52f0, %rsi
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Load
mov $0x6aa4ab0000000c88, %rdi
nop
nop
nop
and %r14, %r14
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
inc %rdi

// Load
lea addresses_normal+0x15030, %rdx
nop
nop
sub $26999, %rax
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
cmp $32295, %rax

// Store
lea addresses_RW+0x104b0, %rdi
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rdi)
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x19550, %rdi
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
xor $13719, %r12

// Store
lea addresses_US+0x14630, %r8
clflush (%r8)
nop
nop
add %r12, %r12
movb $0x51, (%r8)
nop
nop
nop
and $62598, %r9

// Load
lea addresses_US+0x11e1a, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $27495, %rdx
mov (%r9), %r14d
nop
nop
nop
nop
nop
and $36064, %r8

// Faulty Load
lea addresses_normal+0x15030, %rdi
nop
nop
nop
nop
cmp %r14, %r14
movb (%rdi), %r12b
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_US', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 1}
34
*/
