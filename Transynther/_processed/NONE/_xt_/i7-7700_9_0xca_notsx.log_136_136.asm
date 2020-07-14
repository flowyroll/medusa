.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1066d, %r11
nop
cmp $17557, %r12
movb $0x61, (%r11)
nop
nop
nop
nop
nop
add $56631, %rbp
lea addresses_A_ht+0xde6d, %r8
nop
inc %r11
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp $64657, %r14
lea addresses_D_ht+0x956d, %rsi
lea addresses_WT_ht+0x1006d, %rdi
nop
nop
add %r11, %r11
mov $45, %rcx
rep movsq
nop
sub $35236, %rsi
lea addresses_WT_ht+0xd8fd, %r12
clflush (%r12)
nop
nop
nop
xor $12121, %rdi
movb $0x61, (%r12)
nop
nop
nop
and $63369, %rsi
lea addresses_normal_ht+0x1b553, %r11
nop
nop
nop
nop
nop
add $52399, %rdi
mov (%r11), %r14w
dec %r12
lea addresses_UC_ht+0x1cd2d, %rsi
lea addresses_normal_ht+0x5d75, %rdi
nop
nop
sub $54275, %r14
mov $24, %rcx
rep movsq
and $29945, %rsi
lea addresses_D_ht+0x3435, %rbp
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbp)
cmp $11163, %rsi
lea addresses_A_ht+0x19e6d, %rsi
lea addresses_WT_ht+0x18b7c, %rdi
clflush (%rsi)
nop
nop
nop
dec %r14
mov $109, %rcx
rep movsb
nop
xor $313, %rcx
lea addresses_WC_ht+0x1c26d, %rsi
lea addresses_D_ht+0x8a58, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $52, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xe02d, %rsi
lea addresses_A_ht+0x7a6d, %rdi
clflush (%rdi)
cmp $49143, %r8
mov $75, %rcx
rep movsl
nop
nop
nop
nop
and $7102, %rsi
lea addresses_D_ht+0x17f6d, %r8
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
xor $22109, %r11
lea addresses_normal_ht+0x19d9d, %rsi
lea addresses_normal_ht+0x177df, %rdi
lfence
mov $36, %rcx
rep movsl
nop
nop
nop
sub $33836, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Load
mov $0x128fc3000000086d, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r15), %r8d
nop
cmp %r12, %r12

// Store
lea addresses_RW+0x8bd, %r15
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r15)
nop
inc %rdx

// Store
lea addresses_D+0xd51d, %r12
cmp $10089, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r12)
nop
nop
add %r15, %r15

// Store
lea addresses_PSE+0x1d2cd, %r12
nop
nop
nop
nop
nop
dec %r8
movl $0x51525354, (%r12)
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_RW+0x5a6d, %rbx
nop
cmp %r8, %r8
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'32': 136}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
