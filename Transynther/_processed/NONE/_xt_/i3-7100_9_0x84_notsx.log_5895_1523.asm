.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x2cdc, %r13
nop
nop
nop
nop
nop
add $26745, %rbx
movups (%r13), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
sub $46594, %r13
lea addresses_WT_ht+0x54dc, %r13
clflush (%r13)
nop
nop
dec %rax
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
xor $46340, %rsi
lea addresses_UC_ht+0xdff8, %r13
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
xor %rdi, %rdi
lea addresses_WC_ht+0x1873c, %r13
and $62741, %rax
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x5c5c, %rdx
nop
cmp $23293, %r14
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
and $57271, %r14
lea addresses_WC_ht+0x70dc, %rsi
lea addresses_WC_ht+0x1715c, %rdi
clflush (%rdi)
nop
nop
xor %rdx, %rdx
mov $27, %rcx
rep movsq
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x685c, %rdx
nop
nop
nop
nop
nop
cmp $22766, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
dec %r14
lea addresses_WT_ht+0x16344, %rsi
lea addresses_WT_ht+0x63ac, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $111, %rcx
rep movsl
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x1c9d8, %rdi
and $36898, %rdx
mov (%rdi), %rcx
nop
nop
nop
nop
nop
add $28310, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rdx

// Load
mov $0x7cac630000000fb0, %r13
nop
sub %rdx, %rdx
movaps (%r13), %xmm4
vpextrq $1, %xmm4, %rbp
nop
and %rbp, %rbp

// Faulty Load
lea addresses_RW+0x1a0dc, %r12
add %rbx, %rbx
mov (%r12), %edx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 5895}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
