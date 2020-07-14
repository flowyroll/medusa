.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11418, %rbx
sub $7214, %r14
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
sub $44141, %rax
lea addresses_D_ht+0x5c34, %rsi
lea addresses_D_ht+0x1b3d8, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $40, %rcx
rep movsb
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1383e, %rsi
lea addresses_WC_ht+0x13c58, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r14
mov $104, %rcx
rep movsl
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1df18, %rax
nop
nop
add $10603, %rsi
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
xor $1936, %rax
lea addresses_WT_ht+0xa8f, %rbx
nop
nop
sub %rax, %rax
mov (%rbx), %r14d
nop
nop
nop
nop
nop
sub $62799, %rbx
lea addresses_normal_ht+0x9bd8, %r14
nop
add $14857, %rcx
mov (%r14), %rbx
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x1a898, %rsi
lea addresses_UC_ht+0x986e, %rdi
nop
and %rdx, %rdx
mov $98, %rcx
rep movsq
sub $25675, %r10
lea addresses_normal_ht+0x7f30, %rdi
and %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1e5c8, %rdx
nop
nop
cmp $22686, %rsi
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
and %rax, %rax
lea addresses_WT_ht+0x1c808, %r14
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r14)
nop
nop
cmp $44652, %rdi
lea addresses_normal_ht+0x2422, %rbx
nop
nop
nop
nop
nop
inc %rax
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
xor $37663, %r14
lea addresses_UC_ht+0x1b318, %rsi
lea addresses_UC_ht+0x7738, %rdi
clflush (%rdi)
nop
nop
add $40838, %rax
mov $54, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x19288, %rdx
nop
inc %rbx
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
add $59319, %rcx
lea addresses_D_ht+0xf7d2, %r10
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x9b18, %rax
nop
nop
nop
xor $5289, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x12518, %r11
nop
and $61809, %rcx
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $22174, %r8

// Store
lea addresses_A+0xc318, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and $52603, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r14)
nop
sub %rax, %rax

// REPMOV
lea addresses_WC+0x116c2, %rsi
lea addresses_A+0xc318, %rdi
nop
add %r10, %r10
mov $116, %rcx
rep movsq
nop
nop
nop
xor %r10, %r10

// Load
lea addresses_normal+0x178, %rsi
nop
sub $10433, %rcx
mov (%rsi), %r10
nop
nop
sub $35048, %rsi

// REPMOV
lea addresses_WC+0x17318, %rsi
lea addresses_PSE+0x8a88, %rdi
nop
nop
add $432, %r11
mov $63, %rcx
rep movsw
nop
nop
nop
nop
add $43936, %r8

// REPMOV
lea addresses_WC+0x19498, %rsi
lea addresses_RW+0xdb18, %rdi
add %rax, %rax
mov $27, %rcx
rep movsw
nop
add %rdi, %rdi

// Faulty Load
lea addresses_A+0xc318, %r11
nop
nop
nop
nop
nop
cmp $44190, %rax
movaps (%r11), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
