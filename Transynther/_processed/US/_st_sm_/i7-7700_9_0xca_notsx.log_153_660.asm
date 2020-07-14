.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1547c, %r15
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)
nop
nop
add $13747, %rcx
lea addresses_WT_ht+0x2e46, %rbx
nop
nop
nop
and %rdi, %rdi
mov (%rbx), %r15d
nop
nop
nop
nop
nop
sub $20262, %r15
lea addresses_UC_ht+0x180be, %rcx
xor %r12, %r12
mov (%rcx), %edi
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1afde, %rsi
lea addresses_normal_ht+0x13b96, %rdi
nop
nop
sub $33419, %rax
mov $5, %rcx
rep movsw
nop
cmp $64895, %r12
lea addresses_UC_ht+0x14fde, %r15
nop
nop
add %rax, %rax
mov (%r15), %r8w
nop
nop
nop
nop
nop
and $30696, %r15
lea addresses_WT_ht+0x74c6, %rbx
nop
nop
nop
nop
inc %r15
movb (%rbx), %cl
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1a7de, %rax
clflush (%rax)
nop
nop
sub %r15, %r15
movw $0x6162, (%rax)
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x8dee, %rsi
lea addresses_A_ht+0x8c3a, %rdi
nop
nop
add $55648, %r15
mov $92, %rcx
rep movsq
add %rsi, %rsi
lea addresses_UC_ht+0xccde, %rsi
nop
nop
and $32925, %rbx
movb (%rsi), %r15b
nop
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x39007100000009de, %rax
nop
add %rcx, %rcx
movb $0x51, (%rax)
nop
xor $52994, %r13

// Store
lea addresses_US+0x108de, %rbx
nop
nop
nop
nop
add $2824, %r11
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x108de, %rax
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'58': 153}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
