.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1edf3, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
movl $0x61626364, (%rbx)
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xeef3, %rsi
lea addresses_WT_ht+0x18a33, %rdi
nop
nop
nop
nop
and $44059, %r15
mov $84, %rcx
rep movsq
xor %r13, %r13
lea addresses_WT_ht+0x12bab, %rsi
lea addresses_WT_ht+0x98da, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $15, %rcx
rep movsq
nop
dec %rsi
lea addresses_A_ht+0x71f3, %r15
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x69f3, %rsi
nop
nop
nop
nop
and %r15, %r15
mov (%rsi), %ebx
cmp %r13, %r13
lea addresses_A_ht+0x1a0f3, %rsi
lea addresses_D_ht+0x4603, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $69, %rcx
rep movsl
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx

// Store
mov $0x2fc23600000009f3, %r15
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r15)
nop
nop
nop
nop
cmp $1406, %r9

// Store
lea addresses_WT+0x46e3, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0xc7, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rcx)
cmp $47921, %r12

// Store
lea addresses_RW+0x12753, %r15
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r15)
and $27240, %r9

// Store
lea addresses_normal+0xe9c1, %rcx
nop
sub $20268, %r11
movb $0x51, (%rcx)
nop
and $23841, %rcx

// Load
lea addresses_A+0x17d73, %r11
nop
add $55449, %r10
movb (%r11), %cl
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_D+0x176f3, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%r11), %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'36': 2}
36 36
*/
