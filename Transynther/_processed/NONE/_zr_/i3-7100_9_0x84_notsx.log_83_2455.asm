.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x19327, %r8
nop
nop
nop
nop
nop
add $46391, %rsi
movb $0x61, (%r8)
nop
nop
sub $38233, %rsi
lea addresses_A_ht+0xae7, %rsi
lea addresses_A_ht+0x16f27, %rdi
nop
nop
nop
nop
cmp $44577, %rdx
mov $17, %rcx
rep movsq
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x71a7, %rdi
xor $760, %r8
mov (%rdi), %ebp
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x19ae7, %rdi
nop
nop
nop
sub %r12, %r12
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
nop
add $61544, %rsi
lea addresses_A_ht+0x11ce7, %rsi
lea addresses_D_ht+0x78df, %rdi
add %r11, %r11
mov $74, %rcx
rep movsl
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xf727, %rdi
clflush (%rdi)
nop
nop
nop
sub $40448, %r8
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
sub $49268, %rdx
lea addresses_WC_ht+0x1a0e7, %rsi
nop
nop
nop
nop
add %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor $62613, %rdi
lea addresses_normal_ht+0x11e6c, %r11
nop
nop
nop
sub $21725, %rcx
movl $0x61626364, (%r11)
and %rdi, %rdi
lea addresses_UC_ht+0xd9e7, %rsi
lea addresses_A_ht+0x19987, %rdi
nop
sub %r12, %r12
mov $114, %rcx
rep movsq
nop
nop
nop
xor $17644, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x71a7, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %rbx
movb $0x51, (%rcx)
nop
add %rbx, %rbx

// Store
mov $0x4f27460000000087, %r9
nop
nop
nop
nop
and $7553, %r15
movw $0x5152, (%r9)
nop
nop
nop
nop
cmp $35698, %r15

// Store
lea addresses_normal+0xc3d7, %rcx
clflush (%rcx)
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_A+0x194e7, %rcx
nop
nop
nop
and $11250, %rbx
mov (%rcx), %r9w
dec %r9

// Faulty Load
lea addresses_A+0x194e7, %r9
nop
nop
nop
and %r8, %r8
mov (%r9), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'00': 83}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
