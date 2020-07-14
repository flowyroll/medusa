.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x479e, %rsi
lea addresses_D_ht+0x1b9b2, %rdi
clflush (%rdi)
nop
nop
nop
xor $15829, %r11
mov $115, %rcx
rep movsq
nop
inc %rcx
lea addresses_normal_ht+0xb1ec, %rsi
lea addresses_WT_ht+0x163de, %rdi
add $20039, %r15
mov $41, %rcx
rep movsl
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x2686, %r14
nop
nop
nop
nop
nop
dec %rax
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
dec %rax
lea addresses_WC_ht+0xade, %rsi
lea addresses_A_ht+0xc3de, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
mov $26, %rcx
rep movsw
nop
add $16703, %r11
lea addresses_A_ht+0x685e, %rsi
lea addresses_normal_ht+0x64ba, %rdi
nop
add %r9, %r9
mov $13, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1bb62, %rsi
lea addresses_WC_ht+0x13b6a, %rdi
nop
nop
nop
and %rax, %rax
mov $11, %rcx
rep movsq
nop
nop
cmp $20861, %r14
lea addresses_D_ht+0x15be6, %r15
nop
xor %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r15)
add %rsi, %rsi
lea addresses_UC_ht+0x16b60, %r9
nop
xor $5812, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r9)
nop
nop
add $22843, %r15
lea addresses_WC_ht+0x6ade, %rcx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
and %rcx, %rcx
lea addresses_normal_ht+0x103de, %rsi
lea addresses_A_ht+0x39de, %rdi
clflush (%rdi)
nop
nop
and $12644, %r15
mov $28, %rcx
rep movsw
cmp %rax, %rax
lea addresses_normal_ht+0x73d6, %rsi
lea addresses_WC_ht+0xd44a, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $23, %rcx
rep movsl
nop
nop
add $21819, %rcx
lea addresses_WC_ht+0x1775e, %rdi
nop
nop
nop
cmp %r9, %r9
mov (%rdi), %si
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1b5de, %rsi
lea addresses_D_ht+0x19a6e, %rdi
sub %r14, %r14
mov $21, %rcx
rep movsq
nop
nop
cmp $11583, %rax
lea addresses_A_ht+0x1376, %rdi
nop
cmp %rcx, %rcx
movb (%rdi), %al
nop
nop
nop
nop
xor $24107, %rax
lea addresses_D_ht+0x17bde, %r14
nop
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
xor $20665, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0xbde, %r12
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%r12)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_D+0x12bde, %rbx
clflush (%rbx)
inc %r8
movb $0x51, (%rbx)
and $41944, %rdx

// Store
lea addresses_D+0xf3de, %r12
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x6bde, %rbx
nop
nop
add $58700, %r12
movl $0x51525354, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_D+0xf3de, %rdx
dec %rbx
mov (%rdx), %edi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
