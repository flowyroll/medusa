.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18b01, %rsi
lea addresses_normal_ht+0x17281, %rdi
nop
nop
nop
add $44598, %rbp
mov $79, %rcx
rep movsq
nop
nop
add %r12, %r12
lea addresses_UC_ht+0xcc01, %r10
clflush (%r10)
nop
nop
and $48107, %rcx
mov (%r10), %r12
xor $17316, %rsi
lea addresses_WT_ht+0x4801, %rcx
nop
sub %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rcx)
nop
nop
sub $48809, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9

// Faulty Load
lea addresses_US+0x16001, %r9
nop
nop
nop
nop
nop
add %r8, %r8
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
