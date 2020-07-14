.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x81d1, %rsi
nop
add $52210, %r12
mov (%rsi), %r11d
nop
sub $19116, %r12
lea addresses_normal_ht+0x48f2, %r8
nop
nop
nop
nop
sub %r10, %r10
mov (%r8), %si
nop
nop
inc %r11
lea addresses_WT_ht+0x11332, %rsi
lea addresses_WC_ht+0x22f2, %rdi
nop
nop
and %rdx, %rdx
mov $44, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WC_ht+0x8f82, %r12
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r12)
add $16682, %r10
lea addresses_UC_ht+0xf3f2, %r11
nop
nop
nop
nop
cmp %r12, %r12
movb (%r11), %r10b
nop
nop
nop
nop
nop
and $51205, %r11
lea addresses_WT_ht+0x60f2, %rsi
lea addresses_normal_ht+0x19472, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $70, %rcx
rep movsq
nop
nop
cmp $56651, %r12
lea addresses_normal_ht+0x18eb2, %r10
nop
nop
nop
nop
xor $9628, %rcx
movl $0x61626364, (%r10)
nop
sub $1406, %r8
lea addresses_WC_ht+0x4a22, %rcx
xor %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
sub $33691, %rdi
lea addresses_D_ht+0x14532, %rsi
lea addresses_D_ht+0xa4f2, %rdi
nop
nop
sub %rdx, %rdx
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x1c0f2, %rdx
nop
nop
nop
and %rcx, %rcx
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r12
dec %rsi
lea addresses_normal_ht+0x1a372, %rcx
dec %r12
mov (%rcx), %r8w
nop
nop
nop
nop
nop
sub $4352, %r8
lea addresses_A_ht+0x198f2, %r8
nop
nop
nop
nop
nop
add $28331, %r12
mov (%r8), %rsi
sub %r10, %r10
lea addresses_WT_ht+0x1b5b2, %rcx
nop
nop
and $48717, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
cmp $13206, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Load
lea addresses_US+0x1b0f2, %r15
nop
nop
nop
and $52070, %rcx
movb (%r15), %r14b
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0xf872, %rbp
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
cmp $63450, %r14

// Faulty Load
lea addresses_US+0x1b0f2, %rbp
nop
nop
nop
nop
add %rcx, %rcx
mov (%rbp), %r14d
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 97}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
