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
lea addresses_WC_ht+0xb99, %rsi
lea addresses_A_ht+0xaf99, %rdi
nop
nop
nop
dec %r15
mov $76, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_A_ht+0xc999, %rsi
lea addresses_WC_ht+0x9b99, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $69, %rcx
rep movsb
nop
cmp $27325, %rcx
lea addresses_UC_ht+0x199, %r15
cmp %rsi, %rsi
mov (%r15), %ecx
add $58003, %rcx
lea addresses_D_ht+0x41d, %rsi
lea addresses_UC_ht+0x15b19, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $654, %r8
mov $75, %rcx
rep movsw
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1a399, %r11
add $22060, %r12
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x16919, %rsi
lea addresses_A_ht+0x15399, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r13, %r13
mov $61, %rcx
rep movsl
nop
xor $40437, %rcx
lea addresses_normal_ht+0x3d41, %rsi
clflush (%rsi)
nop
nop
add $53978, %r11
mov (%rsi), %r8
sub %r11, %r11
lea addresses_WC_ht+0x13399, %r11
xor %rcx, %rcx
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
sub $63513, %r15
lea addresses_WC_ht+0x5b99, %r13
nop
nop
xor $59703, %r8
movb (%r13), %r11b
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x14c59, %r11
nop
nop
and $21615, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xfe21, %r8
nop
nop
nop
nop
nop
sub $21397, %rcx
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
sub $57349, %r12
lea addresses_A_ht+0x1a599, %r13
cmp %rsi, %rsi
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm2
vpextrq $1, %xmm2, %r11
add $38107, %r12
lea addresses_UC_ht+0x18079, %r15
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
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
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_UC+0x445d, %rbp
nop
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
and $59871, %r10

// Store
lea addresses_RW+0x399, %rax
nop
nop
dec %r14
movl $0x51525354, (%rax)
dec %r10

// Store
lea addresses_PSE+0x1e519, %rax
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rax)
nop
nop
sub $44099, %r15

// Store
lea addresses_PSE+0x1ef55, %r10
nop
nop
nop
cmp $5407, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
dec %rsi

// Load
lea addresses_A+0x57c7, %r11
nop
nop
nop
nop
nop
xor %r14, %r14
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $42854, %r11

// Store
lea addresses_normal+0x8a6b, %rax
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rax)
nop
nop
add %rbp, %rbp

// Load
lea addresses_WC+0x2b99, %r10
clflush (%r10)
nop
nop
nop
nop
inc %rbp
mov (%r10), %r15d
nop
nop
add $16802, %r15

// Faulty Load
lea addresses_WC+0x2b99, %rax
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_PSE'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 1}
00
*/
