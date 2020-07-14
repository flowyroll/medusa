.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d6e3, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
cmp $53242, %r14
lea addresses_UC_ht+0x52e3, %rsi
lea addresses_A_ht+0x79e3, %rdi
nop
nop
sub %r12, %r12
mov $66, %rcx
rep movsl
nop
nop
and $37185, %rbx
lea addresses_normal_ht+0x12e3, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rbx), %r12w
nop
nop
and $4589, %rbx
lea addresses_WC_ht+0x102eb, %rsi
clflush (%rsi)
sub %rax, %rax
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r14
nop
dec %rbx
lea addresses_WC_ht+0x1e343, %rsi
lea addresses_WT_ht+0x1dce7, %rdi
nop
nop
inc %rax
mov $116, %rcx
rep movsw
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x116b, %rsi
lea addresses_WT_ht+0x112e3, %rdi
nop
nop
xor %r11, %r11
mov $14, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1bd27, %rsi
lea addresses_D_ht+0xb863, %rdi
clflush (%rdi)
nop
sub %r12, %r12
mov $5, %rcx
rep movsb
nop
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r8
push %rsi

// Store
lea addresses_A+0x17cd3, %r14
nop
and $49503, %r12
movw $0x5152, (%r14)
nop
nop
cmp $25612, %r14

// Store
lea addresses_WT+0x38e3, %rsi
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%rsi)
nop
nop
nop
and $48048, %r15

// Store
lea addresses_US+0x122e3, %r13
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movntdq %xmm3, (%r13)
cmp %r13, %r13

// Store
lea addresses_WT+0x343b, %r12
nop
nop
cmp $21808, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r12)
nop
xor $58564, %rsi

// Faulty Load
lea addresses_US+0x2e3, %r12
clflush (%r12)
nop
inc %r8
mov (%r12), %r13d
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'58': 18}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
