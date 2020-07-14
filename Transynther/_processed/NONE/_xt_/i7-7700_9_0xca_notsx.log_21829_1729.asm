.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x139ac, %rsi
lea addresses_UC_ht+0x13f4c, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $98, %rcx
rep movsb
nop
nop
nop
nop
sub $15222, %rdx
lea addresses_D_ht+0x1908a, %r8
nop
nop
nop
nop
cmp %rax, %rax
mov (%r8), %rbx
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xe3e1, %rsi
lea addresses_normal_ht+0x1383e, %rdi
nop
nop
nop
nop
sub $32750, %rbp
mov $34, %rcx
rep movsl
nop
nop
nop
sub $27795, %rdx
lea addresses_WC_ht+0xb11c, %rbx
clflush (%rbx)
nop
nop
nop
sub $59845, %rcx
movb (%rbx), %r8b
nop
nop
nop
nop
nop
xor $47420, %r8
lea addresses_normal_ht+0xe60c, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%rcx), %al
add %rdi, %rdi
lea addresses_WT_ht+0xf8c, %rcx
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
nop
inc %rbp
lea addresses_normal_ht+0x1113c, %rbp
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1e356, %rsi
lea addresses_WT_ht+0xcf4c, %rdi
nop
nop
nop
and %r8, %r8
mov $55, %rcx
rep movsl
cmp $41918, %rdx
lea addresses_normal_ht+0xec0c, %rsi
lea addresses_D_ht+0x12ae6, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $84, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_A_ht+0xf60c, %rax
inc %rbx
movb $0x61, (%rax)
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x2c0c, %rsi
lea addresses_WT_ht+0x1ea0c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $90, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_UC_ht+0x1350c, %rbx
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
xor $26979, %rbp
lea addresses_UC_ht+0xed0c, %rsi
lea addresses_A_ht+0x13e0c, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $62, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x1c60c, %rsi
lea addresses_D_ht+0x196c, %rdi
nop
nop
lfence
mov $82, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1d5b3, %rsi
nop
cmp $23359, %r11
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $5113, %r13

// Store
mov $0xd6c, %r12
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r12)
sub $46624, %rsi

// Store
mov $0x30c, %r13
clflush (%r13)
nop
nop
nop
nop
xor $54869, %r8
movw $0x5152, (%r13)
nop
nop
nop
inc %r13

// Store
lea addresses_A+0x17384, %rbp
clflush (%rbp)
nop
nop
sub $39989, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
sub $44373, %rdi

// Store
lea addresses_UC+0xe60c, %rbp
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x8c1c, %r13
nop
dec %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x1113c, %r12
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
cmp $20607, %rdi

// Store
lea addresses_normal+0x1cecc, %r11
nop
nop
nop
sub $3476, %rsi
movw $0x5152, (%r11)
nop
and %r11, %r11

// Faulty Load
lea addresses_PSE+0x10e0c, %r13
nop
xor $48385, %r12
mov (%r13), %r11w
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
