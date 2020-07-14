.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ba15, %r13
nop
sub %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
nop
sub $13439, %r12
lea addresses_WT_ht+0x2f4e, %r11
nop
nop
nop
dec %rcx
mov (%r11), %rsi
nop
add $37744, %r11
lea addresses_normal_ht+0x871e, %rsi
clflush (%rsi)
nop
nop
add $24893, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x9ca2, %r8
nop
nop
nop
add %r13, %r13
movl $0x61626364, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x43fe, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
nop
cmp $57609, %rsi
lea addresses_UC_ht+0xffe, %r13
clflush (%r13)
add %rcx, %rcx
mov (%r13), %r10
cmp %r10, %r10
lea addresses_WT_ht+0x10b8e, %rsi
lea addresses_D_ht+0xe0e, %rdi
add $25756, %r12
mov $51, %rcx
rep movsq
nop
nop
nop
nop
and $52208, %r8
lea addresses_D_ht+0xcffe, %r8
nop
nop
sub $36638, %r13
mov (%r8), %r11w
nop
nop
nop
sub $33076, %rsi
lea addresses_A_ht+0x1392e, %r11
nop
nop
cmp %rcx, %rcx
movb (%r11), %r13b
nop
nop
nop
nop
nop
cmp $36134, %rcx
lea addresses_A_ht+0xaafe, %rsi
lea addresses_WT_ht+0x18ffe, %rdi
nop
nop
nop
nop
cmp $46562, %r13
mov $51, %rcx
rep movsb
nop
sub $3583, %r13
lea addresses_D_ht+0x177e, %r13
nop
sub $18140, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
nop
and $49696, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xafde, %rsi
lea addresses_WC+0xfffe, %rdi
nop
nop
sub $25236, %rax
mov $95, %rcx
rep movsw
sub $38566, %r11

// Faulty Load
lea addresses_US+0x1cffe, %r11
clflush (%r11)
nop
nop
nop
inc %r8
mov (%r11), %ax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 467, '5f': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 5f 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 5f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5f 00 00 00 00 00 00 00 5f 00 00 00
*/
