.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19ff6, %rsi
lea addresses_normal_ht+0x6e86, %rdi
nop
nop
sub %r15, %r15
mov $93, %rcx
rep movsw
add $57896, %r8
lea addresses_D_ht+0x150c2, %r15
nop
nop
nop
sub $21504, %r8
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rcx
nop
sub %r8, %r8
lea addresses_normal_ht+0x1cb76, %r13
nop
nop
nop
nop
nop
cmp $64403, %rcx
movl $0x61626364, (%r13)
sub $61303, %r13
lea addresses_normal_ht+0x17eba, %rdi
dec %r9
movl $0x61626364, (%rdi)
nop
nop
nop
xor $45514, %r8
lea addresses_WT_ht+0x1af56, %rsi
lea addresses_normal_ht+0x4e9e, %rdi
xor $1109, %rbp
mov $65, %rcx
rep movsw
nop
nop
nop
nop
xor $49784, %r8
lea addresses_WC_ht+0xa3f6, %r13
nop
and $54900, %r9
mov (%r13), %si
and %rdi, %rdi
lea addresses_WC_ht+0x2ff6, %r8
nop
and $42831, %rbp
mov (%r8), %r9w
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdx

// Store
lea addresses_WC+0x2bee, %rdx
nop
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%rdx)
and $15591, %r11

// Load
lea addresses_WC+0x25fa, %r14
clflush (%r14)
nop
nop
nop
nop
sub $54984, %r13
movb (%r14), %r11b
nop
nop
nop
nop
sub $19744, %r14

// Load
lea addresses_RW+0x12fb6, %r14
nop
nop
nop
dec %r9
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
inc %r14

// Faulty Load
lea addresses_WC+0x87f6, %r13
nop
sub %r11, %r11
movups (%r13), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'46': 1, '49': 8498, '00': 13253, '48': 76, '50': 1}
00 49 49 00 00 49 00 00 49 00 49 00 00 49 00 49 49 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 49 00 00 49 49 00 00 49 00 49 00 49 00 49 00 49 49 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 00 00 49 49 49 00 49 00 49 49 49 49 00 00 00 49 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 49 49 49 00 00 49 49 00 00 00 49 49 00 00 00 00 49 49 00 00 49 00 49 49 49 00 00 49 49 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 49 00 00 49 00 00 00 00 49 00 00 49 48 00 00 00 00 49 00 00 00 49 00 49 49 00 00 00 49 49 49 49 00 00 00 00 00 49 00 00 49 00 49 49 00 49 49 00 00 00 49 49 00 49 00 00 00 49 00 49 49 49 00 00 49 49 49 00 49 49 49 49 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 49 49 49 00 00 00 49 00 49 00 00 49 49 00 00 49 00 49 00 00 00 00 49 49 00 00 49 00 49 49 00 49 49 00 49 49 00 49 00 49 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 49 00 00 00 49 49 00 49 49 00 00 00 49 00 00 00 00 00 49 00 00 49 49 00 49 00 00 00 49 49 00 00 49 49 00 00 49 49 00 49 49 49 00 00 00 00 00 00 00 00 49 00 00 00 49 49 49 49 49 00 00 00 49 00 49 00 49 00 49 49 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 49 00 49 00 00 00 00 49 49 00 49 49 49 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 49 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 49 00 00 00 49 49 00 00 00 00 49 00 00 49 49 00 49 49 00 00 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 49 00 00 49 49 00 00 49 00 49 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 00 00 49 00 00 49 49 00 49 49 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 49 48 49 00 49 49 49 00 00 00 49 00 00 00 00 00 49 49 00 49 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 49 00 49 00 00 00 00 00 49 00 00 49 00 49 49 49 49 00 00 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 49 49 00 00 49 00 00 49 49 49 00 00 49 00 49 00 00 00 00 49 00 00 49 49 49 00 00 49 00 49 49 00 49 49 00 00 49 00 49 49 00 00 00 49 49 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 49 49 00 49 00 00 49 49 49 49 49 00 49 00 00 00 00 00 49 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 49 49 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 49 49 00 49 49 49 00 00 00 00 49 49 49 49 00 00 49 49 49 00 00 00 00 49 00 00 49 00 00 00 49 49 00 00 49 00 49 49 00 00 00 00 49 00 49 00 49 49 00 00 49 00 49 00 49 49 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 00 49 49 00 49 49 00 49 00 49 00 00 00 00 00 49 49 49 49 00 49 49 49 49 00 00 00 49 00 49 00 00 49 00
*/
