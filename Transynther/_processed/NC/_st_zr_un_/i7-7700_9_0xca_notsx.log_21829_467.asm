.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d1ba, %r8
clflush (%r8)
nop
nop
nop
nop
inc %r15
mov (%r8), %bx
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x2dba, %r13
clflush (%r13)
nop
sub $44434, %r9
movb (%r13), %r12b
nop
sub $52492, %r13
lea addresses_WC_ht+0x127a6, %rsi
lea addresses_normal_ht+0x436c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $63557, %r8
mov $122, %rcx
rep movsq
cmp %r15, %r15
lea addresses_normal_ht+0x1d2ea, %rsi
lea addresses_UC_ht+0x41ba, %rdi
nop
nop
nop
nop
nop
sub $61275, %r8
mov $4, %rcx
rep movsq
nop
inc %r8
lea addresses_WT_ht+0x6717, %rsi
lea addresses_D_ht+0x148ba, %rdi
add %r13, %r13
mov $106, %rcx
rep movsb
xor %rdi, %rdi
lea addresses_WT_ht+0xf13e, %rsi
lea addresses_WC_ht+0x1ba, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $85, %rcx
rep movsb
nop
inc %r15
lea addresses_WT_ht+0x51f9, %rsi
clflush (%rsi)
nop
nop
nop
cmp $19904, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x187cc, %rsi
lea addresses_D_ht+0x10ba, %rdi
nop
nop
dec %rbx
mov $114, %rcx
rep movsw
nop
sub %r13, %r13
lea addresses_UC_ht+0x123ea, %rsi
lea addresses_WC_ht+0xa2fa, %rdi
nop
sub %r12, %r12
mov $45, %rcx
rep movsb
nop
nop
nop
nop
xor $19730, %r12
lea addresses_WT_ht+0x73b0, %rsi
lea addresses_A_ht+0x12932, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $31702, %r9
mov $97, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0xe85a, %rsi
lea addresses_UC_ht+0x75ba, %rdi
nop
cmp $53916, %rbx
mov $82, %rcx
rep movsl
sub $52684, %r9
lea addresses_WT_ht+0x178ba, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
dec %r8
lea addresses_WC_ht+0x50ea, %r15
clflush (%r15)
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
dec %r8
lea addresses_normal_ht+0x921a, %rsi
nop
add $62364, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0x123ba, %r10
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x19ba, %r10
nop
add %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
inc %rdx

// Faulty Load
mov $0x3df08f00000009ba, %rax
nop
nop
inc %r10
mov (%rax), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'6d': 16961, '00': 951, '58': 3917}
58 6d 58 6d 6d 6d 6d 6d 00 58 6d 6d 58 58 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 6d 58 58 58 6d 6d 58 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 58 58 6d 58 6d 58 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 00 6d 58 00 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 58 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 00 6d 6d 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 58 6d 58 00 58 00 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 00 6d 58 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 58 6d 00 58 6d 58 6d 58 6d 6d 58 00 58 6d 00 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 00 58 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 6d 00 6d 6d 58 58 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 58 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 00 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 58 6d 58 00 6d 58 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 00 58 6d 00 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 58 6d 6d 58 00 00 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 00 00 58 6d 58 58 00 6d 6d 6d 6d 58 6d 58 6d 6d 6d 58 6d 6d 58 6d 58 6d 6d 6d 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 58 00 58 6d 6d 6d 6d 00 00 6d 58 6d 6d 6d 58 6d 58 6d 6d 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 00 00 00 6d 58 6d 6d 58 6d 6d 6d 6d 6d 00 58 58 6d 6d 6d 6d 58 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 58 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 58 00 6d 58 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 58 58 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 58 6d 00 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 58 6d 6d 6d 6d 6d 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 00 58 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 58 6d 6d 6d 6d 6d 6d 58 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 00 6d 6d 6d 6d 6d 6d 6d 58 58 58 6d 6d 6d 58 6d 6d 6d 58 58 6d 6d 6d 6d 58 6d 58 6d 58 6d 6d 58 6d 6d 58 6d 6d 6d 6d 6d 58 6d 58 6d 58 6d 6d 6d 6d 6d 6d 58 6d 00 6d 00 6d 58 6d 58 6d 6d 6d 6d 58 58 6d 6d 6d 6d 58 6d 6d 6d 6d 58 6d 58 6d 6d 58 6d 6d
*/
