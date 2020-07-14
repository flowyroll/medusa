.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x10254, %rsi
lea addresses_UC_ht+0x13254, %rdi
nop
nop
nop
nop
and $21966, %rax
mov $20, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x13554, %rsi
lea addresses_normal_ht+0xbe54, %rdi
nop
nop
nop
nop
add $4798, %rax
mov $25, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x15f4, %rdx
nop
nop
nop
nop
nop
xor $42012, %r12
movl $0x61626364, (%rdx)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x4d54, %rdi
nop
nop
nop
nop
and %rax, %rax
mov (%rdi), %dx
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x157d4, %rsi
lea addresses_UC_ht+0x114d4, %rdi
clflush (%rdi)
and %rax, %rax
mov $37, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x11154, %rax
nop
nop
nop
add $33258, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
nop
dec %rax
lea addresses_A_ht+0xf654, %rsi
lea addresses_WT_ht+0xdafc, %rdi
nop
nop
dec %rdx
mov $107, %rcx
rep movsq
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1dd54, %rsi
lea addresses_WT+0x175d4, %rdi
xor %r14, %r14
mov $34, %rcx
rep movsb
nop
nop
nop
add $45271, %r13

// Store
mov $0xc9ef000000002a6, %r13
add %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r13)
sub $17013, %rdi

// Faulty Load
lea addresses_normal+0x1dd54, %rdi
cmp %rsi, %rsi
movb (%rdi), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'34': 3}
34 34 34
*/
