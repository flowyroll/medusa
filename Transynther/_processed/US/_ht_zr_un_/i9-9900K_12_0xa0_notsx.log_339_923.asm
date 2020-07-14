.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rdx
lea addresses_UC_ht+0x1bdd9, %r11
nop
nop
nop
nop
nop
mfence
mov (%r11), %rbp
nop
nop
nop
nop
nop
cmp $59435, %r12
lea addresses_D_ht+0xf899, %rax
nop
nop
nop
and $7805, %rdx
mov (%rax), %r11w
nop
nop
nop
add $61071, %rax
lea addresses_WT_ht+0x19499, %rbp
clflush (%rbp)
add $61944, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%rbp)
xor %rdx, %rdx
lea addresses_D_ht+0x190d9, %r12
nop
nop
nop
nop
xor $46368, %rax
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
sub %r15, %r15
lea addresses_A_ht+0x1a159, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor $64520, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add $19892, %rax
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x56d9, %r8
nop
nop
nop
cmp $33733, %r10
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'ff': 264, '46': 2, 'f8': 45, '00': 28}
00 ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 00 ff 00 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff 46 ff 00 ff 00 ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 46 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff f8 ff ff f8 f8 ff ff ff ff f8 ff f8 f8 ff ff ff ff 00 00 00 ff f8 f8 f8 ff f8 f8 ff f8 f8 f8 ff ff ff ff ff ff f8 f8 ff ff 00 ff ff f8 ff f8 ff ff f8 ff 00 f8 ff f8 f8 f8 f8 f8 ff ff f8 ff f8 ff f8 f8 f8 ff ff f8 f8 f8 ff ff f8 f8 f8 ff ff ff ff f8 ff f8 ff ff ff ff f8 f8 f8 f8 ff f8 ff ff ff 00 f8 ff f8 ff ff
*/
