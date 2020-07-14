.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c1f0, %r15
nop
nop
nop
nop
add %r8, %r8
mov (%r15), %r12d
nop
nop
nop
nop
cmp $55996, %r11
lea addresses_WT_ht+0x1a9dc, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
add $53834, %rdi
lea addresses_WT_ht+0xb05c, %rsi
lea addresses_WT_ht+0x1c9d4, %rdi
nop
add %r11, %r11
mov $36, %rcx
rep movsw
xor $50329, %rsi
lea addresses_WT_ht+0x9984, %r8
nop
nop
nop
nop
nop
and %r15, %r15
movw $0x6162, (%r8)
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x4b9c, %rdi
nop
sub $65011, %r12
mov (%rdi), %r8
nop
nop
sub $19004, %rdi
lea addresses_UC_ht+0x50c8, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
xor $30317, %rcx
lea addresses_A_ht+0x1b6c, %rsi
lea addresses_A_ht+0xf1e, %rdi
dec %r8
mov $41, %rcx
rep movsw
add %rdi, %rdi
lea addresses_WC_ht+0x909c, %r15
nop
nop
nop
nop
and $42237, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
sub $17916, %rcx
lea addresses_UC_ht+0xc6ac, %r12
nop
nop
dec %r11
mov (%r12), %esi
nop
nop
nop
dec %r11
lea addresses_UC_ht+0xa39c, %rsi
lea addresses_D_ht+0x1184, %rdi
nop
nop
inc %r15
mov $80, %rcx
rep movsl
nop
nop
xor $4120, %r11
lea addresses_normal_ht+0x8b9c, %rsi
lea addresses_normal_ht+0x1819c, %rdi
clflush (%rdi)
nop
inc %r12
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
and $51287, %rdi
lea addresses_A_ht+0xfb5c, %r13
nop
nop
nop
nop
nop
sub $19187, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
xor $34321, %r13
lea addresses_D_ht+0x1889c, %r12
nop
nop
nop
nop
nop
xor %r11, %r11
mov (%r12), %rdi
nop
nop
nop
nop
nop
cmp $50551, %r15
lea addresses_D_ht+0x1439c, %r15
cmp %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0xcb9c, %r10
nop
nop
nop
nop
add $30763, %rcx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
xor $5251, %r14

// Store
mov $0x59c, %r8
nop
nop
nop
nop
and $55431, %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
xor %r9, %r9

// Store
mov $0x127922000000055f, %rbx
nop
and %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovaps %ymm2, (%rbx)
nop
nop
dec %r8

// Store
mov $0x5a78140000000842, %rcx
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%rcx)
nop
nop
nop
and $54379, %rbx

// Store
mov $0x493, %r10
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovntdq %ymm7, (%r10)
and %r14, %r14

// Store
lea addresses_A+0x1661c, %rbx
clflush (%rbx)
nop
nop
nop
sub $10294, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movaps %xmm4, (%rbx)
nop
nop
nop
xor %r14, %r14

// Store
mov $0x197ea10000000540, %r9
clflush (%r9)
nop
and $41205, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
nop
add $51264, %r8

// Load
lea addresses_UC+0x7e57, %rcx
add %r8, %r8
mov (%rcx), %r9
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0x1b24c, %r14
nop
sub $39003, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_PSE+0xcb9c, %rcx
nop
nop
nop
nop
and %rbx, %rbx
movb (%rcx), %r9b
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
