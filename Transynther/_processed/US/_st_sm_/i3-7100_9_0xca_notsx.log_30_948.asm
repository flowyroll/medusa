.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x84ec, %rdx
sub $36108, %r8
movw $0x6162, (%rdx)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xbd59, %r11
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %rax
nop
nop
nop
nop
nop
add $50007, %r8
lea addresses_A_ht+0x90ec, %rax
nop
add %r8, %r8
movl $0x61626364, (%rax)
xor %rdi, %rdi
lea addresses_WT_ht+0x620c, %rsi
lea addresses_normal_ht+0x177d7, %rdi
cmp %rax, %rax
mov $44, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $55300, %r8
lea addresses_D_ht+0x1aeac, %rsi
lea addresses_WC_ht+0x11824, %rdi
dec %rdx
mov $48, %rcx
rep movsw
cmp $20086, %rdx
lea addresses_D_ht+0x192ac, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x166c, %rsi
lea addresses_D_ht+0x14aac, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $90, %rcx
rep movsw
xor %r11, %r11
lea addresses_A_ht+0x1b7cc, %rsi
lea addresses_WT_ht+0x146ac, %rdi
nop
nop
nop
nop
nop
sub $19253, %r11
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
add $12138, %rsi
lea addresses_D_ht+0xd1ac, %rdx
nop
nop
nop
nop
nop
sub $42053, %r8
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
add $2376, %rdx
lea addresses_D_ht+0x3aac, %r13
nop
nop
nop
xor $24212, %rdx
movw $0x6162, (%r13)
nop
nop
nop
sub $24614, %rsi
lea addresses_normal_ht+0x1728c, %rsi
lea addresses_WT_ht+0x1762c, %rdi
nop
cmp $3425, %r11
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x1b4ac, %rax
nop
nop
dec %rsi
movl $0x61626364, (%rax)
nop
nop
nop
and $57966, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x11e6c, %rsi
lea addresses_UC+0x1561c, %rdi
nop
nop
nop
nop
add $38044, %r13
mov $73, %rcx
rep movsl
nop
inc %rdi

// Store
lea addresses_WC+0x1526c, %r13
nop
nop
dec %r9
movb $0x51, (%r13)
nop
nop
nop
and $5886, %r9

// Store
lea addresses_US+0x12eac, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovaps %ymm2, (%rdi)
sub $45141, %r9

// Faulty Load
lea addresses_US+0x12eac, %rdi
nop
xor %r15, %r15
mov (%rdi), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'58': 21, '39': 9}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 39 39 58 39 39 39 39 39 58 58 58 58 39 39
*/
