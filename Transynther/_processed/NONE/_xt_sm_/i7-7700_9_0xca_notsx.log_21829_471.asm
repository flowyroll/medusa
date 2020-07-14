.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2812, %r9
nop
nop
nop
nop
sub $12209, %rbp
mov (%r9), %r14
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x5332, %r11
nop
nop
nop
dec %rbp
movb (%r11), %cl
nop
and %rbp, %rbp
lea addresses_D_ht+0xcea2, %rdi
nop
nop
nop
nop
mfence
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x3ae6, %r8
nop
cmp %r9, %r9
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x13152, %rsi
lea addresses_WC_ht+0x10152, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $81, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x11c52, %rsi
lea addresses_A_ht+0x2d32, %rdi
nop
nop
nop
inc %rbp
mov $99, %rcx
rep movsq
and $20866, %r14
lea addresses_WT_ht+0x4eec, %rcx
add $42825, %r14
movw $0x6162, (%rcx)
nop
nop
sub $8017, %rcx
lea addresses_WT_ht+0x1b852, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
add $4225, %r11
lea addresses_D_ht+0x39d2, %rsi
lea addresses_normal_ht+0x16ff2, %rdi
nop
nop
nop
and %r8, %r8
mov $24, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_WT_ht+0x13306, %r14
nop
nop
cmp $2621, %r8
movw $0x6162, (%r14)
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x14852, %rsi
lea addresses_A_ht+0x11852, %rdi
clflush (%rsi)
nop
sub %r11, %r11
mov $67, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $15667, %rdi
lea addresses_UC_ht+0xc052, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
movl $0x61626364, (%rdi)
nop
xor $8399, %rdi
lea addresses_D_ht+0x8652, %r9
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%r9)
xor $15041, %rdi
lea addresses_WC_ht+0x1b452, %r11
nop
nop
nop
nop
nop
cmp $31970, %rdi
mov (%r11), %ecx
nop
nop
nop
add $20295, %rsi
lea addresses_WT_ht+0x178a2, %rbp
nop
nop
nop
nop
nop
inc %rsi
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %r9
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xc852, %rbp
sub $45760, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WC+0x15852, %r15
nop
nop
add %r9, %r9
movb $0x51, (%r15)
nop
dec %rax

// REPMOV
lea addresses_US+0x1ca80, %rsi
lea addresses_RW+0xe552, %rdi
sub $33363, %rbp
mov $121, %rcx
rep movsb
add %r13, %r13

// Faulty Load
lea addresses_A+0xc852, %r13
nop
nop
inc %rbp
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
