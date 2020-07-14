.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x192f8, %r10
clflush (%r10)
xor %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
cmp %r15, %r15
lea addresses_UC_ht+0xb5f8, %rsi
lea addresses_normal_ht+0x1cc38, %rdi
nop
nop
nop
xor $2542, %r15
mov $19, %rcx
rep movsq
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x11638, %rsi
lea addresses_WC_ht+0x2d38, %rdi
nop
nop
and $38417, %r15
mov $117, %rcx
rep movsw
nop
nop
xor $22887, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x17738, %rcx
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x19438, %r13
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r13)
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_WT+0x14c38, %rcx
nop
nop
xor %r10, %r10
movntdqa (%rcx), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'ec': 1, '00': 14316, '48': 7512}
48 00 00 00 00 00 48 48 00 00 48 48 48 48 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 00 48 00 00 00 48 48 48 00 00 00 00 00 48 00 00 48 48 00 00 00 48 00 48 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 48 48 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 00 48 48 00 00 00 48 48 48 00 00 00 00 00 48 48 00 00 00 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 00 48 00 00 48 00 00 48 48 00 00 00 48 48 00 48 00 00 48 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 48 48 00 00 48 48 48 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 48 48 48 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 48 48 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 48 48 00 00 00 48 48 48 48 00 00 00 00 48 48 00 00 00 48 48 48 00 00 00 00 48 48 00 00 48 48 48 00 00 00 48 48 00 00 00 00 00 48 00 00 48 48 48 48 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 48 48 48 00 00 48 48 48 48 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 00 00 48 00 00 00 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 00 00 00 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 48 00 00 00 48 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 48 00 00 00 48 48 48 48 00 00 00 48 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 48 48 48 48 00 00 48 48 48 00 00 00 48 48 48 00 00 00 48 00 00 00 48 48 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 00 48 00 00 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 48 00
*/
