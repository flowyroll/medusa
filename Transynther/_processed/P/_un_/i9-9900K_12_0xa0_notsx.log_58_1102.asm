.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdx
lea addresses_WT_ht+0x13b01, %r13
nop
nop
nop
nop
add $47489, %r8
mov (%r13), %dx
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x3e71, %r14
nop
nop
nop
add %r10, %r10
mov (%r14), %rcx
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0xed71, %r13
nop
nop
nop
nop
nop
add $45895, %r15
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
xor $27598, %r10
lea addresses_D_ht+0x9209, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
dec %r15
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rdx

// Faulty Load
mov $0xd01, %rbx
nop
nop
nop
nop
nop
inc %r12
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'f4': 1, 'c0': 42, 'd4': 2, 'd0': 2, 'ff': 11}
d4 c0 ff ff c0 c0 c0 c0 c0 c0 c0 ff ff c0 c0 c0 c0 c0 c0 c0 c0 ff c0 c0 c0 c0 c0 c0 c0 c0 f4 ff c0 c0 c0 c0 c0 d4 ff d0 ff ff ff c0 ff c0 c0 c0 d0 c0 c0 c0 c0 c0 c0 c0 c0 c0
*/
