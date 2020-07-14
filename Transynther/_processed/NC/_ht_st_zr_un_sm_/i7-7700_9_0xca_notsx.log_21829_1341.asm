.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x19fad, %rsi
lea addresses_D_ht+0x1edd9, %rdi
nop
nop
nop
nop
nop
and $64478, %r14
mov $49, %rcx
rep movsl
inc %r14
lea addresses_D_ht+0x1bd8d, %r10
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
add $30165, %rsi
lea addresses_D_ht+0x129a3, %rsi
lea addresses_D_ht+0x292d, %rdi
nop
nop
nop
inc %r13
mov $12, %rcx
rep movsl
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0xa165, %rsi
lea addresses_normal_ht+0x11f51, %rdi
nop
add $29011, %rdx
mov $67, %rcx
rep movsl
nop
xor $11574, %r10
lea addresses_WT_ht+0xf46f, %rsi
nop
nop
nop
and $30329, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub $56438, %r10
lea addresses_A_ht+0x1a6ad, %rdi
xor $26195, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xeb7d, %rcx
nop
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
add $22615, %r14
lea addresses_D_ht+0x1d45d, %rsi
lea addresses_WT_ht+0x154ad, %rdi
nop
cmp %r14, %r14
mov $44, %rcx
rep movsw
nop
sub $57550, %rcx
lea addresses_WT_ht+0x162ad, %rdi
nop
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x88ad, %rsi
lea addresses_D_ht+0x8cad, %rdi
nop
nop
inc %r10
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0xcad, %rcx
nop
xor $19003, %r13
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
add $64012, %r14
lea addresses_UC_ht+0xfdad, %r13
cmp %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
xor $17442, %rsi
lea addresses_WC_ht+0x1afcd, %rdx
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%rdx), %ebx
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xa6ad, %rsi
lea addresses_WT_ht+0x19ead, %rdi
and $57780, %r10
mov $21, %rcx
rep movsw
nop
nop
nop
sub $32879, %r13
lea addresses_normal_ht+0x172ad, %rcx
nop
mfence
movb $0x61, (%rcx)
xor $35557, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0xaf55, %r13
nop
add $11020, %rdi
mov (%r13), %r11
inc %rbx

// Store
mov $0x2698b500000006ad, %rcx
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rcx)
nop
nop
cmp $3904, %r15

// Load
mov $0x70714f0000000e0d, %rdi
nop
and $4305, %rcx
movb (%rdi), %r11b
nop
nop
nop
nop
sub $50212, %rcx

// Store
mov $0x5da, %rcx
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
dec %r11

// Faulty Load
mov $0x2698b500000006ad, %r13
nop
nop
xor %rcx, %rcx
mov (%r13), %ebx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'34': 1, '00': 13279, 'b0': 1, 'c4': 1, 'ec': 1, '2c': 1, 'ae': 1, '9a': 1, 'e0': 1, '70': 1, '74': 1, '90': 1, '78': 1, 'd8': 1, 'fa': 1, '54': 8531, '40': 1, '20': 1, '4c': 1, 'a8': 1, 'd4': 1}
00 54 00 00 54 00 00 54 00 00 54 54 54 54 00 54 00 54 00 00 00 00 54 54 54 00 00 00 00 00 00 54 00 54 00 54 54 54 54 00 00 00 00 00 54 54 54 00 00 00 54 54 00 54 54 00 00 54 54 00 00 54 54 00 00 00 54 00 54 54 54 54 54 00 54 54 00 00 00 54 54 00 00 54 00 00 54 54 00 00 54 54 54 00 00 00 00 54 54 00 00 54 54 00 00 54 54 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 54 54 00 00 00 00 00 00 54 54 54 00 54 54 54 00 54 00 54 00 00 00 54 00 00 00 00 00 00 00 00 54 54 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 00 54 00 54 54 54 54 00 54 00 00 54 00 54 00 54 00 00 00 00 00 54 54 00 54 54 00 54 54 00 00 54 54 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 54 00 54 54 54 54 54 54 00 00 00 00 54 54 00 00 00 00 00 00 00 00 54 54 00 00 54 00 54 54 54 00 54 00 54 54 54 00 54 54 54 00 54 00 54 00 54 00 54 54 54 00 54 00 00 00 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 00 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 54 00 00 00 54 00 00 00 54 00 00 00 54 00 00 00 54 00 00 54 00 00 54 00 00 54 54 00 00 00 54 00 00 54 00 00 54 00 54 00 00 00 54 54 00 54 00 00 00 00 00 54 54 00 54 00 54 00 00 00 00 00 00 54 54 54 54 00 00 54 00 00 00 54 00 00 00 00 54 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 54 54 00 00 00 54 54 54 00 00 00 00 00 00 54 54 54 54 00 00 54 00 54 00 00 00 54 00 54 00 54 00 00 54 54 54 00 00 00 00 00 54 00 54 54 54 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 54 54 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 54 54 00 54 54 54 54 54 54 00 00 54 00 54 54 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 54 00 00 00 54 54 54 00 54 00 00 00 54 54 00 00 54 54 54 54 00 54 00 00 00 00 00 54 54 54 54 54 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 54 00 00 00 54 54 54 00 54 00 00 00 54 00 54 54 54 00 00 00 00 54 54 54 54 00 00 00 54 00 00 54 00 00 54 54 00 00 54 00 54 00 00 00 54 00 54 00 54 54 54 00 00 54 00 00 54 00 00 54 00 00 00 00 54 00 00 00 54 00 54 54 00 00 54 54 54 00 54 54 54 00 54 54 54 00 54 54 00 00 54 00 00 54 54 00 54 00 00 00 00 54 54 00 54 00 00 00 54 54 54 00 00 00 00 54 00 00 00 00 00 54 54 54 54 00 54 54 00 00 00 54 00 00 00 00 54 00 54 54 00 00 54 00 54 00 54 00 54 54 00 00 54 00 54 00 00 00 00 54 00 00 00 00 00 00 54 00 54 00 00 00 00 00 00 54 00 00 54 00 00 00 54 54 00 00 00 54 00 54 00 00 00 00 00 00 00 00 54 54 54 54 00 00 54 00 00 00 00 54 54 00 54 00 54 54 00 54 54 00 00 54 54 00 00 00 00 00 00 00 00 54 00 00 00 54 54 00 00 00 00 54 54 54 00 00 00 54 54 54 54 00 54 00 00 54 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 54 54 00 00 00 00 00 00 54 54 00 00 54 00 00 00 54 54 54 54 00 54 00 00 54 54 00 00 00 54 54 00 00 00 00 54 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 54 54 54 00 54 54 54 54 00 54 54 00 00 00 00 54 54 54 00 00 54 00 54 00 00 00 00 00 00 54 00 00 00 00 00 54 00 00 54 54 00
*/
