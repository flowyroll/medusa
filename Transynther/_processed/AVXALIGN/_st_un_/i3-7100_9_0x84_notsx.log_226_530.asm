.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rdx
lea addresses_UC_ht+0x7f6a, %r9
nop
nop
nop
xor %rbp, %rbp
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x19d8a, %r9
nop
nop
add %rdx, %rdx
mov (%r9), %r14
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x1aeb2, %rax
cmp $42274, %rbx
movl $0x61626364, (%rax)
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x1eeb2, %rax
nop
add $53034, %r10
mov (%rax), %r9w
nop
cmp %r14, %r14
lea addresses_D_ht+0xad92, %rbx
nop
add $56960, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x91b2, %rbp
and %rdx, %rdx
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
sub $27683, %r10
lea addresses_normal_ht+0xfa72, %r9
nop
cmp %rdx, %rdx
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x18852, %r10
nop
nop
cmp $35176, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
xor %rbx, %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x19332, %rcx
nop
nop
nop
nop
nop
cmp $63864, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and $33696, %r11

// REPMOV
lea addresses_US+0x16832, %rsi
lea addresses_A+0x10132, %rdi
nop
nop
nop
nop
dec %rax
mov $61, %rcx
rep movsw
nop
xor $42904, %rdx

// Store
lea addresses_normal+0xa558, %r11
nop
nop
nop
inc %rdx
movb $0x51, (%r11)
nop
nop
sub $58023, %rdx

// Faulty Load
mov $0xb32, %rsi
nop
nop
nop
cmp %rdx, %rdx
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'96': 107, '32': 119}
32 32 32 32 32 96 32 32 32 32 32 96 32 96 32 32 96 32 32 32 96 32 32 32 32 96 96 32 96 96 96 96 32 96 96 96 32 32 96 32 96 32 96 96 96 32 32 96 96 32 32 32 96 96 96 96 96 32 32 96 32 32 32 32 32 96 32 96 96 32 32 32 32 96 96 32 32 32 32 32 96 96 96 32 32 96 96 32 32 96 96 96 32 32 96 32 96 96 96 96 32 32 96 32 96 32 32 96 96 32 96 32 96 96 96 96 96 32 32 32 96 32 96 96 96 32 32 96 96 32 96 96 32 32 96 96 96 96 96 32 32 96 96 32 96 96 32 32 32 96 96 96 32 32 32 32 96 32 32 96 96 96 96 32 32 32 32 96 32 32 32 32 96 32 32 32 96 32 96 32 96 32 32 32 32 96 32 96 96 32 32 96 96 32 96 32 32 32 32 32 96 96 96 96 96 32 96 32 96 96 96 32 32 32 32 96 32 96 96 96 96 32 32 96 96 32
*/
