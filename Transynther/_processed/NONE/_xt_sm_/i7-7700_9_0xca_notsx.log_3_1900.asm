.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf603, %r13
xor $56576, %r8
mov (%r13), %dx
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x13657, %rax
add $54395, %rsi
mov (%rax), %bx
nop
nop
nop
nop
add $8947, %rsi
lea addresses_A_ht+0x4057, %r8
nop
nop
nop
nop
nop
inc %rax
movw $0x6162, (%r8)
nop
nop
and $59627, %rsi
lea addresses_WT_ht+0x8717, %rsi
nop
xor $25853, %r10
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x11457, %rsi
lea addresses_WT_ht+0x6c57, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $121, %rcx
rep movsb
nop
nop
nop
and $39792, %rsi
lea addresses_D_ht+0x44e6, %r10
nop
nop
add $51996, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r10)
inc %r8
lea addresses_A_ht+0x13fb2, %rsi
lea addresses_WC_ht+0xb857, %rdi
nop
nop
cmp %r8, %r8
mov $3, %rcx
rep movsw
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x11ad7, %rcx
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rcx)
nop
and $62708, %rsi
lea addresses_D_ht+0x1507, %rdi
nop
nop
nop
nop
nop
cmp $65326, %r10
movb $0x61, (%rdi)
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x18c57, %rdx
nop
nop
nop
nop
nop
inc %r15
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
cmp $35754, %r15

// Store
lea addresses_WC+0x3ca7, %rdx
nop
nop
nop
add $40584, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
and $43179, %rdx

// Store
lea addresses_A+0x14bd7, %r15
nop
nop
nop
nop
nop
sub $56806, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movaps %xmm7, (%r15)
nop
xor %rsi, %rsi

// Store
lea addresses_D+0xe03, %rsi
and %r15, %r15
movb $0x51, (%rsi)
nop
nop
cmp $30965, %rdx

// Store
lea addresses_D+0x1ad57, %r15
clflush (%r15)
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $7707, %r8

// Load
lea addresses_A+0xe857, %rbp
nop
nop
nop
inc %rsi
mov (%rbp), %dx
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x11857, %r15
nop
nop
nop
nop
xor $1136, %rsi
movb $0x51, (%r15)
dec %r8

// Store
lea addresses_RW+0x7057, %rbp
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rbp)
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WC+0xb457, %rdi
nop
nop
cmp $5318, %r8
mov (%rdi), %rdx
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_RW+0x7057, %rsi
nop
nop
nop
and %r8, %r8
mov (%rsi), %r15d
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'58': 3}
58 58 58
*/
