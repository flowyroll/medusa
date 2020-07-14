.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rcx
lea addresses_D_ht+0x1e6ea, %rcx
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
sub %r8, %r8
pop %rcx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x288a, %r8
nop
nop
nop
inc %rbp
movw $0x5152, (%r8)
nop
nop
nop
sub %rbp, %rbp

// REPMOV
lea addresses_WT+0x1ea6a, %rsi
lea addresses_PSE+0x16c6a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and %r9, %r9
mov $53, %rcx
rep movsw
inc %r12

// Store
lea addresses_UC+0x6e6a, %r8
clflush (%r8)
sub $8559, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
and %rbp, %rbp

// Load
lea addresses_PSE+0xdf6a, %rbp
nop
nop
nop
and $36611, %rdi
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
xor %r12, %r12

// Store
lea addresses_UC+0x13aaa, %r9
nop
nop
nop
nop
nop
xor $30931, %r8
movb $0x51, (%r9)
nop
nop
nop
xor $16929, %r12

// Store
lea addresses_US+0xfdaa, %r9
nop
nop
nop
nop
add $7933, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movaps %xmm4, (%r9)
nop
nop
nop
and $46978, %rbp

// Store
lea addresses_PSE+0xe15e, %r9
sub $30971, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r9)
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_WC+0x18e6a, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $61700, %r8
vmovntdqa (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'08': 1, '00': 379}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
