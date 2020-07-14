.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf001, %rsi
lea addresses_UC_ht+0x5c01, %rdi
nop
nop
nop
inc %rax
mov $100, %rcx
rep movsb
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1d601, %r10
nop
nop
nop
nop
nop
dec %rbx
mov (%r10), %eax
inc %rbx
lea addresses_A_ht+0x1bac1, %rcx
nop
nop
nop
nop
nop
sub $46817, %r14
movb $0x61, (%rcx)
xor $30446, %rsi
lea addresses_WC_ht+0x1a281, %r10
nop
nop
nop
nop
nop
and $30405, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
and $54335, %rax
lea addresses_normal_ht+0xba01, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $31893, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
mov $0xa41, %r9
nop
nop
nop
and $842, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
inc %r9

// Store
lea addresses_WT+0xf41b, %rbp
clflush (%rbp)
nop
xor %r8, %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
add $56057, %rbp

// Store
lea addresses_US+0x6c01, %rsi
cmp $18780, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovntdq %ymm5, (%rsi)
nop
nop
dec %rax

// Store
lea addresses_US+0x6c01, %rdx
nop
nop
nop
nop
nop
sub $8708, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
xor $42219, %rax

// Store
mov $0x10ef070000000711, %r9
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r9)
dec %rbp

// Store
lea addresses_US+0x6c01, %rbx
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0xd301, %rdx
nop
nop
nop
nop
nop
xor $40310, %rbp
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
sub $1688, %rbp

// Store
lea addresses_RW+0x10499, %rsi
nop
add %rax, %rax
movw $0x5152, (%rsi)
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x6c01, %rbx
nop
cmp %rbp, %rbp
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'68': 2, '2a': 1, '44': 5425, '00': 16399, 'ff': 1, '08': 1}
44 00 44 00 00 44 00 00 44 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 00 00 44 44 00 44 44 00 44 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 44 44 44 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 44 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 44 44 00 00 44 44 44 44 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 44 44 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 44 00 00 00 00 00 44 00 44 00 44 44 00 00 00 44 00 44 44 00 00 00 00 00 44 00 44 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 00 44 00 44 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 44 00 44 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 44 44 00 00 00 00 00 00 44 44 44 44 00 00 44 44 00 44 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 44 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00
*/
