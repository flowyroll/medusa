.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd86e, %r13
nop
nop
and $30497, %r11
movb $0x61, (%r13)
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1436e, %rsi
lea addresses_WT_ht+0x16e30, %rdi
xor %r15, %r15
mov $37, %rcx
rep movsq
nop
nop
and $54077, %rcx
lea addresses_D_ht+0x8bee, %r15
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x326e, %rbx
nop
nop
nop
nop
nop
dec %r13
movb $0x61, (%rbx)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x1c26e, %rsi
lea addresses_WC_ht+0x1726e, %rdi
cmp %rax, %rax
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0xa26e, %r11
clflush (%r11)
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
cmp $41600, %r11
lea addresses_WT_ht+0xfd66, %rdi
nop
cmp $46, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rdi
movaps %xmm6, (%rdi)
nop
nop
nop
sub $46487, %rdi
lea addresses_WC_ht+0x608c, %rsi
lea addresses_UC_ht+0x506e, %rdi
nop
nop
cmp %rax, %rax
mov $103, %rcx
rep movsb
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x1584a, %r13
nop
sub %rcx, %rcx
movb (%r13), %r15b
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x2fd6, %rsi
add %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x1ebae, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r13, %r13
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rbx
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1f52, %rsi
lea addresses_WC_ht+0xb7fe, %rdi
nop
nop
nop
nop
and $7534, %rbx
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $22316, %rsi
lea addresses_D_ht+0x16f7e, %rcx
nop
nop
nop
xor $27506, %rsi
movb (%rcx), %r15b
nop
nop
dec %rcx
lea addresses_D_ht+0xebe, %rsi
lea addresses_UC_ht+0x13e6e, %rdi
nop
inc %rbx
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx

// Store
lea addresses_UC+0x600e, %r10
cmp $18032, %r15
movl $0x51525354, (%r10)
nop
cmp %rax, %rax

// Load
lea addresses_PSE+0x10de6, %r10
xor $59591, %r13
movntdqa (%r10), %xmm7
vpextrq $1, %xmm7, %rax
nop
xor $40367, %rcx

// Store
lea addresses_PSE+0x18ec6, %r10
nop
nop
nop
cmp $24583, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r10)
nop
nop
inc %rax

// Store
lea addresses_WT+0x8a6e, %r13
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
sub $18641, %rax

// Store
lea addresses_normal+0xafda, %r13
nop
sub %rbx, %rbx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
dec %r10

// Store
lea addresses_WT+0x1212e, %r10
nop
nop
cmp %r12, %r12
movw $0x5152, (%r10)
and %rax, %rax

// Store
lea addresses_WT+0x17e6e, %rax
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
and %r12, %r12

// Load
mov $0x2758c3000000066e, %rcx
nop
nop
nop
nop
nop
sub %r10, %r10
vmovntdqa (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
inc %rax

// Faulty Load
mov $0x2758c3000000066e, %rbx
nop
nop
xor $1145, %r12
mov (%rbx), %r10d
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 1}
00
*/
