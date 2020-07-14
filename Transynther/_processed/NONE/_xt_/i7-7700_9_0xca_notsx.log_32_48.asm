.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rdx
push %rsi
lea addresses_UC_ht+0x6578, %rbp
nop
nop
nop
nop
nop
cmp $30762, %r11
movl $0x61626364, (%rbp)
nop
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x328, %r8
nop
add %rcx, %rcx
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
xor $1762, %rbp

// Load
lea addresses_PSE+0x6bf, %r12
dec %rdi
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
xor %rdi, %rdi

// Store
lea addresses_normal+0x1c46f, %rdi
nop
dec %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdi)
nop
dec %r9

// Store
lea addresses_WC+0x1ab58, %rbp
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x5478, %rcx
and $30850, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rcx)
add %r12, %r12

// Faulty Load
lea addresses_RW+0x12d78, %rbp
nop
nop
nop
xor %rax, %rax
mov (%rbp), %r8d
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'32': 32}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
