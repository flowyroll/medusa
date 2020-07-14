.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8147, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and $45397, %rcx
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
xor $31703, %rsi
lea addresses_D_ht+0x16cc7, %r13
nop
nop
nop
nop
sub $6108, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
add $40748, %r14
lea addresses_A_ht+0x12559, %r15
nop
nop
add $22210, %rsi
movw $0x6162, (%r15)
nop
nop
nop
and $37613, %rcx
lea addresses_WC_ht+0x1c7, %rsi
lea addresses_WT_ht+0x1d667, %rdi
clflush (%rdi)
nop
nop
nop
xor $64388, %r13
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $12785, %rcx
lea addresses_A_ht+0x124c7, %rsi
nop
nop
nop
sub %rdi, %rdi
movb (%rsi), %r13b
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x2ea7, %rsi
lea addresses_D_ht+0xabb, %rdi
cmp %r12, %r12
mov $6, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_WT_ht+0x2a5f, %rsi
lea addresses_normal_ht+0x1cfc7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $7296, %r15
mov $22, %rcx
rep movsq
nop
nop
lfence
lea addresses_A_ht+0x1b4c7, %r13
xor $48318, %r10
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
xor $38155, %r12
lea addresses_normal_ht+0x10877, %rsi
lea addresses_WT_ht+0x17db7, %rdi
clflush (%rsi)
nop
nop
nop
inc %r13
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
and $3045, %r12
lea addresses_D_ht+0x1ac2f, %r12
cmp %r10, %r10
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x3e7, %r14
sub $55457, %rdi
mov (%r14), %rsi
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1d6c7, %r14
nop
xor $48301, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
and $15268, %r10
lea addresses_D_ht+0x14b89, %r15
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r15), %r10w
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x15c47, %r11
nop
nop
dec %r15
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
inc %r15

// REPMOV
lea addresses_RW+0x158c7, %rsi
lea addresses_normal+0x54c7, %rdi
xor $61006, %r10
mov $77, %rcx
rep movsb
nop
nop
nop
cmp $25322, %rcx

// Load
lea addresses_WC+0x2225, %r15
nop
nop
nop
xor $7056, %r11
mov (%r15), %r8w
nop
add %rsi, %rsi

// Store
lea addresses_D+0x1e707, %rsi
nop
add $43691, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
add $41446, %r8

// Store
lea addresses_PSE+0x2a7, %rdi
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0xf04b, %r10
nop
nop
nop
nop
dec %r15
movl $0x51525354, (%r10)
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x74c7, %r8
nop
nop
sub $33106, %rcx
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
