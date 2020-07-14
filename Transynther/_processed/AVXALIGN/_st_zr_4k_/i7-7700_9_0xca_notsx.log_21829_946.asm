.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rdi
push %rdx
lea addresses_WT_ht+0x18e2e, %rdi
nop
nop
nop
add $63875, %r15
mov (%rdi), %eax
nop
nop
nop
nop
nop
add $59349, %r11
lea addresses_A_ht+0x1842e, %rbp
nop
nop
and $59630, %r14
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
cmp $54807, %r11
lea addresses_WT_ht+0x448e, %rax
add $6037, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
cmp $60780, %r11
lea addresses_WC_ht+0x1e91e, %r14
xor $59801, %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
cmp $25150, %rax
lea addresses_D_ht+0x1b4ae, %r15
clflush (%r15)
xor $6244, %r11
movb (%r15), %dl
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1b42e, %r14
nop
nop
nop
nop
nop
xor $25376, %rbp
mov (%r14), %rdi
nop
nop
nop
xor $60680, %rdi
lea addresses_D_ht+0x2c5e, %rdx
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
nop
and $63918, %rdx
lea addresses_D_ht+0xe42e, %rdx
cmp $22360, %rax
mov (%rdx), %r11w
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1172e, %r14
and %r15, %r15
mov (%r14), %edx
nop
nop
nop
nop
nop
cmp $26141, %rax
lea addresses_UC_ht+0xab2e, %rdi
nop
nop
nop
nop
add $46225, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rdx

// Store
mov $0xc2e, %r14
nop
nop
nop
nop
sub $7275, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
add $52177, %r11

// Store
lea addresses_WC+0x7a9e, %rdx
nop
nop
dec %r8
movl $0x51525354, (%rdx)
and $65019, %r14

// Store
lea addresses_A+0x111ae, %r14
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
add $40024, %rax

// Store
mov $0x55684d000000062e, %r13
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%r13)
nop
nop
sub %rax, %rax

// Store
lea addresses_PSE+0x582e, %r13
add %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r13)
nop
nop
add $60608, %rbp

// Store
mov $0xe2e, %r8
nop
nop
nop
nop
nop
xor $45015, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
cmp $8843, %r11

// Store
mov $0x4dc, %r8
nop
nop
add $34251, %r13
movb $0x51, (%r8)
nop
nop
nop
nop
add $21794, %r11

// Store
lea addresses_PSE+0x28fe, %rbp
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_US+0x134d2, %r14
nop
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%r14)
sub %rbp, %rbp

// Faulty Load
mov $0x82e, %rdx
nop
nop
nop
nop
nop
sub %r8, %r8
movaps (%rdx), %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 329, '58': 21500}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
