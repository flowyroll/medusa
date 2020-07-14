.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14e9, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r15
vmovaps %ymm6, (%r15)
nop
nop
and $36581, %r10
lea addresses_D_ht+0xc470, %r8
nop
and %rsi, %rsi
movw $0x6162, (%r8)
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x11774, %rsi
lea addresses_A_ht+0x137eb, %rdi
nop
sub %r8, %r8
mov $20, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1d970, %r10
nop
nop
nop
nop
and %r15, %r15
movups (%r10), %xmm2
vpextrq $0, %xmm2, %r8
nop
xor %r15, %r15
lea addresses_D_ht+0x17194, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
and $30407, %rcx
lea addresses_UC_ht+0xc2a4, %rsi
nop
nop
nop
nop
inc %rbp
movw $0x6162, (%rsi)
cmp $63934, %rcx
lea addresses_WT_ht+0x70b4, %rcx
nop
nop
and %rax, %rax
mov (%rcx), %r8d
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0xf424, %rsi
lea addresses_normal_ht+0xd94, %rdi
and %r10, %r10
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xc06d, %rsi
lea addresses_UC_ht+0x1e8d4, %rdi
nop
nop
nop
nop
nop
cmp $52790, %r15
mov $59, %rcx
rep movsw
inc %rax
lea addresses_WC_ht+0x2194, %rsi
lea addresses_A_ht+0x4194, %rdi
nop
nop
add %rax, %rax
mov $63, %rcx
rep movsb
add %rdi, %rdi
lea addresses_WT_ht+0x14794, %r8
nop
nop
sub $46996, %rbx
movw $0x6162, (%r8)
nop
xor $24612, %rdi
lea addresses_A_ht+0x10b3, %rsi
lea addresses_D_ht+0x181d4, %rdi
and $20057, %r10
mov $22, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x16d94, %rsi
lea addresses_WT_ht+0x11594, %rdi
clflush (%rdi)
nop
nop
inc %r10
mov $90, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $30432, %rdi
lea addresses_WC_ht+0x5994, %rdi
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x9994, %rcx
nop
nop
nop
nop
inc %r11
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
add $11693, %r10

// Store
lea addresses_A+0x15bc6, %rsi
nop
nop
nop
add $59854, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x1f994, %r11
nop
nop
nop
dec %r10
movl $0x51525354, (%r11)
nop
nop
nop
and $7775, %r11

// Store
lea addresses_WC+0x19652, %r13
nop
nop
add %rdx, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
nop
sub $44093, %rax

// Faulty Load
lea addresses_A+0x19994, %rdx
nop
nop
nop
dec %rcx
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 84}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
