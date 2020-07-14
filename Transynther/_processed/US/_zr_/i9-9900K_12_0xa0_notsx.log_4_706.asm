.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1aac9, %r12
nop
add $22014, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%r12)
nop
nop
nop
nop
nop
cmp $45732, %rbx
lea addresses_D_ht+0x7115, %r8
nop
nop
nop
and $45808, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r8)
nop
xor %r8, %r8
lea addresses_A_ht+0x6b9, %rdi
nop
nop
nop
nop
mfence
mov (%rdi), %dx
nop
cmp $14214, %rdi
lea addresses_A_ht+0x16139, %rdi
nop
nop
nop
nop
xor $50151, %rdx
mov (%rdi), %bx
nop
nop
nop
cmp $52203, %rdi
lea addresses_normal_ht+0xf011, %r12
nop
inc %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
inc %r12
lea addresses_A_ht+0xf539, %rdx
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x16dc1, %rdx
nop
nop
nop
add %r8, %r8
mov (%rdx), %r12d
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x18089, %rdi
sub %rbx, %rbx
mov (%rdi), %ax
nop
nop
xor $56949, %rax
lea addresses_normal_ht+0x18951, %r12
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r12), %bx
nop
sub %r11, %r11
lea addresses_D_ht+0x10ab9, %rsi
lea addresses_A_ht+0x13cb9, %rdi
nop
nop
xor %r12, %r12
mov $11, %rcx
rep movsl
inc %rcx
lea addresses_WT_ht+0x11c0b, %rsi
lea addresses_WC_ht+0x108b9, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $10, %rcx
rep movsl
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x1e2b9, %rdx
nop
nop
cmp %r8, %r8
movw $0x6162, (%rdx)
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1e7f9, %r12
nop
nop
nop
dec %rsi
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0x194b9, %rcx
nop
nop
nop
and $31566, %rbx
mov (%rcx), %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'00': 4}
00 00 00 00
*/
