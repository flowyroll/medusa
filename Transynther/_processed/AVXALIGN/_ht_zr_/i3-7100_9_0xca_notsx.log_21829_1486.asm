.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1bbb1, %rsi
lea addresses_WT_ht+0x13239, %rdi
nop
cmp $20446, %r15
mov $103, %rcx
rep movsq
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x2efd, %rax
and %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x135b9, %rsi
lea addresses_WT_ht+0x4fa9, %rdi
clflush (%rdi)
xor %rbx, %rbx
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $36882, %rsi
lea addresses_A_ht+0xf5a1, %rax
clflush (%rax)
nop
nop
xor %r12, %r12
movb (%rax), %bl
nop
inc %r12
lea addresses_WC_ht+0x13da1, %rsi
lea addresses_A_ht+0xf603, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $77, %rcx
rep movsq
nop
nop
sub $9597, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi

// Faulty Load
mov $0x5a1, %rcx
nop
nop
nop
sub %rbx, %rbx
movaps (%rcx), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'45': 63, '44': 20004, '00': 526, '48': 1236}
44 44 45 45 48 44 48 00 00 44 00 45 45 48 44 45 44 45 00 48 48 44 00 48 00 48 48 44 44 48 44 44 45 45 44 00 44 44 44 00 48 44 44 48 48 48 00 45 44 44 44 00 44 00 00 44 44 45 48 44 44 44 44 45 44 00 48 00 00 44 44 44 00 00 00 44 48 44 00 44 48 44 44 00 48 00 00 00 44 48 00 48 44 00 48 44 48 44 44 48 00 44 48 00 44 48 44 48 00 44 44 44 00 44 44 48 44 44 44 48 44 44 00 44 48 44 48 44 48 00 44 48 44 48 00 44 00 00 44 48 00 44 48 00 44 48 44 00 44 48 44 44 48 44 44 44 00 00 44 48 44 44 44 48 44 44 48 44 44 48 44 44 48 44 48 44 48 44 44 00 44 48 44 48 48 44 48 48 44 44 00 44 44 44 48 44 44 48 44 44 48 44 48 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 00 00 48 00 44 44 44 44 44 44 48 44 44 48 44 44 44 48 44 44 44 00 44 44 44 48 44 44 44 48 48 44 48 44 44 44 00 44 44 48 44 44 48 00 44 00 44 44 48 44 44 48 44 48 44 48 44 44 48 44 00 44 48 44 48 00 44 00 44 44 48 00 44 48 44 44 48 44 48 48 44 44 00 44 44 44 44 48 44 00 44 44 44 44 44 48 44 44 48 44 44 48 44 44 00 44 48 44 44 48 44 44 00 44 44 48 44 44 44 44 48 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 48 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 48 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 48 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
