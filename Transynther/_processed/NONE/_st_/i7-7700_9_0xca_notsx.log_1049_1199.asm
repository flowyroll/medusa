.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xb0f8, %rbp
sub %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rbp)
nop
nop
add $17401, %rbx
lea addresses_UC_ht+0x3b38, %rbp
nop
dec %rcx
mov (%rbp), %r8
nop
nop
nop
nop
add $31619, %r8
lea addresses_normal_ht+0xe5d8, %rax
nop
sub %r15, %r15
mov (%rax), %cx
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x9ad8, %r15
clflush (%r15)
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
nop
xor $45140, %r13
lea addresses_normal_ht+0x42d8, %r13
nop
nop
nop
nop
nop
xor $34036, %r8
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
xor $62110, %rbx
lea addresses_normal_ht+0x111d8, %rbx
nop
nop
inc %rbp
mov (%rbx), %r13w
nop
nop
nop
nop
add $60858, %rbp
lea addresses_WT_ht+0x11bb0, %rsi
lea addresses_D_ht+0x13758, %rdi
nop
nop
xor %rbx, %rbx
mov $95, %rcx
rep movsl
nop
cmp $49440, %r13
lea addresses_WC_ht+0xd5a0, %rsi
lea addresses_WT_ht+0x19c18, %rdi
nop
nop
cmp %r13, %r13
mov $70, %rcx
rep movsb
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0xc158, %r15
nop
nop
and $14737, %rsi
movb (%r15), %r13b
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x1d698, %rax
nop
dec %rbx
mov (%rax), %esi
nop
nop
xor $30337, %rbx
lea addresses_D_ht+0x8dd8, %rsi
add $26251, %rax
movb $0x61, (%rsi)
nop
nop
inc %rdi
lea addresses_WT_ht+0x105d8, %rsi
nop
sub $15871, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
sub $26606, %rcx
lea addresses_A_ht+0x191c0, %rsi
and %rbp, %rbp
mov (%rsi), %bx
nop
sub $12633, %rbp
lea addresses_D_ht+0x11c60, %rbx
nop
nop
nop
add %r8, %r8
mov (%rbx), %ax
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x4658, %rbx
nop
nop
cmp $19689, %rsi
mov (%rbx), %rax
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x2c9e, %r8
nop
xor $41336, %rdx
movw $0x5152, (%r8)
nop
nop
inc %rdx

// Store
lea addresses_RW+0x22d8, %rbx
clflush (%rbx)
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
and $37664, %rax

// Load
lea addresses_PSE+0x14858, %rdx
nop
nop
dec %r10
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0xd1d8, %r8
clflush (%r8)
nop
nop
nop
sub $10948, %rsi
movw $0x5152, (%r8)
cmp $31723, %r8

// Store
lea addresses_A+0xe5d8, %rsi
sub $51690, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WC+0x1cf58, %rdx
nop
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_A+0x1b1d8, %rax
nop
nop
nop
add %rcx, %rcx
mov (%rax), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'52': 1049}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
