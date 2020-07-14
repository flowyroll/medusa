.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2f14, %r14
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r14)
nop
xor %rax, %rax
lea addresses_WC_ht+0x11f54, %rsi
lea addresses_A_ht+0x7714, %rdi
sub %r10, %r10
mov $6, %rcx
rep movsb
nop
inc %r10
lea addresses_UC_ht+0xa934, %r11
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
add $47149, %r11
lea addresses_D_ht+0x6514, %rcx
and %r11, %r11
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x19f04, %rsi
lea addresses_WC_ht+0xf314, %rdi
nop
nop
nop
nop
nop
sub $37941, %r14
mov $47, %rcx
rep movsw
cmp $42568, %r13
lea addresses_D_ht+0x2990, %rsi
nop
nop
and $21432, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
sub $48561, %rax
lea addresses_WC_ht+0x514, %r11
nop
sub %r14, %r14
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1e8e0, %rsi
lea addresses_normal_ht+0xd35a, %rdi
nop
nop
nop
and $29802, %r13
mov $52, %rcx
rep movsl
nop
sub $48920, %rcx
lea addresses_WT_ht+0x9a94, %r14
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %r14
movaps %xmm6, (%r14)
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x8514, %rsi
lea addresses_A_ht+0x6b34, %rdi
nop
nop
nop
xor $4137, %r13
mov $20, %rcx
rep movsw
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x2efe, %rsi
lea addresses_A_ht+0x15714, %rdi
nop
nop
nop
nop
nop
and $35115, %r14
mov $43, %rcx
rep movsb
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1e4b4, %r14
nop
nop
nop
sub %rax, %rax
mov (%r14), %r10d
add $12617, %r11
lea addresses_D_ht+0xcb14, %rsi
lea addresses_normal_ht+0x1c51, %rdi
clflush (%rsi)
and %rax, %rax
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
add $7688, %rdi
lea addresses_A_ht+0x19a44, %rcx
clflush (%rcx)
nop
and %rax, %rax
movb $0x61, (%rcx)
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x6aae, %rsi
lea addresses_A_ht+0xf67c, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $104, %rcx
rep movsw
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0x4314, %rdx
nop
nop
cmp %rcx, %rcx
mov (%rdx), %bx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
