.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16f72, %rsi
lea addresses_WT_ht+0x1ca97, %rdi
clflush (%rsi)
nop
nop
nop
nop
lfence
mov $126, %rcx
rep movsw
nop
dec %r9
lea addresses_A_ht+0xd617, %r13
cmp %r10, %r10
movb $0x61, (%r13)
nop
nop
and %r10, %r10
lea addresses_D_ht+0xa517, %rsi
lea addresses_D_ht+0x19ffb, %rdi
clflush (%rdi)
nop
nop
dec %r13
mov $104, %rcx
rep movsl
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x7c37, %rsi
add %r13, %r13
mov (%rsi), %r10d
nop
add $32334, %r9
lea addresses_WC_ht+0x1c7e5, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rdi), %cx
nop
xor %r10, %r10
lea addresses_UC_ht+0x1a2cb, %rsi
nop
nop
nop
nop
xor $4299, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x18017, %rdi
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
add $18886, %r10
lea addresses_UC_ht+0x17a97, %rsi
lea addresses_A_ht+0xbe17, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $11309, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbp

// Store
mov $0x2e96a600000008eb, %r15
nop
nop
nop
nop
sub $60956, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_UC+0x1ae17, %r15
clflush (%r15)
nop
cmp $58008, %r8
movaps (%r15), %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'d2': 2, '00': 266, '45': 5456, '47': 1, '46': 587}
45 00 45 45 45 46 45 45 45 46 46 45 45 45 00 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 46 46 46 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 00 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 46 00 46 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 00 46 45 46 45 45 45 46 45 00 45 00 46 46 45 46 45 46 46 45 46 45 46 45 46 46 45 46 00 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 46 46 00 45 45 45 00 46 45 45 45 45 45 45 45 45 45 45 45 46 00 00 45 45 45 45 00 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 46 45 45 00 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 46 45 00 45 45 45 46 45 45 45 45 46 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 46 45 46 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 00 46 00 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 00 46 45 46 45 45 45 45 45 45 45 45 00 46 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 00 45 45 45 45 45 45 45 46 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 46 45 46 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 46 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 00 46 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 46 45 45 45 45 00 45 00 45 45 45 46 45 45 46 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
