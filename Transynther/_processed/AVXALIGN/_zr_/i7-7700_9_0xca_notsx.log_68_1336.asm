.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x171a7, %rsi
lea addresses_A_ht+0x8227, %rdi
nop
add $46154, %rax
mov $107, %rcx
rep movsw
add $27075, %rcx
lea addresses_UC_ht+0xb827, %r12
nop
and $28077, %rsi
movl $0x61626364, (%r12)
nop
sub $40511, %rax
lea addresses_D_ht+0x11a27, %r12
nop
cmp %r9, %r9
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
sub $17320, %r9
lea addresses_A_ht+0x337, %rdi
dec %r12
mov (%rdi), %cx
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0xc127, %rdx
nop
nop
sub %r12, %r12
mov (%rdx), %ax
nop
nop
add $11983, %rcx
lea addresses_normal_ht+0x10227, %rsi
nop
nop
nop
sub $30343, %rcx
movb (%rsi), %r12b
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x18da7, %rsi
lea addresses_WC_ht+0x7a17, %rdi
and $23898, %r11
mov $49, %rcx
rep movsq
nop
nop
add $8538, %r11
lea addresses_A_ht+0x1eb87, %rsi
lea addresses_A_ht+0x68b7, %rdi
clflush (%rdi)
nop
nop
nop
sub $11994, %r12
mov $8, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1a27, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
inc %r11
lea addresses_normal_ht+0x1e627, %rcx
nop
nop
nop
nop
mfence
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $47634, %rsi
lea addresses_normal_ht+0x16627, %r11
nop
nop
sub $27924, %rdx
mov (%r11), %si
nop
nop
nop
nop
add $51101, %r11
lea addresses_D_ht+0xeb03, %rdx
nop
nop
nop
nop
nop
xor $8473, %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
xor $24216, %rax
lea addresses_WT_ht+0x17a27, %rsi
lea addresses_D_ht+0x3750, %rdi
cmp $5419, %r9
mov $115, %rcx
rep movsq
sub %rdx, %rdx
lea addresses_WT_ht+0x11a27, %rsi
lea addresses_normal_ht+0x1efa7, %rdi
clflush (%rdi)
nop
sub $24948, %rax
mov $62, %rcx
rep movsl
nop
nop
nop
nop
cmp $26694, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_WT+0x134a7, %r8
nop
nop
dec %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
cmp $34155, %r12

// Faulty Load
mov $0xa27, %rbx
nop
nop
nop
nop
nop
sub $17451, %r10
mov (%rbx), %r12d
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 68}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
