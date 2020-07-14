.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x727a, %r8
nop
nop
nop
nop
nop
cmp $21121, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r8)
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x164da, %rsi
lea addresses_WC_ht+0xa2da, %rdi
nop
and %r11, %r11
mov $67, %rcx
rep movsw
nop
nop
nop
nop
cmp $622, %r11
lea addresses_WC_ht+0xd75a, %rdi
nop
nop
nop
and $24613, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
and $0xffffffffffffffc0, %rdi
movntdq %xmm6, (%rdi)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0xc0da, %rcx
nop
nop
nop
xor $46008, %rsi
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
nop
xor $5642, %rsi
lea addresses_UC_ht+0x481a, %rsi
lea addresses_UC_ht+0x1115a, %rdi
nop
nop
nop
xor $55675, %r13
mov $60, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_A_ht+0x795a, %rsi
lea addresses_WT_ht+0x5e86, %rdi
clflush (%rdi)
xor %r8, %r8
mov $8, %rcx
rep movsw
nop
nop
dec %r11
lea addresses_WT_ht+0x3f5a, %r11
clflush (%r11)
nop
nop
add $16969, %rdi
movups (%r11), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
xor $51882, %rcx
lea addresses_A_ht+0x8bda, %r8
nop
nop
nop
and $20348, %rsi
mov (%r8), %r13w
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x715a, %rsi
lea addresses_WC_ht+0x11e66, %rdi
xor $21919, %r11
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
add $64587, %r8
lea addresses_A_ht+0x259a, %rcx
and $64366, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rcx)
xor $27666, %rdi
lea addresses_WC_ht+0x9c5a, %rsi
lea addresses_WC_ht+0x9a5a, %rdi
nop
nop
sub $20097, %r12
mov $96, %rcx
rep movsq
add $15968, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1715a, %rsi
lea addresses_UC+0x11d5a, %rdi
cmp %r9, %r9
mov $33, %rcx
rep movsb
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x14f5a, %rcx
nop
nop
nop
xor %rbx, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x1715a, %rcx
inc %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
dec %rbx

// Load
lea addresses_A+0x16c9a, %rcx
nop
nop
nop
nop
nop
add $4647, %rsi
mov (%rcx), %di
nop
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x1091a, %rcx
nop
xor $6862, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0x995a, %rbx
add %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbx)
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x979a, %r9
sub $57223, %rsi
movb $0x51, (%r9)
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x1715a, %rdi
nop
nop
nop
xor $47426, %rbx
mov (%rdi), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
