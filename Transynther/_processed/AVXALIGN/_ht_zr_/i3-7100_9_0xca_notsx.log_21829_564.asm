.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x556b, %r11
xor $55747, %r14
movb (%r11), %r15b
nop
inc %r12
lea addresses_WC_ht+0x137ab, %rdx
nop
nop
nop
nop
cmp $62469, %rsi
mov (%rdx), %di
and $18861, %rsi
lea addresses_normal_ht+0x56eb, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r14)
nop
nop
and $24904, %r11
lea addresses_WC_ht+0x16ab, %r15
nop
and $31720, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r15)
nop
inc %rdx
lea addresses_WC_ht+0x193ab, %rsi
lea addresses_WT_ht+0x12bab, %rdi
nop
nop
nop
nop
nop
sub $59345, %r11
mov $39, %rcx
rep movsb
nop
nop
nop
add $8763, %r11
lea addresses_D_ht+0xdbab, %r14
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x1bbab, %r11
and $49830, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
xor $15120, %r14
lea addresses_WC_ht+0xc3ab, %rsi
nop
nop
nop
and $52977, %r12
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x5f73, %r11
clflush (%r11)
nop
nop
sub %r15, %r15
movb (%r11), %cl
nop
nop
nop
and $21514, %r12
lea addresses_D_ht+0xbaf1, %r11
nop
xor $11347, %r15
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x8748, %rsi
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x4aad, %rdx
nop
nop
add $56142, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
and $54366, %rdx
lea addresses_WT_ht+0x1b7eb, %rsi
lea addresses_WC_ht+0x18a9f, %rdi
nop
cmp %r11, %r11
mov $74, %rcx
rep movsw
nop
inc %rcx
lea addresses_normal_ht+0x7c6b, %rsi
lea addresses_A_ht+0x1902f, %rdi
nop
nop
add %r12, %r12
mov $120, %rcx
rep movsq
nop
nop
nop
xor $16985, %rdx
lea addresses_WT_ht+0xbfab, %rsi
lea addresses_UC_ht+0x1afaf, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $31, %rcx
rep movsq
nop
nop
sub $44030, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1596b, %rax
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0xfbab, %rbx
nop
inc %rdx
movl $0x51525354, (%rbx)
sub $57289, %rdx

// Store
lea addresses_UC+0x246b, %rdx
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_A+0xfbab, %rdx
nop
nop
cmp %rsi, %rsi
movntdqa (%rdx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'44': 3295, '00': 18530, '49': 4}
00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 49 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 44 00 00 44 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00
*/
