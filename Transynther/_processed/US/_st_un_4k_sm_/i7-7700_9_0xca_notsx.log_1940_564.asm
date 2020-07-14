.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x143a3, %r13
nop
nop
nop
cmp %r8, %r8
mov (%r13), %rax
nop
nop
sub $35387, %r11
lea addresses_normal_ht+0x193f9, %rsi
lea addresses_A_ht+0xa063, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $35, %rcx
rep movsq
nop
sub %rax, %rax
lea addresses_WC_ht+0x1c303, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %r11
vmovntdq %ymm0, (%r11)
nop
nop
nop
xor $63511, %r8
lea addresses_UC_ht+0x27a3, %rax
nop
nop
nop
sub $52995, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
xor %rdi, %rdi
lea addresses_D_ht+0x161a3, %rsi
lea addresses_normal_ht+0x1d7a3, %rdi
nop
and $64807, %rax
mov $108, %rcx
rep movsq
nop
xor $26507, %r8
lea addresses_WC_ht+0x8e23, %r8
nop
nop
nop
cmp %rsi, %rsi
movb (%r8), %r11b
nop
add %rdi, %rdi
lea addresses_A_ht+0x149a3, %r13
nop
nop
nop
nop
cmp $12632, %r11
movl $0x61626364, (%r13)
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1e93c, %r8
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x94a3, %rsi
lea addresses_UC_ht+0x1ee23, %rdi
nop
nop
nop
dec %r8
mov $47, %rcx
rep movsl
nop
nop
nop
nop
and $36030, %rsi
lea addresses_normal_ht+0x192e4, %rsi
lea addresses_WT_ht+0x18def, %rdi
sub %rbp, %rbp
mov $12, %rcx
rep movsq
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_D+0x185a3, %r12
xor %r8, %r8
mov (%r12), %edi
nop
nop
nop
nop
nop
and $8613, %r8

// Load
lea addresses_PSE+0x77a3, %r8
nop
sub $15105, %rbx
mov (%r8), %di
add %r8, %r8

// Store
lea addresses_US+0x1d1a3, %r8
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovaps %ymm6, (%r8)
nop
nop
nop
nop
nop
cmp $53575, %rdx

// Store
lea addresses_D+0x169cb, %r12
nop
nop
nop
nop
nop
and $65456, %r8
movb $0x51, (%r12)
nop
cmp $37992, %r8

// Load
lea addresses_A+0x1cf7, %rcx
dec %r13
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
and %rdi, %rdi

// Store
lea addresses_D+0x1f1a3, %rbx
nop
nop
and $24522, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rbx)
inc %rdi

// Faulty Load
lea addresses_US+0x1d1a3, %rdi
nop
nop
nop
nop
nop
sub $45014, %rbx
mov (%rdi), %r13d
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'e0': 1910, 'de': 1, '58': 29}
de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 58 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0
*/
