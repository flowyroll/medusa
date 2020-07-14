.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Load
lea addresses_US+0x12935, %r14
and $38679, %rax
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
and %r14, %r14

// Store
lea addresses_WT+0xaef5, %r15
nop
dec %r8
movb $0x51, (%r15)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0x1b235, %r15
clflush (%r15)
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
nop
dec %r15

// Load
mov $0xfb5, %rax
nop
xor $44282, %r12
mov (%rax), %r14d
xor %rcx, %rcx

// Store
lea addresses_A+0x12c35, %r15
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%r15)
nop
sub $38184, %rax

// Faulty Load
lea addresses_US+0x12935, %r14
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%r14), %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 3}
00 00 00
*/
