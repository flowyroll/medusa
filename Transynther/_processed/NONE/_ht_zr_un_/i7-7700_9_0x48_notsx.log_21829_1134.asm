.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rdi
push %rsi
lea addresses_WC_ht+0x1d53f, %r10
nop
nop
nop
xor %rdi, %rdi
mov (%r10), %rsi
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_RW+0x19fbf, %r15
nop
nop
nop
sub $2003, %rdx
movb $0x51, (%r15)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x591d, %r10
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%r10)
nop
add %r10, %r10

// Store
lea addresses_A+0x1bf6d, %rdi
nop
nop
xor $35889, %r14
movb $0x51, (%rdi)
and $1623, %r10

// Faulty Load
lea addresses_A+0xfbbf, %rdx
nop
nop
nop
nop
nop
add $46637, %r10
mov (%rdx), %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'67': 3, '48': 586, 'd0': 13, '08': 2, '01': 234, 'e8': 8823, '00': 11815, '65': 353}
e8 e8 00 00 e8 e8 e8 00 e8 00 00 e8 00 00 e8 00 e8 00 e8 e8 00 00 00 01 e8 00 00 e8 00 00 e8 00 e8 e8 00 00 e8 e8 00 e8 e8 00 e8 00 00 00 01 00 01 01 00 00 00 00 00 e8 48 00 00 00 00 01 e8 e8 00 e8 48 00 e8 e8 e8 e8 00 00 e8 48 00 00 00 00 00 48 e8 e8 e8 e8 00 e8 65 e8 48 e8 00 e8 e8 00 e8 00 00 00 00 00 00 00 00 00 00 e8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e8 e8 00 e8 e8 00 e8 00 00 e8 00 e8 00 00 00 e8 00 00 00 00 00 01 00 e8 00 48 00 00 00 e8 e8 e8 e8 e8 e8 e8 00 00 e8 e8 00 e8 00 e8 00 e8 e8 e8 00 e8 e8 e8 e8 e8 e8 e8 00 00 e8 e8 e8 00 00 00 00 e8 e8 00 00 00 00 e8 00 e8 00 e8 e8 e8 e8 00 e8 e8 e8 00 00 00 00 00 e8 00 00 00 e8 e8 48 00 00 00 00 01 01 65 00 e8 e8 00 e8 00 e8 00 00 e8 00 00 e8 00 00 e8 00 e8 e8 e8 00 00 e8 00 e8 e8 00 00 00 00 00 e8 e8 e8 00 e8 e8 00 00 00 00 e8 e8 00 e8 00 e8 e8 00 e8 00 e8 e8 48 e8 00 e8 00 e8 00 00 00 00 00 e8 e8 00 e8 00 00 e8 00 00 00 e8 48 00 e8 e8 00 00 00 00 00 e8 e8 e8 00 00 e8 00 00 e8 00 00 00 00 00 01 00 e8 00 e8 e8 e8 00 00 00 00 00 00 00 00 00 e8 e8 00 00 e8 e8 48 00 e8 00 00 e8 e8 00 e8 00 00 e8 e8 00 00 e8 e8 e8 e8 00 00 00 e8 00 00 e8 00 e8 e8 e8 00 00 e8 e8 e8 00 e8 e8 65 00 e8 00 e8 00 00 00 00 00 00 e8 00 e8 e8 00 e8 00 e8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e8 e8 00 00 e8 00 00 00 00 00 00 e8 00 e8 00 00 e8 e8 00 00 e8 e8 00 00 00 00 00 00 00 00 00 e8 e8 00 e8 e8 e8 00 00 00 00 00 00 00 e8 e8 e8 00 48 e8 00 00 e8 00 e8 00 00 e8 e8 e8 00 e8 00 00 00 00 e8 00 e8 00 00 00 e8 e8 e8 00 00 00 00 00 00 00 00 00 00 e8 e8 e8 e8 00 00 00 00 e8 e8 e8 00 00 00 e8 00 00 e8 00 00 00 e8 e8 e8 e8 e8 00 00 00 00 e8 e8 00 00 00 00 e8 e8 00 00 48 00 e8 00 e8 00 00 00 e8 00 e8 e8 e8 e8 e8 e8 00 48 00 00 00 e8 00 e8 e8 00 e8 e8 e8 00 e8 e8 00 00 e8 00 00 00 00 e8 00 e8 00 e8 e8 00 00 e8 00 00 e8 e8 e8 00 e8 e8 e8 e8 e8 e8 00 e8 00 00 e8 e8 00 00 00 e8 00 00 00 e8 e8 e8 e8 e8 00 00 e8 e8 e8 e8 00 e8 e8 e8 e8 e8 e8 e8 e8 e8 00 00 00 e8 00 00 00 00 00 e8 65 e8 e8 e8 00 e8 00 e8 00 e8 e8 e8 e8 e8 e8 00 e8 e8 e8 e8 e8 00 00 00 00 00 00 00 00 00 e8 e8 e8 e8 48 00 e8 e8 00 00 e8 00 e8 00 e8 00 00 e8 e8 e8 00 00 e8 00 e8 00 00 00 00 e8 e8 e8 00 65 e8 00 e8 00 e8 00 00 e8 e8 e8 e8 00 00 e8 00 e8 e8 e8 00 00 e8 00 e8 00 e8 e8 e8 e8 e8 e8 00 00 00 e8 e8 e8 e8 00 00 00 e8 e8 00 00 00 00 00 00 00 e8 00 e8 00 00 e8 e8 e8 e8 e8 e8 00 00 e8 00 00 00 e8 e8 00 00 e8 00 e8 00 e8 e8 00 e8 00 e8 00 65 00 e8 00 00 00 01 00 e8 00 e8 00 00 00 00 e8 00 00 00 48 00 00 e8 e8 e8 e8 e8 00 00 e8 00 48 e8 00 e8 e8 00 00 e8 00 00 e8 00 e8 e8 00 00 00 e8 e8 e8 00 00 e8 00 e8 00 e8 e8 00 48 e8 00 00 e8 e8 e8 e8 e8 e8 e8 e8 00 00 e8 e8 e8 e8 e8 00 00 00 e8 e8 00 48 e8 00 e8 00 00 e8 00 00 e8 e8 00 00 e8 48 e8 00 00 00 e8 00 00 e8 e8 00 00 00 00 e8 e8 e8 00 00 e8 00 e8 00 00 e8 00 00 e8 00 e8 00 e8 00 e8 00 00 00 00 00 e8 e8 e8 00 00 65 00 e8 e8 00 e8 e8 00 00 00 e8 65 e8 00 00 e8 00 e8 00 e8 00 00 00 e8 e8 00 00 00 00 e8 00 e8 00 e8 00 e8 e8 e8 e8 48 e8 e8 00 00 48 e8 48 00 00 00 e8 e8 e8 00 00 00 00 00 00 00 e8 00 00 00 00
*/
