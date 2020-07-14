.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x303b, %r15
nop
xor %r12, %r12
mov (%r15), %rdi
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0xff5b, %rbx
cmp $24021, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1815b, %rsi
lea addresses_UC_ht+0x12477, %rdi
nop
dec %r9
mov $121, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x191e7, %rcx
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x32cb, %rbx
and $62433, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x409b, %rsi
lea addresses_UC_ht+0x5f1b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r10, %r10
mov $118, %rcx
rep movsq
nop
nop
cmp $9885, %rsi
lea addresses_WT_ht+0x1895b, %rsi
lea addresses_D_ht+0xa7cb, %rdi
nop
nop
inc %r15
mov $103, %rcx
rep movsl
inc %r15
lea addresses_A_ht+0xb15b, %r10
nop
nop
sub $16607, %rbx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1a69b, %rdi
nop
xor $40984, %rsi
movb (%rdi), %r12b
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x7e83, %r9
clflush (%r9)
xor $15274, %rsi
mov (%r9), %r12
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x1515b, %r14
xor $63833, %r10
mov (%r14), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
