.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10c57, %r11
nop
nop
nop
dec %r9
mov (%r11), %ebp
nop
and %r8, %r8
lea addresses_WT_ht+0x412f, %rcx
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rcx)
nop
sub %r9, %r9
lea addresses_WC_ht+0x1d037, %rsi
lea addresses_A_ht+0x6fb7, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $37, %rcx
rep movsw
nop
nop
nop
and $26296, %r8
lea addresses_normal_ht+0xa537, %rdi
nop
nop
nop
nop
nop
sub $26352, %r8
movb $0x61, (%rdi)
nop
nop
cmp $53822, %r8
lea addresses_normal_ht+0x1c517, %rcx
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%rcx)
nop
and $40217, %r9
lea addresses_UC_ht+0x18677, %rsi
lea addresses_UC_ht+0x12d19, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11
mov $95, %rcx
rep movsl
nop
nop
nop
and $62501, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_normal+0xf5d7, %rcx
nop
nop
nop
nop
add %r9, %r9
mov (%rcx), %rbx
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x7337, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $51751, %r10
movw $0x5152, (%rbx)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0x14937, %rcx
nop
add $5878, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movntdq %xmm6, (%rcx)
xor $58210, %r14

// Store
lea addresses_RW+0x4937, %r9
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r9)
nop
nop
dec %r10

// Store
mov $0x37, %r14
nop
nop
add $65368, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r14)
xor $16604, %r10

// Store
lea addresses_normal+0xfd37, %rax
nop
nop
nop
nop
nop
cmp $23100, %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
sub $2280, %r10

// Store
mov $0x32995000000009b7, %r9
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
nop
sub $12959, %r9

// Store
lea addresses_PSE+0x2837, %r10
clflush (%r10)
nop
and %r14, %r14
movw $0x5152, (%r10)
xor $38827, %rdx

// Store
lea addresses_A+0x14537, %r10
nop
add %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
sub $36400, %r10

// Faulty Load
lea addresses_normal+0x18d37, %rbx
nop
nop
nop
and %r14, %r14
movb (%rbx), %r9b
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'34': 7}
34 34 34 34 34 34 34
*/
