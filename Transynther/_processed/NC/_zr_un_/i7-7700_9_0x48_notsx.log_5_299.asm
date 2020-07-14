.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx

// Store
lea addresses_normal+0x4ac0, %r15
nop
nop
nop
nop
nop
and $41061, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%r15)
nop
nop
add $64939, %r10

// Store
lea addresses_PSE+0x8aa4, %rax
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
inc %rax

// Store
lea addresses_WC+0x3f30, %r15
and $45803, %rbx
movw $0x5152, (%r15)
and %r15, %r15

// Store
lea addresses_WC+0x1a3a4, %rax
nop
nop
nop
nop
nop
xor $29614, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_A+0x1b6a4, %r13
clflush (%r13)
nop
cmp $20740, %r14
movl $0x51525354, (%r13)
nop
nop
nop
and $50925, %rbx

// Store
mov $0x2866e700000006a4, %r13
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%r13)

// Exception!!!
mov (0), %r10
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x6e0fb90000000064, %r15
nop
nop
add $44202, %rcx
movw $0x5152, (%r15)
nop
nop
sub %r14, %r14

// Faulty Load
mov $0x2866e700000006a4, %rcx
nop
nop
xor $40664, %r14
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'ff': 1, '00': 4}
00 00 ff 00 00
*/
