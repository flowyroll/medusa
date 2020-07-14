.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12f84, %r10
nop
nop
nop
nop
nop
xor $44970, %rdx
mov $0x6162636465666768, %r11
movq %r11, (%r10)
add %r14, %r14
lea addresses_D_ht+0x16724, %r11
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x6162, (%r11)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xf044, %r11
nop
nop
nop
nop
add %r15, %r15
movb (%r11), %cl
nop
nop
nop
nop
add $11585, %rcx
lea addresses_D_ht+0x5714, %rcx
clflush (%rcx)
nop
nop
nop
add %r15, %r15
mov (%rcx), %rdx
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1c984, %r10
nop
nop
nop
nop
nop
dec %r11
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x84cc, %r11
nop
nop
add $52915, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x135a4, %rsi
lea addresses_normal_ht+0x1d184, %rdi
nop
nop
nop
add $52558, %r13
mov $112, %rcx
rep movsb
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x18384, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x1cf84, %rsi
lea addresses_UC_ht+0x17b84, %rdi
sub $2841, %r14
mov $36, %rcx
rep movsl
nop
xor $30036, %rdx
lea addresses_WT_ht+0xb84, %rdx
nop
nop
cmp $2015, %r10
movw $0x6162, (%rdx)
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x17b84, %rsi
lea addresses_A_ht+0x11944, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $66, %rcx
rep movsb
nop
nop
dec %r11
lea addresses_A_ht+0x17984, %r13
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
sub $38228, %r13
lea addresses_normal_ht+0xd4fc, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
mfence
lea addresses_normal_ht+0xfe6a, %rsi
lea addresses_WC_ht+0x4344, %rdi
clflush (%rsi)
inc %r14
mov $40, %rcx
rep movsl
nop
nop
xor $30036, %r15
lea addresses_D_ht+0x8784, %r13
nop
nop
add $27707, %rdx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Load
lea addresses_normal+0x6284, %r13
nop
nop
nop
nop
and $24247, %r8
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
xor $12939, %rdi

// Faulty Load
lea addresses_UC+0x15b84, %rsi
nop
nop
sub $43954, %rbp
mov (%rsi), %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
