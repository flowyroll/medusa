.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
lea addresses_WC_ht+0xe558, %r14
nop
nop
nop
nop
nop
inc %r9
mov (%r14), %rax
cmp $24758, %r10
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %r9
push %rsi

// Store
mov $0x1fc6a90000000620, %r13
clflush (%r13)
dec %r12
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
nop
nop
nop
xor $17326, %r15

// Store
lea addresses_PSE+0xa758, %r14
nop
nop
dec %r9
movw $0x5152, (%r14)
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_PSE+0xa758, %r9
and $48007, %rsi
vmovntdqa (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
xor $52989, %r12

// Load
lea addresses_WC+0x4758, %r12
nop
nop
nop
add %rsi, %rsi
mov (%r12), %r14d
nop
nop
inc %r15

// Faulty Load
lea addresses_PSE+0xa758, %r14
nop
xor %r13, %r13
mov (%r14), %r15w
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'52': 20}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
