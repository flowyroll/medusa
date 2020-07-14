.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11a71, %rdx
clflush (%rdx)
xor $38962, %r8
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rdi
inc %r10
lea addresses_WC_ht+0xce71, %r10
nop
nop
nop
add $38521, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r10
vmovntdq %ymm7, (%r10)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xd469, %r8
sub $30044, %r10
movb $0x61, (%r8)
nop
nop
nop
nop
xor $32281, %r10
lea addresses_normal_ht+0x8b5, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $35007, %r11
movw $0x6162, (%rdi)
nop
nop
nop
cmp $24407, %rcx
lea addresses_D_ht+0x6b51, %rdx
nop
nop
sub $29420, %rbp
mov (%rdx), %ecx
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xdc71, %rcx
nop
nop
inc %rdx
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
xor $48661, %rdi
lea addresses_D_ht+0x15a71, %r10
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
and $46955, %r10
lea addresses_A_ht+0x12c71, %r11
xor $26390, %r10
movb (%r11), %r8b
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x2df9, %r11
nop
nop
xor $58532, %rdx
mov (%r11), %r10w
nop
nop
nop
nop
nop
cmp $58405, %r10
lea addresses_WC_ht+0x13871, %rdi
nop
nop
nop
sub $9728, %r11
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x6df1, %rsi
lea addresses_A_ht+0xb071, %rdi
nop
nop
and $16939, %r11
mov $86, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x1b501, %r8
nop
inc %r11
mov (%r8), %si
nop
nop
nop
and $43980, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9

// Faulty Load
mov $0x271, %r15
and %r11, %r11
movb (%r15), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 347}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
