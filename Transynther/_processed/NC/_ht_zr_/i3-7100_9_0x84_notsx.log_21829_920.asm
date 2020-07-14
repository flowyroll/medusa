.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf2b7, %rsi
lea addresses_WC_ht+0x9457, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $47710, %r14
mov $16, %rcx
rep movsb
nop
and %r15, %r15
lea addresses_D_ht+0x10cb7, %r13
nop
nop
nop
add $14110, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %r13
vmovaps %ymm1, (%r13)
nop
nop
inc %r15
lea addresses_WT_ht+0xbeb7, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor %r14, %r14
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x120b7, %rsi
lea addresses_D_ht+0x125ff, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $76, %rcx
rep movsw
nop
nop
inc %rdx
lea addresses_WC_ht+0x11f77, %rcx
nop
nop
nop
nop
xor $63519, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor $35821, %r13
lea addresses_WT_ht+0x1137, %rdx
nop
cmp %rdi, %rdi
movb (%rdx), %cl
nop
xor %r14, %r14
lea addresses_normal_ht+0x1c6b7, %rsi
lea addresses_normal_ht+0x3937, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $43, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_WC+0x17d97, %rdi
nop
sub %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rdi)

// Exception!!!
mov (0), %rdi
nop
nop
cmp %r13, %r13

// Load
mov $0x4b, %r14
nop
cmp %rcx, %rcx
movups (%r14), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
sub %rbp, %rbp

// Faulty Load
mov $0x259cff0000000eb7, %r15
nop
nop
nop
and $62599, %rbp
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'49': 5056, '00': 14710, '48': 1773, '44': 290}
49 49 49 00 00 00 49 00 49 49 00 00 00 48 00 49 49 49 49 00 49 00 49 49 00 00 00 49 00 00 00 49 49 00 49 00 00 00 00 49 49 00 49 49 44 49 44 49 00 49 49 00 00 00 00 49 00 00 00 48 49 48 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 48 48 49 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 44 00 00 49 00 00 00 00 00 49 00 49 00 49 49 00 49 00 00 00 00 00 49 49 48 00 00 00 49 49 44 49 00 00 00 48 48 00 00 48 00 49 49 00 44 00 48 00 49 49 00 00 00 49 49 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 44 00 00 00 49 49 00 00 00 00 48 49 00 48 48 00 00 00 48 00 49 49 00 00 00 00 49 00 00 00 00 00 48 00 49 00 00 49 49 00 00 48 49 00 49 48 00 00 00 00 49 00 00 00 49 00 00 49 00 49 48 00 44 00 00 49 00 00 00 49 49 49 00 00 00 49 49 48 00 49 00 00 48 00 00 00 00 49 44 00 49 49 00 49 00 00 00 49 00 44 00 00 00 00 00 00 00 00 48 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 49 00 00 49 49 49 49 49 00 49 00 00 48 00 00 00 00 49 00 00 49 00 00 00 49 00 00 48 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 48 00 49 00 00 00 00 00 49 49 00 00 49 00 00 49 00 00 49 00 49 48 00 00 49 00 00 49 00 00 48 00 00 00 00 48 00 00 00 49 00 00 48 00 00 00 00 48 48 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 48 00 49 00 49 44 00 49 00 48 48 48 49 00 49 49 49 00 49 00 00 00 49 00 00 48 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 49 49 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 48 00 49 00 49 00 00 00 49 48 00 49 00 00 00 00 49 49 49 00 49 48 00 00 48 48 00 49 49 00 00 48 00 00 00 00 00 00 49 00 48 00 00 00 49 48 00 00 48 00 00 00 49 49 00 48 00 00 49 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 49 49 49 00 00 49 49 00 00 00 49 00 00 49 49 00 49 00 00 00 00 00 49 49 48 00 48 48 00 00 00 00 49 00 00 00 00 00 49 00 48 00 00 00 48 49 49 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 49 00 49 00 00 49 00 00 49 49 48 49 49 00 00 49 00 00 00 00 49 00 00 00 48 00 00 00 00 00 48 49 00 49 49 00 48 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 49 00 00 49 49 00 00 49 49 00 48 44 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 00 00 49 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 49 49 00 00 00 49 00 48 00 00 49 00 00 00 49 49 49 00 48 00 00 00 00 00 00 48 49 49 00 00 49 49 00 49 49 00 44 00 49 49 00 00 00 48 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 49 49 44 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 49 00 00 00 49 49 00 00 49 49 00 00 00 00 49
*/
