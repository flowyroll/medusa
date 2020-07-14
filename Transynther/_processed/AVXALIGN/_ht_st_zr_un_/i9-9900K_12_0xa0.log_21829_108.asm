.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x77c, %rsi
lea addresses_D_ht+0x26f7, %rdi
nop
add %r10, %r10
mov $29, %rcx
rep movsb
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x12f7, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r10)
nop
add %r14, %r14
lea addresses_UC_ht+0x3787, %rcx
nop
nop
add %r15, %r15
movb $0x61, (%rcx)
inc %r15
lea addresses_WT_ht+0x1f37, %rsi
lea addresses_WC_ht+0x70b7, %rdi
nop
nop
nop
nop
cmp $53380, %r9
mov $73, %rcx
rep movsq
nop
and $13391, %rdi
lea addresses_WC_ht+0xcaf7, %rsi
nop
nop
nop
and $48130, %r9
mov (%rsi), %r15w
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_WC+0x2ef7, %r15
nop
sub $58008, %r10
movb $0x51, (%r15)
nop
nop
nop
xor %r15, %r15

// Faulty Load
mov $0xef7, %r10
nop
nop
nop
dec %rsi
vmovaps (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'f9': 170, '02': 27, '1d': 248, 'c2': 1, 'df': 36, '33': 2, '75': 633, 'fc': 1, '23': 2, '8a': 136, '67': 2, 'b0': 264, '49': 4712, '64': 1, '6a': 136, '2a': 269, '03': 1677, '74': 216, '20': 661, 'e9': 1, '3d': 4, '00': 1904, '0a': 890, '8b': 3, 'be': 3314, 'b8': 1, '7b': 18, 'aa': 12, '71': 1, '10': 6, '72': 5230, 'ca': 33, 'af': 745, 'ea': 69, '8e': 2, '47': 1, '77': 10, '4a': 391}
00 00 00 00 00 00 00 00 00 00 00 49 02 be 02 be 02 be 49 02 be 49 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 be 02 49 02 be 02 be 02 49 02 be 02 be 02 be 02 49 02 be 02 00 00 00 00 49 00 00 00 00 00 00 00 00 00 0a 49 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 af 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 af 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 0a 49 03 be 03 be 03 be 03 be 03 be 00 00 00 00 00 49 03 be 03 49 03 be 03 be 49 03 49 03 be 00 49 03 00 00 49 03 be 49 03 be 03 be 03 49 49 03 be 03 be 03 be 03 be 03 be 03 be 03 be 03 be 03 be 03 be 03 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 49 49 49 00 75 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 49 49 49 49 49 49 0a 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 49 49 49 00 75 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 75 49 49 49 0a 49 be be be be 00 75 be be be be be be be be be be be 49 be 00 75 49 be be be be be be be 00 75 be be be be be be be 49 be be be be be be 00 75 be be be be 00 49 be be be 49 49 00 75 be be be be be 49 be be be be 49 be be be be 00 75 be 00 75 be be be be 49 49 be be be be be 49 6a 6a 00 49 49 00 6a 00 6a 49 00 6a 00 6a 00 49 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 00 49 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 49 00 6a 00 6a 00 6a 00 6a 00 49 00 6a 00 6a 49 00 6a 00 6a 00 6a 00 6a 49 00 6a 00 6a 00 49 49 00 6a 00 6a 00 6a 00 49 00 6a 49 00 00 00 03 75 00 03 75 00 03 75 00 03 49 00 03 75 00 03 75 49 00 03 75 00 03 75 00 03 75 72 00 03 75 00 03 00 03 75 49 00 03 49 49 00 03 00 03 75 00 03 75 49 00 00 03 75 00 03 75 00 03 75 00 03 49 49 00 49 49 49 00 03 75 00 03 75 49 00 49 00 00 03 49 00 03 75 00 03 75 00 03 75 00 72 6a 72 49 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 00 49 72 72 72 72 72 49 49 72 72 49 72 72 72 72 72 49 72 00 03 75 49 72 72 72 00 03 49 72 49 72 72 72 72 72 72 72 72 72 72 49 72 72 72 72 72 72 72 72 72 49 72 49 72 72 49 49 72
*/
