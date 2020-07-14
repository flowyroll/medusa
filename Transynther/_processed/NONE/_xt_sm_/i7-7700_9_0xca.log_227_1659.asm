.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a62b, %rdi
add %r11, %r11
movb (%rdi), %cl
inc %r14
lea addresses_UC_ht+0xc033, %r12
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x61, (%r12)
nop
mfence
lea addresses_UC_ht+0xbdbb, %r10
nop
nop
nop
nop
nop
and $16346, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xb97b, %r10
nop
sub %rax, %rax
movw $0x6162, (%r10)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x8abb, %rax
nop
nop
nop
nop
cmp %r10, %r10
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rcx
sub $9374, %rcx
lea addresses_WT_ht+0x117bb, %rax
nop
nop
nop
add %r11, %r11
movb $0x61, (%rax)
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1e8bb, %rsi
lea addresses_D_ht+0x1a8bb, %rdi
nop
nop
xor %r11, %r11
mov $66, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x138bb, %r12
xor $41364, %rsi
mov (%r12), %r14
nop
nop
nop
nop
add $13905, %rdi
lea addresses_A_ht+0x1a39b, %rdi
nop
nop
nop
nop
nop
sub $42489, %r14
movw $0x6162, (%rdi)
nop
xor %r14, %r14
lea addresses_normal_ht+0xe9bb, %rsi
lea addresses_UC_ht+0xf84b, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $16, %rcx
rep movsb
nop
sub %r11, %r11
lea addresses_A_ht+0xe05b, %rsi
lea addresses_normal_ht+0x191ab, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $94, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1e37d, %rsi
lea addresses_WC_ht+0x1017b, %rdi
nop
and %r11, %r11
mov $44, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $61241, %r10
lea addresses_WC_ht+0x1a83b, %rsi
lea addresses_UC_ht+0xfcdb, %rdi
lfence
mov $19, %rcx
rep movsb
nop
nop
nop
sub $50698, %r11
lea addresses_A_ht+0x87eb, %rsi
lea addresses_D_ht+0xd8bb, %rdi
nop
nop
nop
add $62108, %r10
mov $115, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_UC_ht+0x5e13, %rax
nop
nop
nop
nop
cmp $838, %r10
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdi

// Load
lea addresses_PSE+0xf14b, %r11
nop
nop
nop
nop
nop
add $10668, %r12
movb (%r11), %r14b
nop
add $9172, %r15

// Store
lea addresses_A+0x110bb, %r11
xor $36206, %rdi
movl $0x51525354, (%r11)
and $14609, %r12

// Store
lea addresses_UC+0xc5bb, %rdi
nop
nop
nop
cmp $16246, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
add %r14, %r14

// Store
lea addresses_UC+0x16583, %r14
nop
nop
nop
and $10480, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0x110bb, %r8
nop
nop
nop
nop
nop
cmp $27410, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0x88bb, %r15
xor $17952, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
nop
dec %r15

// Store
lea addresses_A+0x8cfb, %rax
nop
xor $2481, %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_A+0x110bb, %rax
nop
nop
and $17555, %r11
mov (%rax), %r12w
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'58': 227}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
