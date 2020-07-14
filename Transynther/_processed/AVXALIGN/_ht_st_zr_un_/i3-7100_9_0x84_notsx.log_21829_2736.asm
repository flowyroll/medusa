.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1892d, %rsi
nop
nop
and %rbx, %rbx
mov (%rsi), %ecx
nop
nop
sub $27389, %r15
lea addresses_WT_ht+0x1492d, %rsi
nop
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x1492d, %r15
nop
nop
nop
nop
and %rbp, %rbp
mov (%r15), %si
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1ffd, %r13
clflush (%r13)
nop
nop
sub %r15, %r15
mov (%r13), %rcx
sub $6040, %r15
lea addresses_D_ht+0x686d, %r13
clflush (%r13)
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1eacd, %rbp
nop
nop
nop
nop
nop
xor $17591, %rcx
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x1a7ad, %r13
nop
nop
nop
nop
sub $3777, %r15
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r13)
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1b2d, %r13
dec %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x1cbad, %rbx
and $19443, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x17f12, %rsi
nop
nop
sub %r13, %r13
movl $0x61626364, (%rsi)
nop
dec %r13
lea addresses_UC_ht+0x16f53, %rbp
nop
nop
nop
sub %rbx, %rbx
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
add $63857, %rcx
lea addresses_UC_ht+0x6995, %rsi
nop
nop
nop
nop
sub $21229, %rcx
movb (%rsi), %r13b
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rcx
push %rdx

// Faulty Load
lea addresses_A+0x892d, %rcx
nop
nop
nop
dec %r12
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rcx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'e6': 1, 'e5': 1, 'bf': 1, 'ab': 1, '1e': 2, '09': 1, '77': 1, '4e': 1, '80': 1, '75': 1, 'be': 2, '47': 2370, 'dc': 1, '8b': 1, 'ce': 1, 'b9': 1, 'c5': 1, '04': 1, '16': 12992, '9c': 2, 'bc': 1, 'ae': 1, 'fe': 1, 'ee': 2, '28': 2, '14': 1, 'f0': 1, 'a6': 1, '94': 1, '6e': 1, 'ea': 1, '60': 339, 'a2': 1, '5c': 2, '82': 1, '12': 1, 'ac': 1, '17': 1, '34': 1, 'd2': 1, '57': 1, 'b4': 1, '2a': 1, '4c': 2, 'a8': 2, 'fa': 1, 'da': 2, '2c': 1, 'ec': 1, 'f8': 3, 'd4': 1, '9e': 1, '31': 1, 'cc': 2, '0c': 4, '08': 1, '3c': 1, '24': 2, 'f4': 2, '58': 1, 'bb': 1, 'b2': 2, '26': 1, '74': 2, '84': 4, '0a': 2, '30': 1, 'c4': 1, '90': 2, '88': 1, '8e': 1, '6f': 1, '7e': 1, '40': 1, '01': 1, 'e0': 1, '7d': 1, '02': 1, 'd0': 1, '00': 6010, '10': 1, 'c0': 1, '96': 1, 'aa': 1, '9d': 1, '72': 1, 'f7': 1, '56': 1, '59': 1, 'a4': 1, '86': 2, '70': 2, 'e8': 2, 'a0': 1, 'c9': 1}
00 00 00 16 47 16 16 00 00 16 00 16 16 16 16 16 60 47 00 16 00 00 00 00 16 16 16 16 16 00 47 16 00 00 47 16 00 16 16 16 16 47 16 16 16 16 16 16 16 16 16 16 00 16 00 60 16 16 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 60 16 16 16 16 60 00 16 16 16 16 16 16 00 16 16 16 00 16 16 00 16 16 16 16 16 00 16 9c 16 47 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 47 00 16 16 16 16 16 16 47 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 47 16 16 60 00 16 00 16 16 60 16 16 70 16 16 16 00 16 16 16 00 16 16 16 16 16 16 16 16 47 16 16 16 0c 16 00 16 16 16 00 16 16 16 16 16 00 47 16 16 16 16 16 16 16 16 00 16 16 00 00 16 16 00 16 00 16 16 16 16 16 16 47 16 16 16 16 16 00 00 16 16 16 16 16 16 16 16 16 00 16 16 47 16 16 16 60 47 16 16 00 16 16 00 47 47 00 16 00 00 60 16 00 16 00 47 60 47 47 47 00 47 00 16 16 00 16 16 16 16 47 16 16 16 16 16 00 47 16 47 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 00 00 16 16 00 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 00 00 00 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 47 16 16 00 00 16 47 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 00 00 16 16 47 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 88 00 47 16 16 16 16 16 16 16 16 16 00 16 16 16 00 16 16 16 16 00 16 00 16 00 16 16 00 00 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 00 16 16 16 16 16 16 16 16 16 16 00 00 16 00 16 00 16 47 60 16 16 16 16 16 16 00 16 16 16 16 47 16 16 16 16 00 16 16 16 16 16 16 16 16 16 47 00 16 16 16 16 16 16 16 16 16 00 60 16 00 00 94 00 16 00 16 00 00 00 47 47 16 16 16 47 00 16 16 16 16 00 16 16 47 00 16 16 16 16 00 16 16 16 16 00 16 16 00 47 16 16 16 16 16 00 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 00 00 47 16 16 47 47 16 16 00 00 00 16 16 16 16 16 16 16 16 16 00 16 00 00 00 16 16 16 00 00 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 00 16 00 47 16 00 16 16 16 16 16 16 16 16 16 00 16 16 16 00 00 16 16 16 16 16 00 16 00 3c 16 00 47 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 00 00 16 00 00 00 16 16 16 00 16 16 16 16 16 00 00 00 00 16 16 16 00 00 00 16 16 16 16 16 16 16 16 16 16 16 16 60 00 16 16 16 16 16 16 47 00 16 16 00 10 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 00 00 00 00 16 16 16 16 16 16 16 00 47 16 16 16 16 16 16 16 16 00 47 16 16 00 00 16 16 16 16 16 00 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 47 16 16 16 16 16 16 16 16 16 47 16 00 00 16 16 16 16 16 16 16 16 00 16 00 16 16 16 47 00 16 16 47 16 00 00 16 16 16 16 16 00 16 00 16 16 16 47 16 16 16 16 00 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 47 16 16 16 16 16 16 16 16 16 00 00 16 16 16 00 16 00 00 16 16 00 00 47 16 16 16 16 16 16 16 16 16 16 00 00 00 47 00 16 00 16 16 16 00 16 16 00 00 16 47 16 00 47 00 16 16 00 16 16 16 00 16 00 16 16 16 00 16 16 16 00 00 00 16 47 47 16 16 16 16 16 16 16 16 16 16 16 00 16 47 00 00 00 16 16 16 16 00 16 16 16 16 16 16 16 16
*/
