.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14788, %r9
nop
sub $10098, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r9
movntdq %xmm2, (%r9)
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x12f18, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%rbx), %r10b
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0xb6af, %r14
mfence
movb (%r14), %bl
nop
nop
cmp $20079, %r14
lea addresses_A_ht+0xd588, %rsi
lea addresses_D_ht+0x194a8, %rdi
nop
cmp %r10, %r10
mov $100, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_D_ht+0xaf08, %rbx
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
and $9814, %r14
lea addresses_D_ht+0x59c8, %rdi
nop
nop
add %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x87c8, %rbx
nop
nop
nop
nop
cmp %r12, %r12
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x4e08, %r14
nop
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r14)
nop
nop
nop
nop
add $50357, %rsi
lea addresses_normal_ht+0x3d88, %r12
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r12)
nop
nop
add $55948, %rax
lea addresses_normal_ht+0x38a0, %rsi
lea addresses_WT_ht+0x1ba48, %rdi
nop
nop
nop
and $33624, %r10
mov $26, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1691e, %r14
and $60429, %rcx
movw $0x6162, (%r14)
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rcx

// Faulty Load
mov $0x588, %rcx
nop
nop
sub $25124, %r11
vmovntdqa (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'bb': 1, '44': 13946, '45': 7882}
44 45 44 45 44 44 45 45 44 44 45 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 45 45 44 44 44 44 44 45 45 45 44 45 45 44 45 44 45 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 45 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 45 45 44 45 44 44 44 45 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 45 45 45 45 45 45 44 45 45 45 45 45 44 44 44 45 45 44 45 45 45 45 44 45 44 45 44 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 45 44 45 44 44 44 44 45 45 45 44 44 45 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 44 44 45 45 45 44 44 45 44 44 45 45 45 44 45 44 45 45 44 45 44 44 44 45 44 44 44 45 45 44 44 45 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 45 44 45 45 45 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 45 45 45 44 44 44 45 44 45 44 44 44 45 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 44 44 45 45 44 44 45 44 44 44 45 44 44 44 44 45 44 44 44 45 44 45 44 45 44 44 44 45 44 44 45 45 44 44 45 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 45 45 44 44 44 44 44 45 44 44 45 44 44 44 45 44 45 44 45 44 44 44 44 44 45 45 45 45 44 44 44 45 45 44 45 44 44 44 44 44 44 44 44 45 45 45 45 45 44 44 45 45 44 44 45 44 44 45 44 44 44 44 44 45 45 44 45 44 44 44 44 44 44 44 45 44 44 44 45 44 44 45 45 45 44 44 45 44 45 44 45 44 44 44 44 44 44 45 44 44 45 44 44 45 45 44 44 44 44 44 45 45 45 45 44 44 44 44 44 45 45 45 44 44 45 44 44 44 44 44 45 44 45 44 44 44 45 44 44 45 44 45 45 44 44 44 45 45 45 44 44 45 44 44 44 45 45 44 44 45 44 45 44 45 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 45 44 44 45 45 44 44 44 44 44 45 44 44 45 45 44 44 45 45 45 45 44 44 45 45 44 44 45 45 44 44 44 44 44 44 44 44 44 45 44 45 44 45 45 44 45 44 44 45 45 45 45 44 44 45 44 44 45 45 44 45 45 45 44 45 45 45 45 44 45 44 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 44 45 45 44 45 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 45 45 44 45 44 44 44 44 44 44 45 44 45 45 44 45 44 44 44 45 45 45 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 45 44 44 45 44 44 45 44 45 45 44 44 44 45 44 44 45 45 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 45 45 45 45 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 44 45 45 44 45 45 44 44 44 45 44 45 44 44 44 45 45 44 45 45 45 44 45 44 45 44 44 45 44 44 45 45 44 45 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 45 44 45 45 45 44 45 44 45 44 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 45 45 45 44 45 45 44 44 45 45 44 44 45 44 45 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 45 44 44 44 44 45 45 44 45 44 44 45 45 44 44 45 45 45 44 45 44 45 44 45 44 45 45 44 45 45 45 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 45 44 44 44 45 44 45 44 44 44 45 45 44 45 44 44 44 45 44 44 44 44 44 44 44 45 44 44
*/
