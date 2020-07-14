.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4245, %rsi
lea addresses_UC_ht+0x11b2d, %rdi
nop
nop
and %r10, %r10
mov $23, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1ef2d, %r11
sub $36713, %r15
mov (%r11), %r14w
and $4584, %r15
lea addresses_A_ht+0x13744, %r11
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r11)
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x38fd, %rcx
nop
cmp $29238, %rsi
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x1bcfd, %rsi
lea addresses_A_ht+0x9815, %rdi
nop
nop
add %rax, %rax
mov $81, %rcx
rep movsw
nop
nop
nop
nop
xor $1282, %r15
lea addresses_A_ht+0x2305, %rsi
lea addresses_D_ht+0x1c6ad, %rdi
nop
nop
nop
xor $38352, %r11
mov $44, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x3f2d, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rax
movb $0x61, (%rdi)
nop
nop
add $5686, %r11
lea addresses_WC_ht+0x7cad, %rcx
clflush (%rcx)
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
xor $56490, %rax
lea addresses_normal_ht+0x2f2d, %rdi
nop
and %r14, %r14
mov (%rdi), %r15d
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xd32d, %r11
nop
inc %rcx
movb $0x61, (%r11)
nop
nop
nop
xor $63596, %rcx
lea addresses_WC_ht+0xa52d, %rax
nop
nop
nop
nop
add $11409, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rax)
nop
add %rdi, %rdi
lea addresses_WT_ht+0x3011, %rcx
nop
nop
sub $28729, %rdi
mov (%rcx), %r11w
nop
nop
nop
nop
nop
xor $2804, %r15
lea addresses_WT_ht+0x1b2d, %rsi
lea addresses_A_ht+0xcced, %rdi
nop
nop
nop
add $42359, %r10
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x1512d, %r15
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_D+0x20d, %r10
clflush (%r10)
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r10)
and %rcx, %rcx

// Store
lea addresses_PSE+0x8efd, %r13
nop
add %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x5e75, %r13
nop
dec %r15
movw $0x5152, (%r13)
nop
nop
nop
xor $19877, %rax

// Store
lea addresses_WT+0x1f42d, %rcx
nop
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_UC+0xb72d, %r13
nop
nop
nop
and $32924, %r10
vmovntdqa (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 1148, '45': 19426, '47': 34, '49': 1221}
00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 00 45 45 49 45 45 45 45 49 45 45 45 45 45 49 45 49 45 45 00 45 45 45 45 45 45 00 45 45 49 45 45 49 45 45 45 45 49 45 45 45 45 00 45 45 45 00 45 45 00 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 49 45 45 45 45 00 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 45 49 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 49 45 45 45 45 45 45 45 00 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 49 00 45 45 00 45 45 49 45 45 45 47 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 00 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 00 45 45 49 45 45 45 45 45 00 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
