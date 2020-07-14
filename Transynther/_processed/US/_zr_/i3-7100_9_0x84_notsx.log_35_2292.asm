.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15b93, %r14
nop
add $13958, %rsi
movb $0x61, (%r14)
nop
nop
nop
add $18705, %r9
lea addresses_WT_ht+0x1c9cb, %rsi
lea addresses_D_ht+0x1a42d, %rdi
sub %rbx, %rbx
mov $66, %rcx
rep movsb
inc %r10
lea addresses_WC_ht+0x59cb, %rsi
lea addresses_D_ht+0x7d2b, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $33, %rcx
rep movsl
nop
and %r14, %r14
lea addresses_A_ht+0x7dcb, %rsi
nop
nop
nop
nop
nop
sub $32513, %r9
movw $0x6162, (%rsi)
cmp $24289, %rdx
lea addresses_WC_ht+0xf3cb, %rcx
add $42084, %r9
movb (%rcx), %r10b
nop
nop
add %r9, %r9
lea addresses_D_ht+0xbdcd, %r14
add $5111, %rbx
movb $0x61, (%r14)
nop
nop
inc %r10
lea addresses_WT_ht+0x1044b, %rsi
lea addresses_WT_ht+0xb7cf, %rdi
nop
xor %rdx, %rdx
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x151b, %rbx
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xcdcb, %rsi
nop
inc %rdi
movb (%rsi), %r10b
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0xe5cb, %rax
nop
nop
dec %rbp
mov (%rax), %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 35}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
