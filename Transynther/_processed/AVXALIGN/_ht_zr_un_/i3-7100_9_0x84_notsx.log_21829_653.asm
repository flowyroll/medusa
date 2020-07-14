.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b6a5, %rbx
nop
nop
xor $7334, %rdi
mov (%rbx), %r13d
nop
xor $27684, %rdx
lea addresses_WT_ht+0x20cb, %rsi
lea addresses_UC_ht+0x35c5, %rdi
nop
nop
sub $20509, %r15
mov $59, %rcx
rep movsw
nop
sub $15308, %r15
lea addresses_A_ht+0xb5c5, %r13
sub %rsi, %rsi
mov (%r13), %edx
nop
sub $3498, %rdx
lea addresses_WT_ht+0x14a4d, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $61797, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x14e85, %rsi
lea addresses_D_ht+0x8cc5, %rdi
nop
nop
nop
nop
and $27400, %r10
mov $52, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xd0f1, %r10
clflush (%r10)
nop
and %rdx, %rdx
mov $0x6162636465666768, %r15
movq %r15, (%r10)
cmp %rdx, %rdx
lea addresses_A_ht+0x4fc5, %rsi
lea addresses_UC_ht+0xcaa5, %rdi
nop
nop
nop
nop
sub $37882, %rbx
mov $101, %rcx
rep movsl
xor $14838, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbx
push %rdi
push %rdx

// Load
lea addresses_UC+0x45c5, %rdi
nop
nop
add $15539, %r10
movb (%rdi), %dl
nop
nop
nop
nop
nop
sub $11586, %rdi

// Faulty Load
lea addresses_PSE+0x1e5c5, %rbx
nop
xor %r13, %r13
vmovntdqa (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'04': 1, 'f8': 5956, '49': 1917, '45': 6555, '00': 7366, '6e': 1, '08': 33}
04 00 45 00 49 45 45 00 f8 45 49 45 f8 00 00 00 45 00 f8 45 00 f8 45 00 f8 45 f8 00 00 00 45 f8 00 45 f8 00 45 49 f8 45 00 f8 f8 49 00 45 00 f8 45 f8 00 00 00 00 f8 45 f8 45 00 f8 f8 49 f8 00 f8 45 45 f8 45 00 45 f8 00 00 00 00 45 00 f8 45 00 f8 45 00 f8 45 45 49 45 45 00 f8 00 f8 45 f8 49 00 45 00 f8 45 00 45 45 49 00 45 49 f8 00 f8 00 45 00 f8 45 00 00 f8 00 45 00 f8 f8 45 49 f8 00 49 45 f8 00 00 00 45 f8 00 f8 45 f8 45 45 00 f8 45 45 f8 00 f8 45 00 49 45 00 49 49 45 f8 45 f8 f8 45 49 f8 45 00 f8 00 00 f8 00 49 00 45 f8 00 45 00 f8 45 f8 f8 45 49 45 00 f8 00 45 49 f8 45 45 f8 00 f8 45 45 f8 45 00 49 45 f8 00 45 00 49 45 00 00 00 00 00 00 45 00 f8 45 f8 f8 45 00 f8 45 00 f8 45 49 f8 00 f8 45 49 f8 f8 49 f8 f8 49 00 45 00 f8 45 49 00 f8 00 45 f8 00 45 00 f8 45 f8 f8 45 f8 f8 45 f8 00 f8 45 45 f8 45 f8 f8 00 49 00 45 f8 f8 45 00 f8 45 49 f8 00 49 00 45 f8 45 f8 00 45 00 f8 45 00 f8 00 f8 45 00 f8 45 00 49 f8 00 f8 00 45 49 f8 45 00 45 45 49 f8 49 00 45 f8 00 f8 45 49 f8 00 49 45 49 f8 00 45 00 f8 45 f8 49 45 00 00 45 f8 00 45 00 f8 45 f8 f8 45 f8 00 45 00 00 00 45 00 49 45 00 f8 00 45 f8 00 f8 45 f8 f8 45 49 f8 00 f8 00 45 00 f8 45 f8 00 45 00 f8 45 00 45 00 49 00 45 00 f8 00 45 00 45 49 00 45 00 49 00 45 f8 00 45 f8 00 45 00 f8 00 00 45 45 f8 45 00 49 45 f8 00 45 00 45 45 00 f8 45 49 45 00 f8 00 45 f8 f8 45 49 00 00 00 f8 49 00 45 00 f8 45 45 f8 45 f8 00 45 00 00 45 f8 f8 45 49 f8 00 f8 45 00 00 49 f8 00 45 00 f8 45 f8 f8 45 49 f8 45 45 f8 45 45 45 45 00 f8 45 f8 00 45 00 f8 45 49 45 f8 00 45 00 f8 45 00 49 45 f8 00 45 00 49 45 00 f8 45 00 f8 45 00 f8 00 45 45 f8 f8 45 49 f8 00 f8 45 00 00 45 f8 f8 45 49 00 00 00 f8 00 00 45 f8 45 f8 00 45 00 00 45 00 00 45 00 f8 45 00 45 f8 00 45 00 f8 45 49 f8 45 49 f8 00 08 45 f8 00 45 00 49 45 00 f8 45 45 00 00 45 00 45 00 f8 f8 45 f8 f8 00 00 00 00 45 00 49 45 45 00 f8 45 00 f8 45 45 f8 00 49 45 f8 f8 45 45 00 45 f8 00 45 f8 49 45 00 00 45 f8 00 45 f8 00 45 00 49 f8 00 00 45 00 f8 45 49 f8 00 f8 45 f8 00 45 f8 00 45 00 f8 45 00 00 45 f8 00 45 49 f8 45 f8 f8 45 f8 00 45 f8 00 45 49 00 45 45 45 45 00 f8 45 f8 00 45 00 00 45 00 f8 45 00 f8 45 f8 f8 00 f8 45 00 49 45 00 f8 45 00 f8 45 f8 f8 45 f8 f8 45 49 45 f8 49 45 f8 00 45 00 49 00 45 00 f8 45 49 45 00 00 45 00 00 45 f8 45 49 f8 00 00 45 00 49 f8 00 f8 45 49 f8 00 f8 45 00 49 45 f8 00 00 00 45 00 49 45 00 00 45 00 00 45 49 f8 00 f8 45 f8 00 45 f8 49 45 f8 00 49 00 45 00 f8 45 f8 00 45 00 f8 45 00 00 45 f8 00 45 00 49 45 f8 00 00 45 00 f8 45 00 f8 00 f8 00 45 00 45 f8 00 00 45 00 f8 45 49 f8 00 49 45 f8 f8 45 f8 00 45 f8 f8 45 49 f8 00 f8 45 f8 00 45 f8 00 45 00 f8 45 00 f8 45 00 f8 45 00 f8 45 f8 f8 45 49 f8 00 00 45 f8 00 45 f8 49 45 00 f8 f8 00 49 45 f8 00 45 00 49 45 45 00 45 45 f8 00 45 f8 00 45 45 f8 45 f8 f8 00 f8 00 45 49 f8 00 f8 45 45 f8 45 45 f8 45 45 00 45 45 00 f8 45 00 f8 00 00 45 00 f8 45 49 f8 45 49 f8 f8 49 49 49 f8 45 f8 f8 45 49 45 00 f8 f8 00 49 f8 00 f8 45 45 f8 45 49 f8 f8 00 45 00 f8 45 00 00 45 00 f8 00 f8 00 45 f8 f8 45 49 00 45 45 00
*/
