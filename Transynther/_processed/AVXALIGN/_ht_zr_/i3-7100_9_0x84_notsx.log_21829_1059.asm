.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x58a9, %rsi
nop
nop
nop
nop
sub $2018, %r8
mov (%rsi), %r9
nop
nop
nop
and $25060, %r13
lea addresses_WC_ht+0xaec9, %rsi
lea addresses_D_ht+0x119d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $7704, %rdx
mov $20, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x19729, %rsi
nop
nop
nop
nop
nop
and $46937, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
and $2952, %r8
lea addresses_UC_ht+0x45a9, %r8
sub $27301, %rcx
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
nop
and $63405, %rdi
lea addresses_WT_ht+0x1c507, %rcx
nop
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
inc %rdi
lea addresses_normal_ht+0x16ee9, %rdx
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm6, (%rdx)
xor $58524, %r13
lea addresses_WC_ht+0x2f89, %rcx
xor %rdi, %rdi
movb (%rcx), %r8b
nop
nop
nop
mfence
lea addresses_UC_ht+0x1f89, %r9
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%r9)
nop
nop
cmp $5487, %r8
lea addresses_A_ht+0x1a141, %r9
nop
nop
sub $48220, %rcx
movb (%r9), %dl
nop
nop
nop
nop
cmp $21533, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1e089, %rdi
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
sub $57092, %rcx

// Store
mov $0x789, %r10
clflush (%r10)
nop
nop
nop
nop
nop
dec %rbx
movb $0x51, (%r10)
nop
inc %rdx

// Faulty Load
lea addresses_UC+0x19c89, %r10
nop
nop
nop
sub $29351, %rcx
movntdqa (%r10), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'48': 9074, '00': 10929, '47': 1826}
00 47 00 00 00 00 00 48 00 48 48 00 48 48 48 48 48 48 00 00 48 48 00 00 00 48 00 47 48 48 48 00 00 48 48 47 48 47 48 00 00 48 48 48 00 00 00 00 47 47 48 47 48 47 00 00 00 00 48 00 48 48 00 47 00 48 00 00 00 48 00 00 00 48 48 00 00 47 00 00 00 48 48 48 00 48 48 00 48 47 48 00 48 48 48 48 00 00 00 48 00 48 47 00 00 47 47 00 00 00 00 00 00 47 48 48 48 48 00 48 00 00 00 47 47 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 48 47 00 47 47 48 00 00 00 00 48 00 00 48 00 00 47 47 00 00 00 48 00 48 00 48 48 00 00 48 48 47 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 48 47 48 48 00 00 00 00 48 48 00 00 48 00 48 00 00 00 00 00 48 48 48 00 48 48 48 00 00 48 48 00 00 47 00 48 00 48 48 48 00 48 47 00 00 48 48 48 00 48 48 48 00 48 48 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 47 48 00 47 00 00 47 00 00 00 00 48 00 48 48 48 00 00 48 48 00 00 00 48 48 00 48 48 00 48 48 48 48 00 48 48 47 47 47 48 48 47 48 00 47 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 47 00 00 47 00 48 00 48 00 48 00 48 48 00 48 47 48 00 00 48 48 48 00 48 48 00 00 48 00 00 47 48 48 48 48 48 48 00 00 00 48 00 48 00 48 48 48 00 00 00 00 00 48 47 00 47 48 48 00 48 00 48 00 48 00 48 48 47 00 48 48 00 00 48 00 00 00 00 00 00 47 00 00 48 48 00 48 00 00 00 00 00 00 48 00 48 48 48 00 00 48 48 00 47 00 48 48 48 48 48 00 48 48 48 48 47 48 00 00 00 47 48 48 48 00 48 00 48 00 00 00 48 48 00 00 48 48 48 00 00 48 48 00 00 00 48 48 48 00 00 48 48 00 00 48 00 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 48 47 00 00 00 00 00 00 00 00 00 00 00 48 00 47 00 00 48 00 00 00 00 00 00 47 00 00 48 48 48 48 48 48 47 48 00 00 48 48 47 00 00 48 00 00 00 00 00 00 00 47 00 48 00 47 00 48 00 47 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 00 00 48 00 48 00 00 47 00 48 47 48 00 00 00 00 00 00 48 48 48 48 48 48 00 48 47 00 48 47 47 48 48 48 00 48 00 00 48 00 00 47 00 00 00 00 00 48 48 00 48 00 48 48 47 00 00 00 48 00 00 00 00 00 00 48 00 48 48 48 48 48 00 48 00 00 48 00 00 48 00 00 48 00 47 00 47 48 48 00 47 00 48 00 00 00 48 00 00 48 48 48 00 00 48 00 48 48 48 00 00 00 47 00 00 48 48 00 00 48 00 48 00 00 47 00 00 48 00 47 00 00 48 48 00 47 48 00 00 00 48 00 00 00 48 00 00 48 00 00 48 00 48 47 00 00 00 48 47 00 00 48 00 00 48 48 00 48 48 00 00 47 47 00 00 48 48 00 00 48 48 00 00 47 48 48 48 47 00 00 00 00 00 00 48 00 48 48 47 00 00 00 47 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 00 48 00 00 00 48 48 48 48 00 00 47 48 00 00 48 00 00 48 48 48 48 00 00 48 48 00 00 48 48 00 48 48 48 48 00 00 48 48 48 48 00 48 00 00 48 00 48 00 00 48 00 00 00 48 00 00 00 00 48 00 48 47 48 00 00 00 00 00 00 48 00 00 48 00 00 00 48 48 00 48 48 00 48 48 00 00 00 00 47 00 00 00 00 00 00 00 48 00 48 48 00 48 48 47 48 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 00 00 00 48 47 00 00 48 48 00 00 48 48 48 00 48 47 00 48 00 00 00 48 00 48 48 48 00 48 48 00 48 00 48 48 47 00 00 00 00 00 00 48 00 00 47 00 48 00 00 00 48 48 48 00 00 00 48 48 48 48 00 00 48 00 48 48 00 00 00 00 47 48 48 00 00 00
*/
