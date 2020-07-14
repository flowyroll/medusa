.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d56f, %r10
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
and %rcx, %rcx
lea addresses_UC_ht+0x9d23, %r14
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%r14), %r10b
nop
nop
nop
nop
xor $34576, %r14
lea addresses_WC_ht+0x1376f, %rsi
lea addresses_normal_ht+0xf667, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $16991, %r8
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x3677, %rdi
nop
sub %r8, %r8
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x1319d, %rcx
add %r14, %r14
movb (%rcx), %dl
nop
nop
add $50635, %rcx
lea addresses_normal_ht+0x8625, %rsi
lea addresses_UC_ht+0x336f, %rdi
nop
sub $55360, %r8
mov $51, %rcx
rep movsl
nop
nop
inc %rdx
lea addresses_WT_ht+0x2023, %rdi
nop
nop
xor $440, %r14
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x19136, %rsi
lea addresses_normal+0x1c76f, %rdi
nop
nop
sub %r11, %r11
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_D+0x1dd5f, %rcx
nop
and $44032, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and $49189, %r14

// Faulty Load
lea addresses_UC+0x15f6f, %rdi
clflush (%rdi)
xor %r8, %r8
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'44': 14, '46': 3, '49': 4, '00': 8}
00 49 00 49 44 44 44 00 44 00 46 44 49 44 46 00 44 00 44 44 44 46 44 44 00 44 49 44 00
*/
