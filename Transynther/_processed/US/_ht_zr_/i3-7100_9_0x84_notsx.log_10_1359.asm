.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa10a, %rsi
lea addresses_UC_ht+0x1c066, %rdi
clflush (%rdi)
sub $42350, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
add $17618, %rbx
lea addresses_D_ht+0xd6a6, %r9
inc %r11
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
xor $52007, %r8
lea addresses_UC_ht+0x16116, %rsi
lea addresses_A_ht+0xc3aa, %rdi
nop
nop
nop
sub %r9, %r9
mov $125, %rcx
rep movsq
nop
nop
nop
add $25508, %rsi
lea addresses_A_ht+0x1e1e6, %r11
mfence
movw $0x6162, (%r11)
nop
nop
nop
nop
and $13555, %rsi
lea addresses_A_ht+0x62c2, %rcx
nop
sub $44897, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rcx)
inc %rcx
lea addresses_A_ht+0x106a6, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov (%rdi), %r8w
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xe33a, %rdi
clflush (%rdi)
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rdi)
add %r8, %r8
lea addresses_WC_ht+0x15466, %r11
cmp $27036, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x194a6, %rsi
cmp %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rbx
cmp $26968, %rsi
lea addresses_UC_ht+0x9b16, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r9), %esi
nop
lfence
lea addresses_normal_ht+0x9ea6, %rsi
lea addresses_UC_ht+0x1626, %rdi
clflush (%rsi)
nop
nop
sub $13047, %r8
mov $73, %rcx
rep movsb
inc %r8
lea addresses_WC_ht+0x19ea6, %rcx
xor $55474, %r9
movb $0x61, (%rcx)
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x172a6, %rbx
nop
inc %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
and $450, %rdi
lea addresses_WT_ht+0x1e0a6, %rsi
nop
xor $61263, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rdi

// Store
lea addresses_A+0x2286, %r15
nop
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_US+0x36a6, %r14
nop
sub %r8, %r8
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 1, '00': 7, '47': 1, '44': 1}
00 00 00 00 47 00 44 00 49 00
*/
