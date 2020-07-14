.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe14, %rbp
nop
inc %r15
movl $0x61626364, (%rbp)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xffd4, %r14
nop
nop
nop
cmp %rbp, %rbp
movb (%r14), %r8b
xor %rbp, %rbp
lea addresses_WT_ht+0x19e14, %r15
xor $10467, %r14
movb (%r15), %r8b
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x10e14, %r14
xor %rbx, %rbx
movb (%r14), %r12b
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x12f26, %rbp
nop
nop
add %r12, %r12
mov (%rbp), %r8d
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x9e14, %r12
nop
nop
nop
nop
cmp $12447, %r15
mov (%r12), %bp
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x1a794, %rsi
lea addresses_A_ht+0x14d7c, %rdi
nop
nop
nop
nop
xor $46486, %r15
mov $117, %rcx
rep movsl
xor %r8, %r8
lea addresses_A_ht+0x5614, %rsi
lea addresses_normal_ht+0x1e1fc, %rdi
nop
nop
xor $49429, %r12
mov $36, %rcx
rep movsq
nop
nop
and $13702, %r12
lea addresses_D_ht+0x192be, %rsi
lea addresses_normal_ht+0x1ee14, %rdi
clflush (%rdi)
and %r15, %r15
mov $19, %rcx
rep movsb
and %r12, %r12
lea addresses_UC_ht+0x2814, %rsi
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rsi)
sub %rcx, %rcx
lea addresses_UC_ht+0x794, %rsi
lea addresses_UC_ht+0x1b014, %rdi
cmp $55934, %rbp
mov $62, %rcx
rep movsw
nop
inc %rbx
lea addresses_normal_ht+0xa214, %rsi
lea addresses_normal_ht+0x1ca14, %rdi
nop
nop
nop
nop
add $18957, %r12
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $26362, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x3294, %rdi
cmp $38735, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
sub $43283, %rdi

// Store
mov $0x4d05ac0000000054, %rsi
nop
nop
nop
nop
sub $1656, %r15
movw $0x5152, (%rsi)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0xea14, %rax
add $51792, %r15
movw $0x5152, (%rax)
nop
add $8143, %r15

// Store
lea addresses_US+0x16814, %rdi
nop
nop
nop
nop
sub $7251, %rax
movl $0x51525354, (%rdi)
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_RW+0x17114, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
dec %r11
movb (%rdx), %r15b
nop
nop
inc %r11

// Load
lea addresses_PSE+0x1d394, %r8
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x8a28, %r8
cmp $19342, %rdi
movl $0x51525354, (%r8)
lfence

// Store
mov $0x614, %r11
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%r11)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0x1be14, %rdi
nop
sub %rax, %rax
mov (%rdi), %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'88': 1}
88
*/
