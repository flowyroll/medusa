.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x444c, %rsi
lea addresses_D_ht+0x114bc, %rdi
add %rbx, %rbx
mov $14, %rcx
rep movsq
nop
nop
nop
nop
xor $51414, %r15
lea addresses_WT_ht+0xc74c, %r14
nop
cmp %r12, %r12
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
and $11707, %rbx
lea addresses_UC_ht+0x79aa, %rdi
nop
and %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x34cc, %rsi
nop
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rsi)
cmp $11983, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_US+0x1444c, %r9
clflush (%r9)
nop
nop
nop
nop
add $33846, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r9)
cmp %r13, %r13

// Store
mov $0x1c506c0000000b4c, %rcx
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
nop
add $52967, %rdx

// Store
mov $0x1c506c0000000b4c, %r9
nop
nop
cmp %r13, %r13
movb $0x51, (%r9)
nop
nop
inc %r10

// Store
mov $0x72d9730000000934, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%r9)
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x15078, %rcx
nop
nop
add $43244, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movaps %xmm6, (%rcx)
nop
and %r10, %r10

// Faulty Load
mov $0x1c506c0000000b4c, %r9
nop
nop
nop
nop
xor %r11, %r11
mov (%r9), %r8d
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 2483, '51': 19346}
51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 00 51 51 00 51 00 51 00 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 51 00 51 00 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 51 00 51 00 51 00 51 51 00 51 00 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 00 51 00 51 00 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 00 51 51 51 51 00 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 00 51 00 51 00 51 00 51 51 51 51 00 51 51 51 00 51 00 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 00 00 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 51 00 51 51 51 51 51 51 00 51 00 51 51 00 51 00 51 00 51 00 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 00 51 51 00 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 00 51 51 00 51 00 51 00 51 00 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 00 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 00 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 00 51 51 51 00 00 51 51 51 51 00 51 51 51 00 51 00 51 00 51
*/
