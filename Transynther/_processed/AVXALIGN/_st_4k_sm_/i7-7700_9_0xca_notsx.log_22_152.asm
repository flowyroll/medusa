.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5476, %r15
nop
nop
nop
nop
add $61372, %rdx
movl $0x61626364, (%r15)
inc %r12
lea addresses_normal_ht+0xc125, %r15
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%r15), %r11
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x142a5, %rsi
lea addresses_WC_ht+0x120a5, %rdi
nop
nop
nop
nop
dec %r9
mov $14, %rcx
rep movsl
nop
nop
nop
nop
xor $30178, %r11
lea addresses_WC_ht+0xdd5d, %rsi
lea addresses_normal_ht+0xaea5, %rdi
nop
nop
cmp %rdx, %rdx
mov $16, %rcx
rep movsb
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x7eaf, %rbx
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0x1b251, %r11
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
and %r12, %r12

// Store
lea addresses_A+0x13aa5, %r8
nop
nop
nop
nop
cmp $65232, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movntdq %xmm4, (%r8)
add $30899, %r12

// Store
lea addresses_RW+0xc565, %rbx
nop
nop
nop
nop
sub $11447, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbx)

// Exception!!!
nop
mov (0), %r8
xor %r11, %r11

// Store
lea addresses_normal+0x1bf4d, %rdx
nop
nop
nop
sub $26693, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
sub $17230, %rcx

// Store
lea addresses_RW+0x18a25, %r8
nop
nop
nop
xor $40242, %rdx
movl $0x51525354, (%r8)
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x11aa5, %r8
nop
nop
nop
nop
nop
cmp $45188, %r12
movb $0x51, (%r8)
nop
and $14681, %r11

// Store
mov $0xa5, %rdx
nop
nop
nop
add $36734, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
add $20825, %rcx

// Faulty Load
lea addresses_A+0x13aa5, %r11
nop
sub %r8, %r8
mov (%r11), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'51': 22}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
