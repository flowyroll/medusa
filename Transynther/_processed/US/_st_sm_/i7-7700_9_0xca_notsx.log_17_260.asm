.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a7de, %rsi
lea addresses_WC_ht+0x1b93e, %rdi
nop
nop
nop
nop
nop
sub $18726, %rdx
mov $15, %rcx
rep movsw
nop
nop
nop
and $1754, %r10
lea addresses_normal_ht+0x14206, %rbp
clflush (%rbp)
nop
cmp $9379, %r10
movb $0x61, (%rbp)
nop
nop
and $45474, %r10
lea addresses_WC_ht+0x16c62, %rsi
lea addresses_D_ht+0x5946, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r11
mov $72, %rcx
rep movsw
nop
nop
nop
sub $48841, %r10
lea addresses_D_ht+0x7a06, %rsi
lea addresses_WT_ht+0x1a0, %rdi
nop
cmp %rdx, %rdx
mov $79, %rcx
rep movsw
and %r11, %r11
lea addresses_WC_ht+0xb7aa, %rcx
nop
nop
sub %rdx, %rdx
mov (%rcx), %r11
nop
nop
nop
add $61476, %rdi
lea addresses_normal_ht+0x9c06, %rsi
lea addresses_D_ht+0xc0c6, %rdi
nop
sub $5391, %r13
mov $111, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0xe444, %rdx
nop
nop
nop
sub $25847, %rsi
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %r13
add %r11, %r11
lea addresses_WC_ht+0x7206, %r11
nop
nop
nop
nop
and $17682, %rdx
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x105a6, %rdx
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x12606, %rsi
lea addresses_WT_ht+0xa086, %rdi
nop
nop
nop
nop
nop
cmp $6605, %rdx
mov $118, %rcx
rep movsb
nop
nop
and $18848, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_WT+0x14406, %r14
nop
nop
nop
xor %r10, %r10
movb (%r14), %bl
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x78384b00000001e4, %r14
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
inc %rsi

// Store
lea addresses_normal+0x14866, %r14
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
sub $18493, %r13

// Store
lea addresses_PSE+0xc0c6, %r14
and %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r14)
add $33145, %rbx

// Store
mov $0x23d1a0000000246, %rdi
xor $40359, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
xor $46727, %rbp

// Store
lea addresses_RW+0x1ff3e, %rbp
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbp)
nop
cmp %rbp, %rbp

// Store
lea addresses_US+0x1d206, %r14
nop
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r14)
nop
and $1292, %rbp

// Store
lea addresses_normal+0x10606, %rbx
nop
sub $20250, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rbx)
add $35197, %rbp

// Faulty Load
lea addresses_US+0x1d206, %r13
nop
nop
add $484, %rsi
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'54': 17}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
