.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x361f, %r12
nop
nop
nop
sub $31250, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0xc61f, %r12
nop
nop
nop
inc %rcx
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
mfence
lea addresses_WC_ht+0x153f, %rsi
lea addresses_WC_ht+0x1725, %rdi
xor %r8, %r8
mov $127, %rcx
rep movsb
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x791f, %r12
nop
nop
nop
nop
nop
and $46791, %r11
movb $0x61, (%r12)
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x1087, %rsi
lea addresses_WT_ht+0x613f, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1d33f, %rsi
lea addresses_D_ht+0x142a0, %rdi
nop
nop
cmp $49801, %rdx
mov $47, %rcx
rep movsq
add $23541, %rdi
lea addresses_UC_ht+0x153b7, %rsi
lea addresses_A_ht+0x1ea1f, %rdi
nop
nop
nop
sub %r15, %r15
mov $18, %rcx
rep movsq
nop
dec %r15
lea addresses_WT_ht+0x1c21f, %rsi
lea addresses_WC_ht+0x655f, %rdi
nop
nop
nop
xor $40752, %r12
mov $116, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WC_ht+0x12cbf, %r15
nop
nop
and $22557, %rsi
movw $0x6162, (%r15)
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0xc61f, %r10
nop
nop
sub $15562, %rax
mov (%r10), %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 7}
00 00 00 00 00 00 00
*/
