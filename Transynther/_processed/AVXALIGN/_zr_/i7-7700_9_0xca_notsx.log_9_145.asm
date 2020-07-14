.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1292, %r15
clflush (%r15)
nop
nop
sub $26318, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_US+0x5a12, %rsi
lea addresses_A+0x4892, %rdi
clflush (%rdi)
xor %rbp, %rbp
mov $95, %rcx
rep movsw
add %rdx, %rdx

// Store
mov $0xd22, %rbp
nop
cmp $18510, %r15
movl $0x51525354, (%rbp)
sub $23073, %rcx

// Store
lea addresses_D+0x19692, %rsi
nop
and $4620, %r8
movw $0x5152, (%rsi)
nop
cmp %r10, %r10

// Faulty Load
lea addresses_A+0x4892, %rsi
nop
nop
nop
and %rdi, %rdi
vmovntdqa (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
