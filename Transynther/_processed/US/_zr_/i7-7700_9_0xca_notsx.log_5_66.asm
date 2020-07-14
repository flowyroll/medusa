.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5d02, %r10
nop
nop
nop
nop
sub %r9, %r9
mov (%r10), %ebx
nop
nop
inc %r9
lea addresses_D_ht+0x2e8a, %rsi
lea addresses_WT_ht+0x19f8a, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xaf8a, %rsi
nop
nop
inc %rax
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0xd9ca, %rdi
cmp %rax, %rax
mov (%rdi), %bx
nop
nop
inc %r10
lea addresses_normal_ht+0x10cca, %rsi
lea addresses_WT_ht+0x16f8a, %rdi
nop
nop
nop
mfence
mov $5, %rcx
rep movsb
nop
add %rax, %rax
lea addresses_normal_ht+0xb04a, %rbx
nop
cmp $34228, %rax
movw $0x6162, (%rbx)
add $64654, %r8
lea addresses_UC_ht+0x598a, %rsi
lea addresses_normal_ht+0x14e4c, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $39, %rcx
rep movsq
nop
sub $15501, %r10
lea addresses_WT_ht+0xd04a, %r8
sub %rax, %rax
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
and $45353, %r8
lea addresses_normal_ht+0xed2a, %rax
nop
nop
nop
inc %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp $34625, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_WC+0x368a, %rbx
nop
nop
nop
cmp $61651, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x1388a, %r11
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%r11)
nop
nop
nop
cmp $38802, %r14

// Faulty Load
lea addresses_US+0xf8a, %rbp
nop
and $27603, %r9
mov (%rbp), %r15d
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'00': 5}
00 00 00 00 00
*/
