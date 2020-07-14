.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdi
lea addresses_normal_ht+0x3443, %r15
nop
nop
xor $58417, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0xa81b, %r10
nop
add %r12, %r12
mov (%r10), %ebx
and %rbx, %rbx
lea addresses_UC_ht+0xaf5b, %r9
nop
nop
nop
nop
nop
add $52224, %r12
movl $0x61626364, (%r9)
nop
nop
and %rdi, %rdi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x6b5b, %rsi
lea addresses_US+0x1c55b, %rdi
nop
nop
xor %r8, %r8
mov $26, %rcx
rep movsb
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_RW+0x19adb, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp $8922, %rcx

// Faulty Load
mov $0x6d6fda0000000b5b, %r8
sub $3787, %rsi
vmovaps (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 35}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
