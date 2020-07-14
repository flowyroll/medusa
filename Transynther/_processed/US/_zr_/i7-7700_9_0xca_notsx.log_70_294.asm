.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13ddc, %rax
nop
nop
nop
nop
nop
add $34055, %rsi
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rdx
inc %rcx
lea addresses_D_ht+0xdedc, %rsi
lea addresses_UC_ht+0x1bf6c, %rdi
nop
nop
nop
nop
sub $47106, %r11
mov $109, %rcx
rep movsl
nop
nop
cmp $61054, %rcx
lea addresses_normal_ht+0x89b0, %rsi
lea addresses_WC_ht+0x1d29c, %rdi
nop
nop
nop
nop
add $56325, %r8
mov $83, %rcx
rep movsw
nop
nop
nop
add $31993, %rdx
lea addresses_WC_ht+0x38dc, %rax
nop
nop
sub %r8, %r8
mov (%rax), %di
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x140dc, %rsi
lea addresses_D_ht+0x186dc, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $43, %rcx
rep movsl
nop
nop
nop
nop
sub $35893, %rdx
lea addresses_D_ht+0x1dedc, %rdx
nop
nop
nop
nop
nop
add $30957, %r10
mov (%rdx), %rdi
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xc384, %r8
nop
and $8318, %r11
mov (%r8), %rdx
nop
nop
sub $23505, %rdi
lea addresses_normal_ht+0x182bc, %rsi
clflush (%rsi)
nop
nop
nop
nop
dec %rax
mov (%rsi), %rdx
sub %rax, %rax
lea addresses_WC_ht+0x1afdc, %rsi
lea addresses_WT_ht+0x19edc, %rdi
cmp $22768, %r10
mov $50, %rcx
rep movsl
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x1dedc, %r10
nop
nop
nop
inc %rax
movb (%r10), %dl
nop
nop
nop
cmp $5790, %r8
lea addresses_UC_ht+0x19b9c, %r10
nop
nop
nop
nop
nop
cmp $29284, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x33f6, %rcx
add $64309, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xfedc, %rax
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x19c5c, %r10
nop
nop
xor $60081, %rax
mov (%r10), %r11d
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x5adc, %r8
inc %rsi
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x1b2dc, %rsi
inc %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovntdq %ymm7, (%rsi)
nop
xor %rax, %rax

// Store
lea addresses_A+0x503c, %r13
nop
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%r13)
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x16edc, %r14
nop
nop
nop
nop
nop
add $39977, %r10
mov (%r14), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 70}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
