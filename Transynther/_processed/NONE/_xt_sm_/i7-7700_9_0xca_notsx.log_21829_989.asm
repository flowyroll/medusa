.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xae6f, %rax
nop
inc %rsi
mov (%rax), %r11w
nop
inc %rax
lea addresses_D_ht+0x142ff, %rsi
lea addresses_WT_ht+0x6c6f, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $46, %rcx
rep movsl
nop
inc %rcx
lea addresses_WT_ht+0x786f, %rsi
lea addresses_UC_ht+0x1546f, %rdi
clflush (%rdi)
and $3124, %r13
mov $81, %rcx
rep movsb
nop
nop
nop
nop
and $9362, %rsi
lea addresses_WC_ht+0x6cef, %rdx
nop
nop
sub $37264, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
nop
add $42504, %rsi
lea addresses_normal_ht+0x114ef, %rsi
lea addresses_WC_ht+0x13f6f, %rdi
nop
nop
nop
and %r9, %r9
mov $119, %rcx
rep movsw
nop
and %rdx, %rdx
lea addresses_A_ht+0x1b197, %rdx
nop
nop
sub $9268, %r9
movw $0x6162, (%rdx)
nop
and %rdx, %rdx
lea addresses_WT_ht+0x18a85, %rsi
lea addresses_WT_ht+0x1f6f, %rdi
cmp $43229, %r11
mov $0, %rcx
rep movsl
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x18467, %rsi
lea addresses_WC_ht+0x46f, %rdi
sub $20961, %rdx
mov $83, %rcx
rep movsl
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x929d, %r9
nop
nop
nop
sub $50151, %rax
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdx
xor %rdx, %rdx
lea addresses_A_ht+0x149ff, %rdi
lfence
movl $0x61626364, (%rdi)
nop
nop
inc %rcx
lea addresses_UC_ht+0x89ef, %rsi
lea addresses_D_ht+0x1986f, %rdi
nop
nop
and %rdx, %rdx
mov $91, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x137ff, %rax
nop
nop
nop
sub %rcx, %rcx
mov (%rax), %r9w
nop
nop
nop
nop
add $3296, %r11
lea addresses_normal_ht+0x1b15f, %r9
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xd40f, %rax
nop
nop
cmp %rdx, %rdx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1606f, %r11
and $25048, %rdi
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x906f, %rsi
lea addresses_WT+0x906f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r12
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $58281, %rsi

// Store
lea addresses_WT+0x906f, %r12
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r12)
nop
nop
nop
nop
add $46832, %r12

// Store
lea addresses_A+0xa26f, %r12
clflush (%r12)
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
sub $2601, %r13

// Store
lea addresses_D+0x1786f, %r12
nop
and $896, %rdi
movl $0x51525354, (%r12)
sub $12226, %rcx

// Store
lea addresses_A+0x1af4f, %r11
xor $28263, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x334f, %r12
xor $22782, %rdi
movb $0x51, (%r12)
add %r8, %r8

// Faulty Load
lea addresses_WT+0x906f, %r8
nop
nop
nop
nop
and %r12, %r12
movb (%r8), %r13b
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
