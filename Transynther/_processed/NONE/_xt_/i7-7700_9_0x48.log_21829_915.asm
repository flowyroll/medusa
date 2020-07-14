.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11171, %rsi
lea addresses_D_ht+0xd95d, %rdi
nop
nop
nop
sub %rax, %rax
mov $93, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xa4c5, %r14
add %r9, %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1d431, %rsi
lea addresses_UC_ht+0x9f9, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $115, %rcx
rep movsq
add %rsi, %rsi
lea addresses_UC_ht+0x18df9, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
cmp $40193, %r9
lea addresses_UC_ht+0x51f9, %r9
nop
nop
nop
nop
xor $10628, %rcx
movw $0x6162, (%r9)
nop
nop
nop
and $40047, %r14
lea addresses_normal_ht+0x8f61, %r14
sub $59691, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x1c5f9, %rsi
lea addresses_UC_ht+0x163a5, %rdi
dec %r9
mov $110, %rcx
rep movsq
nop
nop
add $13035, %rdi
lea addresses_WC_ht+0x195f9, %rcx
nop
cmp $59931, %r12
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
add %r14, %r14
lea addresses_WT_ht+0x85f9, %r9
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r9
movntdq %xmm3, (%r9)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xfe71, %rsi
lea addresses_WC_ht+0x9af9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $23093, %r9
mov $93, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp

// Store
lea addresses_WT+0x1d189, %rbp
nop
nop
nop
nop
sub $40220, %r12
movb $0x51, (%rbp)
nop
nop
nop
nop
cmp $31606, %r9

// Faulty Load
lea addresses_PSE+0x19df9, %r12
sub %r14, %r14
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
