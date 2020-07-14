.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8c44, %r12
nop
nop
nop
nop
xor $60574, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r12)
nop
xor $3691, %r8
lea addresses_UC_ht+0x6444, %rsi
lea addresses_UC_ht+0xd629, %rdi
nop
nop
xor %rbx, %rbx
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $19966, %rdi
lea addresses_WT_ht+0x8064, %rsi
lea addresses_UC_ht+0x10044, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor %r9, %r9
mov $2, %rcx
rep movsw
nop
nop
xor $40999, %r8
lea addresses_WT_ht+0x1ae44, %rdi
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0x6c44, %r9
nop
nop
nop
nop
nop
xor $12929, %r15
vmovntdqa (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'b8': 2, '4c': 2, 'ba': 7, '62': 3, '42': 3, '02': 8, '6a': 8, '3a': 2, '7a': 2, '2c': 5, '72': 3, '50': 5, '9a': 8, '00': 4, 'c6': 1, 'fe': 24, 'da': 224}
00 50 50 50 50 50 6a 6a 6a 6a 6a 6a 6a 6a ba ba ba ba ba ba ba 9a 9a 9a 9a 9a 9a 9a 9a 4c 4c c6 02 02 02 02 02 02 02 02 00 2c 2c 62 62 62 42 42 42 2c 2c 2c b8 b8 fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe 3a 3a 00 00 7a 7a 72 72 72 da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da da
*/
