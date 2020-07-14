.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e80c, %rsi
lea addresses_D_ht+0x155ec, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $7, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_WC_ht+0x10d6c, %r8
nop
nop
nop
add $3111, %rcx
mov (%r8), %r13
and $48851, %r10
lea addresses_A_ht+0x503e, %r13
cmp %rcx, %rcx
movb (%r13), %r10b
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x5384, %r13
nop
dec %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x2cf4, %rdx
clflush (%rdx)
nop
sub %r8, %r8
mov (%rdx), %rcx
nop
cmp %r8, %r8
lea addresses_A_ht+0x1cb0c, %rdi
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
nop
cmp $55496, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x1322c, %rcx
nop
nop
dec %rbx
movl $0x51525354, (%rcx)
nop
nop
add $8386, %r14

// Store
mov $0x699e20000000dec, %rcx
nop
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)
nop
sub $59054, %r13

// Faulty Load
mov $0x699e20000000dec, %r13
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r13), %r9w
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 132, '58': 9, '6d': 4}
00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6d 6d 6d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 6d 00 00 58 58 00 00 00 00 00 00 00 00 58 00 00
*/
