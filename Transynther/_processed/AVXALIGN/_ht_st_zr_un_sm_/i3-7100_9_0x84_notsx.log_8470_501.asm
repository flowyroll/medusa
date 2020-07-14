.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18ea6, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
nop
nop
xor $57364, %r13
lea addresses_D_ht+0x12a46, %r12
nop
sub $2642, %rax
mov (%r12), %r13
and $28737, %r11
lea addresses_normal_ht+0x4346, %rsi
lea addresses_WT_ht+0x126a6, %rdi
nop
lfence
mov $107, %rcx
rep movsq
nop
nop
add $42195, %r12
lea addresses_A_ht+0x59f8, %r12
nop
nop
and %rax, %rax
movl $0x61626364, (%r12)
nop
and %rdi, %rdi
lea addresses_D_ht+0x4742, %rsi
lea addresses_A_ht+0x19051, %rdi
nop
nop
cmp $21878, %rdx
mov $89, %rcx
rep movsl
add $7068, %rsi
lea addresses_WC_ht+0xc52f, %rcx
nop
nop
nop
nop
and $45428, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
nop
add $34488, %rcx
lea addresses_normal_ht+0x127b6, %rsi
lea addresses_WC_ht+0xea6, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $34, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xc7a6, %rdi
nop
nop
nop
sub %rdx, %rdx
movb (%rdi), %cl
and %r12, %r12
lea addresses_A_ht+0x8666, %r13
inc %r12
mov (%r13), %ax
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x127e6, %rsi
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
add $45625, %r12
lea addresses_normal_ht+0x46a6, %rax
nop
nop
nop
nop
nop
sub $5132, %rdi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1d0a6, %r11
nop
nop
nop
add %rsi, %rsi
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x45a6, %rsi
lea addresses_A_ht+0xea46, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r11
mov $5, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0xfea6, %rsi
lea addresses_WT_ht+0x2226, %rdi
clflush (%rsi)
nop
nop
dec %r12
mov $115, %rcx
rep movsl
nop
nop
nop
add $24892, %rsi
lea addresses_WT_ht+0xafbe, %rdi
nop
nop
nop
add $41045, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm4, (%rdi)
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x108a6, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
sub %rbx, %rbx

// Load
lea addresses_WT+0x1e65a, %rax
nop
nop
nop
xor $54914, %r14
movb (%rax), %bl
sub $6144, %rcx

// Store
mov $0x2ecac60000000ea6, %r10
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
sub $45264, %r10

// Faulty Load
mov $0x2ecac60000000ea6, %r10
clflush (%r10)
nop
xor %r13, %r13
mov (%r10), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 462, '58': 7518, '6d': 486, '44': 4}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 6d 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 6d 58 6d 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 6d 58 58 58 00 58 58 58 58 58 58 58 58 58 6d 58 00 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 6d 58 58 58 58 58 58 58 58 58 58 58 58 00 6d 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 00 58 58 6d 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 6d 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 00 58 58 6d 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 6d 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 6d 58 58 6d 58 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 00 58 58 58 58 58 58 6d 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 6d 58 58 58 58 58 00 58 58 58 58 58 58 6d 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 6d 58 58 58 58 58 6d 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 6d 58 58 58 58
*/
