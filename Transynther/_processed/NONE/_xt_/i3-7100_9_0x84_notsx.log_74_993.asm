.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbbc3, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
add $22908, %rdi
lea addresses_D_ht+0xefb0, %r8
clflush (%r8)
nop
nop
nop
inc %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %r8
vmovntdq %ymm4, (%r8)
nop
cmp %r15, %r15
lea addresses_A_ht+0x1b289, %r9
xor $5717, %r12
mov $0x6162636465666768, %r15
movq %r15, (%r9)
add %r15, %r15
lea addresses_UC_ht+0xe1c3, %r10
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%r10)
nop
nop
nop
sub $58681, %r12
lea addresses_normal_ht+0x33d4, %rsi
lea addresses_D_ht+0x10fc3, %rdi
clflush (%rdi)
nop
nop
xor $14347, %r9
mov $62, %rcx
rep movsw
nop
nop
and $43011, %r9
lea addresses_A_ht+0x148a3, %rsi
lea addresses_WT_ht+0x122b3, %rdi
nop
nop
nop
sub %r12, %r12
mov $93, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $29027, %r9
lea addresses_A_ht+0x1c3, %r12
nop
cmp %r15, %r15
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
xor $63414, %rdi
lea addresses_A_ht+0x15dbb, %r9
nop
sub $6670, %r10
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x156c9, %r12
nop
nop
nop
and %r8, %r8
movw $0x6162, (%r12)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1ccf7, %r15
clflush (%r15)
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
xor $31706, %rcx
lea addresses_normal_ht+0xfa43, %rcx
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rcx
vmovaps %ymm7, (%rcx)
add %r15, %r15
lea addresses_WC_ht+0x1d7c3, %r12
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r12)
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x11cd3, %rcx
nop
nop
nop
nop
nop
cmp $51443, %rbp
movb $0x51, (%rcx)
nop
and %rax, %rax

// Load
lea addresses_US+0x87c3, %rax
nop
nop
nop
nop
cmp $11511, %rcx
vmovaps (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
and %rcx, %rcx

// Store
lea addresses_US+0x115c3, %r11
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r11)
nop
nop
nop
add $16552, %r11

// Store
lea addresses_PSE+0x8fe3, %rdx
nop
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
xor $57676, %r11

// Faulty Load
lea addresses_WT+0x21c3, %r8
nop
nop
add $46629, %r10
mov (%r8), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 74}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
