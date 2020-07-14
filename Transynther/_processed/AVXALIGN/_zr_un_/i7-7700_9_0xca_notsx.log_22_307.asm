.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x185c0, %r12
nop
nop
nop
nop
nop
xor $34700, %rcx
movl $0x61626364, (%r12)
nop
add %r10, %r10
lea addresses_A_ht+0x15c0, %rsi
lea addresses_UC_ht+0x4900, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r12, %r12
mov $67, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xd402, %rsi
nop
inc %rbp
movl $0x61626364, (%rsi)
nop
nop
dec %r10
lea addresses_A_ht+0x11640, %rbp
nop
nop
nop
dec %r12
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
xor $7112, %rdi
lea addresses_WT_ht+0x1ef80, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $11914, %rbp
mov (%rdi), %esi
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x1f20, %r12
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r12)
nop
and %r10, %r10
lea addresses_WT_ht+0xd01e, %rsi
lea addresses_UC_ht+0xe1c0, %rdi
nop
nop
nop
nop
add $42235, %r15
mov $102, %rcx
rep movsl
nop
nop
nop
nop
and $25603, %rsi
lea addresses_normal_ht+0xe1a8, %r12
clflush (%r12)
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r12)
nop
nop
inc %r12
lea addresses_UC_ht+0x3220, %r12
nop
nop
nop
nop
add %rsi, %rsi
mov (%r12), %rbp
and $64075, %r10
lea addresses_D_ht+0x166c0, %r10
cmp %r9, %r9
mov (%r10), %r15
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1c1c0, %r10
nop
add %rsi, %rsi
movb $0x61, (%r10)
nop
nop
sub $41862, %r10
lea addresses_D_ht+0x1e7aa, %rdi
nop
nop
nop
nop
and %r9, %r9
mov (%rdi), %si
xor %r10, %r10
lea addresses_WT_ht+0x1a4c0, %r9
nop
sub %r12, %r12
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
add $56961, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_PSE+0x41c0, %rax
clflush (%rax)
nop
nop
nop
nop
add $12695, %r11
movl $0x51525354, (%rax)
nop
nop
nop
sub $7731, %rax

// Load
mov $0x107a410000000640, %r8
nop
nop
nop
add $21859, %r11
movups (%r8), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x18dc0, %r14
nop
nop
nop
nop
nop
xor $43957, %rbx
movw $0x5152, (%r14)
sub %rax, %rax

// Load
lea addresses_UC+0x9cc0, %r8
nop
nop
nop
dec %r13
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
cmp $61365, %rax

// Store
lea addresses_A+0x71c0, %r8
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
nop
and $23137, %r14

// Store
mov $0x5247d00000000dc0, %rcx
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
xor %r11, %r11

// Load
mov $0x16afe700000001c0, %r14
nop
nop
nop
cmp $41945, %rbx
mov (%r14), %r13
nop
nop
xor $36642, %r14

// Store
lea addresses_normal+0x1fac0, %r13
nop
nop
xor $32592, %r14
movb $0x51, (%r13)
and %r13, %r13

// Faulty Load
mov $0x5247d00000000dc0, %r14
nop
inc %rcx
mov (%r14), %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 3, '79': 19}
79 79 79 79 00 79 79 79 79 79 79 79 79 00 79 79 00 79 79 79 79 79
*/
