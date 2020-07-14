.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15b99, %rbx
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rbx
movaps %xmm1, (%rbx)
nop
xor $15595, %rbx
lea addresses_UC_ht+0x30c, %rbx
nop
nop
cmp %rdi, %rdi
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
cmp $11335, %r10
lea addresses_A_ht+0x18f99, %rsi
lea addresses_D_ht+0x2711, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $52232, %rax
mov $15, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x10b77, %rsi
nop
nop
nop
cmp $32722, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
and $48588, %rbx
lea addresses_A_ht+0x1a299, %r10
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
cmp $56004, %rcx
lea addresses_A_ht+0xe4d9, %rcx
nop
cmp $18839, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xc39b, %rsi
lea addresses_D_ht+0x70f5, %rdi
clflush (%rsi)
add %rbx, %rbx
mov $74, %rcx
rep movsl
and $5664, %rdi
lea addresses_D_ht+0x18d99, %r10
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%r10)
nop
dec %rcx
lea addresses_A_ht+0x1bf99, %rbx
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x6f41, %rax
nop
nop
nop
inc %r14
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
dec %rbx
lea addresses_normal_ht+0x1ef99, %rbx
nop
nop
nop
add $37512, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
nop
inc %rcx
lea addresses_A_ht+0x18621, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1a399, %rsi
lea addresses_normal_ht+0x7799, %rdi
nop
sub %r10, %r10
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $53879, %rax
lea addresses_UC_ht+0x18ad9, %r14
nop
nop
and $8439, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
xor $43553, %rbx
lea addresses_UC_ht+0x19199, %rsi
lea addresses_D_ht+0xb799, %rdi
nop
nop
nop
nop
nop
and $6385, %r11
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $27881, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1fd9, %r15
nop
cmp $19034, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
sub $61633, %rsi

// Load
lea addresses_UC+0x1eb99, %r15
clflush (%r15)
nop
nop
nop
nop
add %r10, %r10
mov (%r15), %rdx
sub %rbx, %rbx

// Store
lea addresses_WT+0xb475, %rbx
nop
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%rbx)
nop
nop
nop
xor $41341, %rsi

// Store
lea addresses_D+0x40d9, %r10
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r10)
cmp $8753, %r15

// Load
lea addresses_A+0x561, %r9
nop
nop
inc %rbx
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
cmp $30115, %r9

// Store
lea addresses_A+0xdb9, %r10
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r10)
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x6799, %r11
dec %r15
mov (%r11), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
