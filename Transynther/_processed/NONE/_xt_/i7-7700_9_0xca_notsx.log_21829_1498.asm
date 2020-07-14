.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1659f, %r14
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rax
movq %rax, (%r14)
sub $47384, %r14
lea addresses_normal_ht+0x12f22, %rsi
nop
sub %r9, %r9
movl $0x61626364, (%rsi)
nop
and $49866, %rax
lea addresses_WT_ht+0x13997, %rsi
nop
nop
nop
nop
nop
xor $8056, %r12
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0xeb07, %rsi
lea addresses_D_ht+0x11ec3, %rdi
nop
nop
nop
nop
nop
cmp $29967, %r14
mov $33, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x151a7, %rsi
lea addresses_UC_ht+0x6197, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $105, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_WT_ht+0x3427, %rsi
lea addresses_A_ht+0x1b2e7, %rdi
nop
nop
nop
nop
sub $31800, %r14
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $28094, %rdi
lea addresses_D_ht+0xb6a7, %rdi
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
nop
nop
nop
sub $21912, %rax
lea addresses_UC_ht+0xbbaf, %rdi
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x7cb3, %rcx
nop
nop
nop
add $19309, %rax
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
xor $40520, %rsi
lea addresses_D_ht+0x73aa, %rsi
lea addresses_normal_ht+0x8867, %rdi
nop
nop
sub %r14, %r14
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x36ef, %rsi
lea addresses_UC_ht+0xb957, %rdi
nop
nop
nop
inc %r14
mov $116, %rcx
rep movsl
nop
nop
nop
nop
add $45863, %r14
lea addresses_D_ht+0x13a3, %rsi
lea addresses_D_ht+0x11e37, %rdi
nop
nop
sub $16398, %r14
mov $36, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $50660, %rbx
lea addresses_normal_ht+0x67, %rsi
lea addresses_A_ht+0x1eff7, %rdi
nop
nop
add $47122, %rax
mov $101, %rcx
rep movsq
and %rsi, %rsi
lea addresses_WC_ht+0x1a367, %rsi
clflush (%rsi)
nop
nop
cmp $1578, %r9
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x12377, %r14
nop
nop
nop
nop
xor $1812, %rbx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx

// Store
lea addresses_D+0x1a52f, %r11
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_RW+0x16367, %r9
nop
cmp %rbx, %rbx
movb $0x51, (%r9)
add $4786, %r10

// Store
lea addresses_UC+0x159c3, %r11
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
add $43970, %r14

// Faulty Load
lea addresses_normal+0xdb67, %r12
inc %r10
mov (%r12), %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
