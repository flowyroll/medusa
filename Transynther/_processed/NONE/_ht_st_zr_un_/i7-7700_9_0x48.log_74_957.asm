.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b0bb, %rsi
lea addresses_WT_ht+0x19ede, %rdi
xor %r10, %r10
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x1b8bb, %rsi
lea addresses_UC_ht+0x9c3b, %rdi
nop
nop
dec %r14
mov $68, %rcx
rep movsq
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rdi
push %rsi

// Faulty Load
lea addresses_UC+0x1d0bb, %r12
nop
nop
nop
nop
nop
xor %r14, %r14
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'2a': 1, 'ae': 1, 'cc': 1, '7e': 2, '49': 5, '48': 2, '46': 11, 'e9': 1, 'e3': 1, '00': 41, 'c4': 2, '75': 1, 'd1': 1, 'da': 1, 'fe': 1, '3d': 2}
00 00 00 00 00 00 e3 00 49 49 46 00 46 d1 00 00 00 46 00 49 00 00 00 00 00 00 00 00 00 00 7e 7e 00 00 00 46 75 00 e9 00 00 3d 3d 49 46 00 2a 48 46 cc 48 fe 00 00 46 49 00 c4 c4 46 da 00 46 00 00 00 00 00 46 46 ae 00 00 00
*/
