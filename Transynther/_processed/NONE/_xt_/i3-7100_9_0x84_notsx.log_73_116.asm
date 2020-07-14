.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2528, %r13
nop
nop
nop
nop
nop
cmp $25963, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x7428, %rsi
clflush (%rsi)
nop
nop
nop
nop
lfence
movl $0x61626364, (%rsi)
xor %rsi, %rsi
lea addresses_D_ht+0x1c16f, %r10
nop
nop
nop
nop
add %rax, %rax
movw $0x6162, (%r10)
nop
sub $62934, %r10
lea addresses_WC_ht+0x228, %r10
nop
nop
and $41417, %rcx
movw $0x6162, (%r10)
nop
nop
and %r14, %r14
lea addresses_A_ht+0x628, %rsi
nop
nop
xor %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp $29116, %r15
lea addresses_normal_ht+0x7c28, %rsi
lea addresses_D_ht+0x1ccf0, %rdi
nop
nop
dec %r15
mov $77, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x18d0, %r10
nop
nop
nop
nop
nop
xor $43576, %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
and $13426, %r13
lea addresses_D_ht+0x15720, %rsi
nop
add %r13, %r13
movb $0x61, (%rsi)
cmp %rax, %rax
lea addresses_UC_ht+0xb628, %r13
nop
nop
nop
nop
and %rsi, %rsi
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r10
nop
inc %rdi
lea addresses_WC_ht+0x1b728, %r14
nop
nop
nop
nop
nop
add $1971, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x7af0, %r15
clflush (%r15)
nop
nop
dec %rsi
movb (%r15), %r13b
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1588, %rsi
lea addresses_WT_ht+0xbaf5, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $8, %rcx
rep movsq
nop
nop
nop
nop
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xc128, %rbp
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%rbp)
nop
nop
nop
sub %r11, %r11

// REPMOV
lea addresses_RW+0x14f8c, %rsi
lea addresses_PSE+0x5e68, %rdi
nop
nop
inc %r14
mov $47, %rcx
rep movsw
nop
sub %rbp, %rbp

// Store
mov $0x748e8a0000000e28, %rcx
nop
nop
nop
nop
nop
xor $49203, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
dec %rbx

// Store
mov $0x124c160000000e58, %rbx
nop
add %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movaps %xmm6, (%rbx)
nop
inc %rdi

// Store
mov $0x7dc, %rdi
nop
nop
nop
nop
nop
sub $42304, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdi)
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0xce28, %r10
nop
nop
dec %r11
movb $0x51, (%r10)
nop
nop
nop
nop
inc %r8

// Store
mov $0xd28, %r11
nop
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
and $4390, %r10

// Store
mov $0xc28, %r8
nop
nop
nop
nop
nop
sub $37690, %rdi
movb $0x51, (%r8)
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_normal+0x13628, %r10
dec %r14
movb (%r10), %bl
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'34': 73}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
