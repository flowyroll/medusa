.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1b346, %rbp
nop
sub $32069, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
and $4201, %rcx
lea addresses_WC_ht+0xda9e, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rax), %r8d
nop
inc %rax
lea addresses_UC_ht+0xb19e, %rsi
lea addresses_A_ht+0x191fe, %rdi
nop
and %rax, %rax
mov $40, %rcx
rep movsw
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x19296, %rsi
lea addresses_WT_ht+0x5b1e, %rdi
nop
nop
nop
add %rdx, %rdx
mov $120, %rcx
rep movsw
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rbx

// Faulty Load
lea addresses_US+0x16f9e, %rbx
nop
add %rbp, %rbp
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
