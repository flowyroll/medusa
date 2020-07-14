.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf47b, %rsi
lea addresses_WC_ht+0xcef9, %rdi
nop
nop
nop
nop
nop
add $20947, %r14
mov $65, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x6ef9, %rbp
nop
cmp $10367, %r10
mov (%rbp), %rsi
nop
nop
nop
nop
xor $41852, %r14
lea addresses_UC_ht+0x1edb9, %r14
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x11c71, %rdi
nop
nop
xor $35971, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdi)
cmp %r10, %r10
lea addresses_D_ht+0x17249, %r12
nop
nop
nop
nop
sub $23824, %rbp
movl $0x61626364, (%r12)
nop
add $17935, %rsi
lea addresses_WT_ht+0x1c6eb, %r14
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r14
vmovaps %ymm1, (%r14)
nop
nop
nop
xor $4620, %r12
lea addresses_WT_ht+0x25f9, %rdi
nop
add %rcx, %rcx
movl $0x61626364, (%rdi)
nop
xor $33225, %rdi
lea addresses_A_ht+0x126f9, %rsi
lea addresses_UC_ht+0x63f9, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $36, %rcx
rep movsq
nop
nop
nop
cmp $26746, %r12
lea addresses_A_ht+0x16c37, %rsi
lea addresses_normal_ht+0x12049, %rdi
nop
add %rdx, %rdx
mov $28, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x52f9, %r10
nop
nop
nop
sub %rcx, %rcx
mov (%r10), %r12
add %rbp, %rbp
lea addresses_A_ht+0x5ef9, %rdx
nop
nop
nop
nop
and %rdi, %rdi
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1465d, %rcx
nop
add %r10, %r10
mov (%rcx), %rsi
nop
nop
nop
inc %rbp
lea addresses_D_ht+0xd6c9, %r14
clflush (%r14)
dec %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r14)
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1ccf9, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
add $42688, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rsi

// Store
mov $0x6f9, %rax
nop
add %r12, %r12
movl $0x51525354, (%rax)
add %r14, %r14

// Store
lea addresses_PSE+0x1d3f9, %r14
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_RW+0x18e4d, %r14
nop
nop
nop
nop
nop
and $3874, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x1aa61, %r14
clflush (%r14)
nop
nop
inc %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
and $23773, %rax

// Store
lea addresses_PSE+0xf38, %rax
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
mov $0x19c3af0000000ef9, %r12
nop
nop
inc %rsi
mov (%r12), %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
