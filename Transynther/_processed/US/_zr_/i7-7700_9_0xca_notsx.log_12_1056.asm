.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4a36, %rax
nop
nop
nop
nop
nop
dec %r12
movw $0x6162, (%rax)
xor $10272, %rax
lea addresses_D_ht+0x13136, %r10
nop
nop
and $26993, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
and $834, %rbp
lea addresses_WC_ht+0x694e, %rax
nop
nop
nop
add %rsi, %rsi
mov (%rax), %r12w
nop
nop
nop
cmp $9580, %rsi
lea addresses_WT_ht+0x17a6, %r12
clflush (%r12)
add %rcx, %rcx
movb (%r12), %al
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xa8b6, %rsi
lea addresses_UC_ht+0x11b36, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $51, %rcx
rep movsl
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x10fb6, %r9
nop
nop
nop
xor %rbp, %rbp
movl $0x61626364, (%r9)
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x8e7, %rsi
lea addresses_A_ht+0x13e36, %rdi
clflush (%rsi)
nop
xor $7937, %rbp
mov $40, %rcx
rep movsw
nop
nop
nop
nop
and $60753, %rax
lea addresses_D_ht+0x2336, %rsi
lea addresses_D_ht+0x19936, %rdi
nop
nop
nop
inc %rbp
mov $91, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_WC_ht+0xbe36, %rdi
clflush (%rdi)
nop
nop
add $3746, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
nop
nop
cmp $57886, %rdi
lea addresses_normal_ht+0x5736, %rsi
lea addresses_WC_ht+0xeb36, %rdi
clflush (%rdi)
nop
add $19406, %r10
mov $127, %rcx
rep movsl
nop
nop
cmp $29761, %rax
lea addresses_WC_ht+0x1ef36, %rax
nop
nop
nop
nop
nop
cmp $50332, %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x1ad36, %rbp
nop
nop
nop
sub $7469, %r12
movl $0x61626364, (%rbp)
and %r10, %r10
lea addresses_WC_ht+0x1a436, %rsi
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1d2b6, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1e57e, %rbp
cmp $18317, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
nop
nop
sub $57869, %rbx

// Faulty Load
lea addresses_US+0xd136, %rsi
nop
nop
nop
dec %rdx
mov (%rsi), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
