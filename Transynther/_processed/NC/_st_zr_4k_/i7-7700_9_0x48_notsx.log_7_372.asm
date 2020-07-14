.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rdi
push %rsi

// Store
lea addresses_RW+0x1ad6b, %r14
inc %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r14)
nop
nop
inc %r12

// Store
lea addresses_PSE+0x153db, %r15
nop
nop
nop
nop
nop
and $25953, %rdi
movl $0x51525354, (%r15)
cmp %r15, %r15

// Store
lea addresses_UC+0x1656b, %rsi
nop
nop
nop
add $45590, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
inc %r15

// Store
lea addresses_UC+0x1c56b, %r10
nop
sub $6738, %r13
movw $0x5152, (%r10)
nop
nop
cmp %r15, %r15

// Store
lea addresses_UC+0x55cb, %r13
nop
add $34021, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
nop
cmp $34753, %r15

// Faulty Load
mov $0x35d8090000000d6b, %r12
and %r15, %r15
movb (%r12), %r10b
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'58': 6, '00': 1}
58 00 58 58 58 58 58
*/
