.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17fbe, %rcx
dec %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xbe3e, %r10
xor $28025, %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x39fe, %rsi
lea addresses_normal_ht+0x19a7e, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $102, %rcx
rep movsq
xor %r15, %r15
lea addresses_UC_ht+0xffce, %r13
nop
nop
nop
nop
and $48048, %rsi
movw $0x6162, (%r13)
cmp %rdi, %rdi
lea addresses_WT_ht+0x1d0fe, %r13
nop
nop
nop
nop
nop
and $46416, %r10
mov $0x6162636465666768, %rax
movq %rax, (%r13)
xor $34917, %r10
lea addresses_A_ht+0xf4fe, %rsi
lea addresses_WC_ht+0x17cfe, %rdi
nop
inc %r10
mov $51, %rcx
rep movsl
nop
nop
nop
cmp $23703, %r13
lea addresses_D_ht+0x102fe, %rdi
add $59481, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
xor $12906, %r15
lea addresses_normal_ht+0x18fde, %rsi
lea addresses_normal_ht+0x1acfe, %rdi
cmp %r13, %r13
mov $100, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x13d46, %rcx
clflush (%rcx)
nop
cmp %rax, %rax
mov (%rcx), %edi
nop
nop
nop
nop
cmp $7953, %r10
lea addresses_A_ht+0x16bfe, %rsi
lea addresses_UC_ht+0x40fe, %rdi
clflush (%rsi)
and $46314, %r15
mov $25, %rcx
rep movsw
add $47744, %rdi
lea addresses_A_ht+0xb4fe, %rdi
nop
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
add $8283, %rcx
lea addresses_WC_ht+0xb596, %rdi
nop
nop
nop
add $58426, %r10
mov (%rdi), %rsi
nop
nop
nop
nop
cmp $18675, %r10
lea addresses_UC_ht+0xe07e, %rsi
nop
xor $27705, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x40fe, %r10
clflush (%r10)
nop
and %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
xor %rcx, %rcx
lea addresses_WT_ht+0x14cfe, %rcx
nop
nop
nop
nop
xor $27469, %rax
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_A+0x1c4fe, %r10
inc %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
sub $12278, %rbx

// Faulty Load
lea addresses_US+0x1bcfe, %r8
xor %rdi, %rdi
mov (%r8), %r9w
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
