.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a6c0, %r15
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r8
movq %r8, (%r15)
nop
nop
nop
nop
nop
sub $31723, %rbx
lea addresses_WC_ht+0x13806, %rbx
nop
nop
dec %r14
mov (%rbx), %rcx
nop
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0xe9c0, %r15
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r15)
sub $8494, %rcx
lea addresses_normal_ht+0x1dc76, %rcx
nop
and %r14, %r14
movb $0x61, (%rcx)
xor $33411, %rcx
lea addresses_normal_ht+0x1eb80, %rsi
lea addresses_normal_ht+0xbb0e, %rdi
cmp $52377, %rbx
mov $4, %rcx
rep movsq
nop
add $51156, %rdi
lea addresses_A_ht+0x11c80, %r8
nop
nop
nop
sub $38982, %r14
movw $0x6162, (%r8)
nop
and %r8, %r8
lea addresses_WT_ht+0x158af, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x7f80, %rdi
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
sub $61858, %r14
lea addresses_WT_ht+0x147e8, %rsi
nop
sub $20910, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp $40051, %rbp
lea addresses_WT_ht+0xfc84, %rsi
lea addresses_UC_ht+0x174e0, %rdi
xor $42064, %r15
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x14fe8, %rsi
lea addresses_A_ht+0x7130, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r15, %r15
mov $74, %rcx
rep movsl
nop
xor %rdi, %rdi
lea addresses_D_ht+0xcf00, %rbx
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and $4697, %r9
lea addresses_WT_ht+0x540, %rsi
sub $39581, %rbx
movb $0x61, (%rsi)
nop
xor $12204, %rbx
lea addresses_WT_ht+0x13928, %rsi
lea addresses_D_ht+0xed50, %rdi
inc %r9
mov $34, %rcx
rep movsq
nop
nop
nop
nop
xor $38465, %rdi
lea addresses_UC_ht+0xbb68, %r9
add %rsi, %rsi
mov (%r9), %r8w
nop
nop
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_PSE+0x159ac, %rax
nop
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x2310, %r9
nop
add $47147, %r11
movb $0x51, (%r9)
dec %r11

// Store
mov $0x47af3500000003c0, %r11
nop
nop
nop
and $32558, %rdx
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $22613, %r9

// Store
lea addresses_D+0x18380, %r11
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r11)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0xb80, %r8
and $826, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r8)
nop
nop
dec %r11

// Store
lea addresses_US+0x2b80, %r8
nop
nop
nop
nop
xor $43857, %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_A+0xb80, %rdi
cmp $22665, %rdx
movb (%rdi), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'54': 12}
54 54 54 54 54 54 54 54 54 54 54 54
*/
