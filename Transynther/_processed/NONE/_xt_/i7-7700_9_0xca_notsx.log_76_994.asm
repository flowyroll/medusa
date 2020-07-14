.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14216, %rax
nop
nop
nop
nop
nop
cmp $2298, %r13
movw $0x6162, (%rax)
nop
nop
nop
lfence
lea addresses_UC_ht+0x19b4e, %r14
nop
nop
nop
nop
xor %rbx, %rbx
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1243e, %r14
nop
nop
nop
nop
nop
sub $34960, %r15
movl $0x61626364, (%r14)
add $17015, %rax
lea addresses_WC_ht+0x5916, %rsi
nop
nop
nop
nop
cmp $19403, %r14
movw $0x6162, (%rsi)
add %r13, %r13
lea addresses_WC_ht+0x1ba40, %rsi
lea addresses_normal_ht+0x4a3e, %rdi
nop
nop
nop
nop
nop
xor $6723, %rbx
mov $92, %rcx
rep movsq
nop
nop
sub $41485, %r13
lea addresses_WT_ht+0x15e3e, %r14
nop
nop
nop
cmp $28528, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
xor $29164, %rbx
lea addresses_UC_ht+0x16a56, %rsi
lea addresses_WC_ht+0xb63e, %rdi
nop
nop
nop
nop
dec %r14
mov $110, %rcx
rep movsw
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xb8e, %r12
clflush (%r12)
nop
nop
sub $55862, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
add $7448, %r8

// Load
lea addresses_D+0x2a3e, %rax
nop
nop
nop
add %rdi, %rdi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r11
nop
dec %rdx

// Store
lea addresses_D+0x9a5b, %rax
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovntdq %ymm4, (%rax)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0xca06, %rdi
nop
nop
nop
nop
nop
sub $48525, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_D+0x1355e, %r8
nop
nop
sub $24195, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r8)
nop
nop
inc %r8

// Store
lea addresses_D+0x18d84, %rcx
nop
nop
add $49026, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rcx)
nop
nop
cmp %r8, %r8

// Load
lea addresses_A+0x983e, %r8
nop
nop
cmp %rdx, %rdx
movb (%r8), %r11b
nop
nop
nop
xor $22095, %rdi

// Faulty Load
lea addresses_RW+0x1623e, %r12
nop
add %rdi, %rdi
movb (%r12), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'32': 76}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
