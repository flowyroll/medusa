.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xdd2c, %rsi
lea addresses_WC_ht+0xc70c, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $62219, %r14
mov $62, %rcx
rep movsw
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x1501c, %rsi
lea addresses_UC_ht+0x11a0c, %rdi
nop
nop
nop
lfence
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1448c, %rsi
lea addresses_D_ht+0x12ff3, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $32, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x16e8c, %rsi
lea addresses_D_ht+0x1a894, %rdi
nop
nop
nop
nop
sub $10343, %rbx
mov $17, %rcx
rep movsb
nop
dec %r13
lea addresses_WT_ht+0x571a, %r14
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1ccd8, %rsi
lea addresses_A_ht+0x68c, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $29, %rcx
rep movsq
nop
nop
sub $30466, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rdx
push %rsi

// Store
lea addresses_normal+0x16b0c, %r14
and $47036, %rsi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
add $15897, %r8

// Faulty Load
lea addresses_PSE+0xc90c, %rsi
nop
nop
nop
nop
nop
cmp %r10, %r10
vmovaps (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'49': 6472, '45': 9003, '08': 1, '00': 11, '44': 6342}
49 49 49 49 44 45 45 49 44 44 44 45 45 45 49 45 44 49 44 45 45 44 44 49 49 45 45 49 45 44 45 49 45 45 45 49 45 49 44 44 49 45 49 45 44 49 44 45 49 45 44 44 44 44 44 45 44 45 49 44 49 44 45 45 49 45 44 45 44 45 49 45 49 45 44 45 49 45 49 44 45 49 44 45 49 45 45 45 49 45 45 45 49 49 44 49 49 45 45 45 49 49 45 45 45 45 49 49 44 45 44 49 49 44 45 45 49 45 45 49 45 49 45 44 45 44 45 49 44 45 49 45 49 45 49 49 44 45 49 45 44 45 44 44 45 45 44 49 44 45 49 45 44 49 49 45 49 45 49 49 44 49 45 49 45 44 45 45 44 45 44 45 45 45 49 45 44 45 44 44 45 49 45 44 45 49 45 44 45 45 45 45 49 45 45 44 45 44 45 45 45 49 44 45 49 45 49 49 44 49 45 45 49 45 49 45 44 49 49 44 49 44 49 45 45 45 45 45 45 45 49 45 49 45 44 45 44 44 45 44 49 45 44 45 49 45 49 49 44 45 49 49 44 45 44 45 44 45 45 49 45 49 45 44 45 44 45 49 44 45 49 44 49 44 49 44 45 45 45 44 45 44 45 44 45 45 45 45 45 45 49 45 44 45 49 49 49 44 45 49 45 44 44 49 45 45 49 45 49 45 49 49 49 45 49 45 45 49 49 44 45 44 49 45 49 45 49 45 45 44 45 49 45 49 45 49 45 49 44 49 45 49 45 45 44 45 49 45 49 49 44 45 44 44 45 45 49 49 49 45 45 44 49 44 45 49 49 45 49 45 45 49 49 49 45 49 45 49 49 44 45 44 45 44 45 49 44 49 45 49 45 44 45 44 45 49 49 44 49 44 45 45 49 45 45 45 49 44 49 49 45 49 45 44 45 44 45 49 45 49 45 44 45 44 45 49 44 45 45 45 49 45 49 45 44 45 44 49 45 44 45 44 49 45 49 44 45 44 45 45 49 44 45 49 44 49 45 49 49 45 45 44 45 49 49 44 49 44 45 44 49 45 45 44 45 45 44 49 45 49 45 44 49 44 45 44 45 49 44 44 45 49 44 45 45 49 45 44 44 49 49 44 45 49 49 45 49 49 44 45 44 45 44 45 45 44 45 49 44 45 49 44 49 44 45 45 45 49 45 49 45 49 45 44 45 45 49 45 44 44 44 45 44 44 45 45 49 44 45 49 45 44 45 49 45 44 45 45 44 49 45 49 49 44 45 44 45 49 49 44 45 49 44 44 49 49 45 49 49 44 45 44 45 44 49 49 49 49 44 45 49 44 49 49 44 45 49 45 49 44 45 49 45 44 49 45 49 49 44 44 49 45 49 44 44 45 44 49 45 44 49 45 44 45 49 49 44 45 44 45 45 44 45 44 45 49 44 45 45 44 45 49 49 44 49 45 49 45 45 44 49 49 45 44 45 44 45 45 44 45 49 44 49 49 45 44 44 44 45 45 49 45 45 49 45 49 44 45 45 49 45 44 49 45 45 49 44 45 49 44 44 45 45 45 44 49 44 45 45 44 44 44 49 45 44 45 45 49 45 45 49 49 44 45 49 45 49 45 49 45 44 45 49 49 44 45 49 49 45 44 44 45 44 45 45 45 44 49 44 44 49 49 49 45 45 45 49 45 49 45 49 49 45 45 49 45 44 44 44 44 49 49 45 49 45 44 45 49 45 49 45 44 49 49 45 49 45 44 45 44 49 45 49 44 45 49 45 45 49 49 45 49 49 49 44 45 45 49 44 49 45 49 49 49 49 49 44 45 45 49 45 44 45 44 49 49 45 45 44 45 44 49 44 49 49 45 49 45 45 49 44 49 44 45 44 45 49 45 49 45 49 45 49 44 44 49 44 49 45 49 49 49 45 45 44 44 45 44 49 49 44 44 49 45 49 44 49 45 45 44 44 44 45 49 45 49 45 45 44 49 44 45 44 49 44 49 45 44 45 44 45 49 44 45 49 45 45 45 49 45 44 45 49 45 44 45 45 49 45 45 49 49 44 45 45 44 49 44 45 49 45 44 49 45 49 44 45 45 49 45 45 45 44 45 44 49 49 45 49 45 45 45 44 45 45 49 45 49 45 45 45 49 45 49 45 44 49 49 44 49 44 45 45 44 45 45 45 49 49 45 45 49 49 49 49 44 45 44 45 44 49 44 45 49 45 49 45 44 44 45 49 45 44 45 45 44 45 45 44 45
*/
