.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rcx
lea addresses_normal_ht+0xdf28, %r14
nop
nop
cmp %rcx, %rcx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r9
nop
inc %rcx
pop %rcx
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WC+0xe28c, %rbx
nop
nop
nop
nop
nop
add $48700, %rax
movw $0x5152, (%rbx)
nop
dec %rbp

// Store
lea addresses_WC+0x1f19c, %r8
nop
nop
dec %r14
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0xa2ec, %rdi
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movaps %xmm6, (%rdi)
nop
nop
nop
nop
and $62170, %r8

// Store
lea addresses_WC+0xa24c, %rbx
xor $42808, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x11d4c, %r8
nop
nop
inc %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x41b2, %r8
clflush (%r8)
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r8)
nop
nop
xor $14737, %rax

// Load
lea addresses_normal+0x191ec, %rax
nop
and $34444, %rbx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
sub $42035, %r8

// Store
lea addresses_PSE+0x172ec, %r8
nop
nop
nop
nop
add $54478, %rbx
movl $0x51525354, (%r8)
nop
nop
cmp %rbp, %rbp

// Faulty Load
mov $0x4f6941000000024c, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
movb (%r14), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 1}
58
*/
