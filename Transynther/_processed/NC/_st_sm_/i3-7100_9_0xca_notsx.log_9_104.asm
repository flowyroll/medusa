.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15e13, %rsi
nop
nop
nop
nop
nop
sub $50619, %r8
movb $0x61, (%rsi)
nop
dec %r13
lea addresses_A_ht+0xc553, %rsi
lea addresses_normal_ht+0xd083, %rdi
nop
nop
nop
nop
and $51129, %r8
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x12d13, %rsi
lea addresses_normal_ht+0x2e13, %rdi
clflush (%rdi)
nop
nop
nop
inc %rdx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1aa13, %r8
xor $27365, %rdi
movb $0x61, (%r8)
add %r8, %r8
lea addresses_D_ht+0x11733, %rdx
nop
nop
sub %rsi, %rsi
mov (%rdx), %rcx
nop
nop
nop
nop
nop
and $32143, %r8
lea addresses_UC_ht+0x123c3, %rdx
nop
nop
nop
sub $55935, %rcx
mov (%rdx), %rsi
nop
nop
nop
cmp $55439, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdi

// Store
mov $0x7e81750000000413, %r10
nop
xor $50202, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_D+0xec13, %r8
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
sub $33710, %rdi

// Store
lea addresses_normal+0x1b9a7, %r10
inc %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
xor %r8, %r8

// Store
mov $0xa3e500000000213, %r14
nop
nop
nop
nop
add $36095, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
and $25188, %r8

// Store
lea addresses_D+0x1f013, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rdi)
nop
sub $46227, %rax

// Store
lea addresses_normal+0x1e385, %r8
nop
nop
nop
xor %r15, %r15
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add $64584, %rax

// Faulty Load
mov $0xa3e500000000213, %r12
nop
nop
nop
cmp $22938, %r10
movb (%r12), %r8b
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
