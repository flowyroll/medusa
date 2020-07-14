.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x3e66, %rsi
lea addresses_A_ht+0x2a66, %rdi
nop
sub $39019, %r10
mov $36, %rcx
rep movsw
nop
nop
nop
nop
cmp $20887, %r10
lea addresses_UC_ht+0x194e6, %rsi
lea addresses_WT_ht+0x1194e, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $107, %rcx
rep movsw
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x3e26, %rsi
nop
nop
nop
nop
and %r8, %r8
mov (%rsi), %di
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x1ccf6, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%r8), %r10b
nop
nop
inc %r8
lea addresses_normal_ht+0x12583, %rcx
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
dec %rdx
lea addresses_D_ht+0x1e466, %r10
nop
nop
xor %rdi, %rdi
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
cmp $53379, %r10
lea addresses_WT_ht+0x1b466, %rsi
lea addresses_normal_ht+0x16d20, %rdi
cmp $47036, %r9
mov $67, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_WT_ht+0x866, %rdx
nop
nop
nop
nop
add $7958, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
sub $48040, %r10
lea addresses_A_ht+0x13a96, %rsi
lea addresses_A_ht+0x88a6, %rdi
xor %rbp, %rbp
mov $119, %rcx
rep movsw
cmp %rbp, %rbp
lea addresses_normal_ht+0x40e6, %r9
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r9), %r10d
nop
sub %rsi, %rsi
lea addresses_A_ht+0xe54d, %rbp
nop
nop
nop
cmp %rdx, %rdx
movb (%rbp), %cl
nop
nop
xor $30803, %rbp
lea addresses_A_ht+0xc67a, %rsi
lea addresses_UC_ht+0x1015e, %rdi
nop
nop
nop
nop
inc %r9
mov $66, %rcx
rep movsq
nop
sub $65325, %rsi
lea addresses_UC_ht+0x702, %rbp
nop
nop
nop
nop
add $60954, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x9f5e, %rdx
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %rdx
movaps %xmm3, (%rdx)
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x15256, %rsi
nop
nop
cmp $62172, %r13
movb $0x51, (%rsi)
nop
nop
inc %rcx

// REPMOV
lea addresses_US+0x15986, %rsi
lea addresses_D+0x1be26, %rdi
nop
nop
nop
sub %r14, %r14
mov $63, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_A+0xb266, %rdx
clflush (%rdx)
add %rdi, %rdi
mov (%rdx), %r14d
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 284}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
