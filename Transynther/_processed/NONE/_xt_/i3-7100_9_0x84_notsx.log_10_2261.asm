.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3e33, %rsi
lea addresses_WC_ht+0x3633, %rdi
nop
nop
inc %r13
mov $22, %rcx
rep movsw
nop
nop
nop
add $3964, %rbp
lea addresses_D_ht+0x1e4b3, %rsi
lea addresses_normal_ht+0x1c89b, %rdi
dec %r13
mov $26, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x53ce720000000877, %r12
nop
sub %rax, %rax
movw $0x5152, (%r12)
nop
nop
nop
inc %rdx

// Store
lea addresses_D+0x148f, %rbp
nop
nop
dec %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbp)
nop
and %r14, %r14

// Store
mov $0x833, %rax
nop
nop
nop
nop
nop
cmp $53177, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
nop
cmp %r14, %r14

// Store
lea addresses_RW+0x12333, %rbp
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%rbp)
cmp %rax, %rax

// Faulty Load
lea addresses_D+0x2233, %rax
clflush (%rax)
nop
and %rbx, %rbx
mov (%rax), %r12w
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
