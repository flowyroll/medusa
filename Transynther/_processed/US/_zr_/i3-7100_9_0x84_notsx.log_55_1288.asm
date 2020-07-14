.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xfcd7, %r10
sub $12364, %rax
movl $0x61626364, (%r10)
nop
nop
dec %rcx
lea addresses_WT_ht+0x18a6f, %rbx
nop
nop
nop
nop
nop
add $61510, %r9
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
sub $40865, %rax
lea addresses_D_ht+0x1c16f, %r9
sub %rbx, %rbx
movb (%r9), %cl
nop
nop
dec %rcx
lea addresses_WT_ht+0x14ef, %r15
clflush (%r15)
nop
cmp %rax, %rax
movb $0x61, (%r15)
nop
nop
inc %r9
lea addresses_normal_ht+0x8017, %rsi
lea addresses_A_ht+0x418f, %rdi
nop
nop
and %r10, %r10
mov $18, %rcx
rep movsq
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x153ef, %r15
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r15), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
