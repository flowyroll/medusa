.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x174d7, %rdx
nop
nop
nop
cmp %rbp, %rbp
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rcx
nop
dec %rcx
lea addresses_UC_ht+0x11697, %rsi
lea addresses_D_ht+0x16b17, %rdi
nop
nop
nop
nop
nop
cmp $64653, %rdx
mov $9, %rcx
rep movsb
nop
nop
nop
nop
cmp $23896, %rdx
lea addresses_WT_ht+0x1e3d7, %r10
nop
add $22257, %r9
mov (%r10), %rbp
nop
nop
xor $42217, %rsi
lea addresses_UC_ht+0x19cf1, %rsi
lea addresses_normal_ht+0x196d7, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $1, %rcx
rep movsl
nop
nop
nop
nop
xor $49171, %rdx
lea addresses_WT_ht+0x185d7, %rsi
lea addresses_UC_ht+0x1c547, %rdi
clflush (%rdi)
sub $4553, %rbp
mov $113, %rcx
rep movsl
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x9d7, %rsi
lea addresses_D_ht+0x10dd7, %rdi
nop
nop
nop
dec %r10
mov $101, %rcx
rep movsq
nop
nop
lfence
lea addresses_normal_ht+0x691d, %rsi
lea addresses_WC_ht+0x1e085, %rdi
xor %r13, %r13
mov $22, %rcx
rep movsw
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1dd17, %r9
and %rdi, %rdi
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rcx
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xed57, %rdx
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rdx), %r10
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rbx

// Faulty Load
mov $0x758cbc00000005d7, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'47': 10, '08': 26, '00': 11194, '44': 5, '52': 1, '72': 27, '46': 1118, '49': 7236, 'f0': 2212}
00 49 00 00 00 49 f0 49 00 49 f0 00 00 00 f0 00 00 49 00 00 00 46 46 f0 49 f0 49 f0 00 00 49 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 49 f0 00 f0 00 49 00 f0 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 f0 49 00 46 f0 f0 00 00 00 00 46 49 00 f0 f0 00 49 49 49 00 00 49 00 00 00 00 00 49 00 00 00 00 72 f0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 46 00 00 00 49 00 f0 00 00 00 00 49 00 49 49 f0 49 49 00 00 00 00 00 49 00 49 00 49 49 49 00 f0 f0 f0 00 49 00 49 46 00 00 00 f0 49 00 00 00 00 49 00 49 00 49 00 46 00 49 46 49 49 49 49 00 00 49 f0 00 00 49 49 f0 00 00 00 f0 49 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 49 46 00 00 00 49 00 49 f0 00 49 f0 49 00 00 49 49 49 00 49 00 00 00 00 00 00 49 00 00 00 49 49 f0 00 49 f0 00 49 49 46 00 00 49 00 49 f0 f0 00 00 00 49 00 f0 00 49 49 49 f0 00 00 49 00 00 f0 00 49 00 00 00 49 00 49 49 49 00 00 49 00 49 00 49 00 00 49 00 49 49 00 00 49 49 f0 49 00 49 46 f0 00 f0 49 f0 46 46 00 00 49 46 49 f0 49 00 00 49 49 46 f0 00 00 f0 f0 00 49 f0 00 49 49 49 49 00 00 00 00 46 00 00 46 49 46 49 49 00 49 f0 00 00 00 00 00 49 00 49 00 00 49 49 f0 f0 f0 00 49 f0 00 49 00 00 49 46 49 49 49 f0 00 f0 f0 f0 00 49 00 f0 00 00 00 00 49 00 49 49 49 00 49 49 00 49 47 49 00 f0 49 49 f0 49 49 00 49 00 49 49 00 49 49 00 49 00 00 00 00 49 49 49 49 49 00 49 00 49 f0 49 f0 00 49 f0 00 49 00 00 49 49 00 49 f0 49 f0 49 49 00 00 00 00 00 46 49 00 46 00 49 49 f0 49 00 f0 00 49 00 49 49 49 46 46 49 f0 00 f0 f0 49 f0 46 49 49 00 00 00 00 49 00 49 00 49 49 00 49 49 49 49 49 49 f0 49 49 00 49 00 49 00 00 00 49 f0 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 46 f0 00 f0 f0 00 00 00 f0 00 49 46 49 49 00 46 49 46 00 46 00 00 49 00 49 00 00 49 00 49 00 f0 46 f0 49 49 00 49 00 49 49 49 00 00 49 f0 00 00 49 46 00 00 49 49 46 00 00 49 49 00 00 00 00 49 00 00 00 49 00 46 00 00 00 49 49 49 49 00 49 49 49 49 46 49 46 f0 00 00 00 00 46 00 00 00 00 49 49 49 00 00 00 00 49 49 00 00 00 00 00 f0 49 49 00 49 49 49 49 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 46 00 00 49 49 46 49 49 46 00 f0 00 49 49 49 00 49 f0 46 00 00 49 49 46 00 00 00 49 00 00 00 00 49 f0 49 49 f0 46 00 49 f0 00 f0 00 00 00 00 00 00 49 49 00 00 49 49 00 49 00 00 00 00 00 00 49 f0 46 49 46 00 49 49 00 00 00 00 f0 49 00 00 00 00 00 49 00 00 00 49 00 49 f0 46 f0 00 f0 00 49 49 49 00 00 49 00 49 00 f0 46 49 49 00 49 49 49 49 46 49 00 00 f0 00 00 49 46 49 49 00 46 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 f0 f0 00 00 00 00 00 46 49 00 f0 00 49 49 46 49 f0 49 00 49 49 00 00 00 00 49 49 f0 00 00 f0 49 00 00 00 49 49 00 49 00 49 49 49 f0 49 00 f0 46 f0 f0 49 49 49 49 49 49 f0 f0 49 00 00 46 49 00 f0 49 00 49 49 00 49 00 00 49 49 46 49 f0 00 00 f0 49 00 00 00 00 49 49 00 49 00 00 49 49 00 00 49 49 00 f0 f0 00 f0 00 00 00 46 49 49 00 00 46 49 00 00 72 00 f0 00 49 00 00 00 f0 49 49 49 00 49 00 49 46 00 00 00 f0 f0 f0 00 49 49 f0 00 00 00 00 49 00 49 f0 00 49 49 46 f0 f0 00 f0 f0 49 f0 00 00 00 f0
*/
