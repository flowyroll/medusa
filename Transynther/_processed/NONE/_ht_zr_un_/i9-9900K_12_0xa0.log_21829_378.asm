.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a69e, %r10
nop
nop
nop
and $5234, %rbp
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x478e, %rsi
lea addresses_normal_ht+0x1e3e8, %rdi
nop
nop
xor %rax, %rax
mov $18, %rcx
rep movsw
nop
nop
cmp $60305, %rsi
lea addresses_D_ht+0x1cefa, %r8
nop
nop
and %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
and %r10, %r10
lea addresses_A_ht+0xa264, %rsi
lea addresses_UC_ht+0x1afc4, %rdi
nop
and $36708, %rax
mov $117, %rcx
rep movsb
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1c644, %rsi
lea addresses_WC_ht+0x154c4, %rdi
xor %rax, %rax
mov $72, %rcx
rep movsl
nop
nop
nop
nop
and $56007, %rax
lea addresses_UC_ht+0x3a6c, %r10
nop
sub %rbp, %rbp
movb (%r10), %cl
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xdb44, %rbp
nop
and $14663, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xd074, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rdi), %edx
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xc4, %rsi
lea addresses_WT_ht+0xf0c4, %rdi
nop
nop
nop
sub %r8, %r8
mov $77, %rcx
rep movsb
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x8844, %rsi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rsi), %dx
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x17ea4, %rsi
lea addresses_UC_ht+0x7944, %rdi
nop
add %r8, %r8
mov $31, %rcx
rep movsl
nop
nop
nop
nop
and $2711, %rsi
lea addresses_WT_ht+0x8f2c, %rsi
xor $37433, %rcx
movw $0x6162, (%rsi)
nop
nop
add $37823, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rdx

// Store
lea addresses_WT+0xa4c4, %r13
nop
cmp $19101, %r8
movl $0x51525354, (%r13)
nop
nop
and %r8, %r8

// Load
lea addresses_A+0xec4, %rdx
nop
nop
nop
nop
add %r11, %r11
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
sub %r12, %r12

// Store
lea addresses_A+0x12df4, %r8
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r8)
nop
nop
and $7852, %r12

// Load
lea addresses_PSE+0x19484, %rdx
nop
nop
xor %r11, %r11
movb (%rdx), %r12b
nop
nop
nop
nop
add %r8, %r8

// Load
lea addresses_US+0x132a, %r11
nop
nop
xor $34318, %r12
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_WT+0xe0c4, %r13
nop
xor %r8, %r8
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'48': 21167, '08': 26, '00': 13, '46': 222, '45': 352, '72': 49}
48 48 48 48 48 48 45 46 46 46 46 46 46 46 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 08 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 72 72 72 72 72 72 72 72 45 72 72 72 72 72 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48
*/
