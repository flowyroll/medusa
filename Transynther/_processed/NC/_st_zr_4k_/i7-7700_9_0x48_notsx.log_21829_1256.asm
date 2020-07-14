.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc0a3, %rsi
lea addresses_WC_ht+0x14dd3, %rdi
mfence
mov $59, %rcx
rep movsl
and %rax, %rax
lea addresses_A_ht+0x1c693, %rdx
nop
nop
nop
add %rbp, %rbp
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_normal+0xda53, %rbx
nop
nop
nop
add $14577, %r15
movw $0x5152, (%rbx)
nop
nop
nop
cmp $19928, %rbx

// Store
lea addresses_A+0xf153, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
sub %r8, %r8

// Store
lea addresses_RW+0x129d3, %r15
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WC+0x83b3, %r8
nop
and %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r8)
nop
nop
and %r15, %r15

// Store
lea addresses_US+0x53d3, %rsi
nop
nop
nop
nop
xor $59863, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x16d6b, %r15
nop
nop
add $13547, %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
sub $2829, %r12

// Load
lea addresses_US+0x1f9d3, %rsi
clflush (%rsi)
nop
nop
nop
dec %r9
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %rbx
sub %r8, %r8

// Store
lea addresses_RW+0x4bd3, %r15
nop
nop
sub $64122, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
sub %r12, %r12

// Faulty Load
mov $0x64ca1e0000000bd3, %r15
nop
nop
sub %r8, %r8
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 6}}
{'58': 16250, '00': 5579}
58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 00 58 58 00 00 58 58 00 58 00 00 58 58 58 58 58 00 00 00 58 00 00 58 58 00 58 58 58 58 58 00 58 58 00 58 00 58 58 00 58 58 58 00 00 00 58 00 58 00 58 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 00 58 58 00 00 58 58 58 00 00 00 00 58 58 58 00 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 00 00 00 58 00 00 58 58 58 00 00 58 58 58 00 58 00 58 00 00 00 00 58 58 58 00 58 00 58 00 00 00 00 58 00 00 00 00 58 00 00 00 58 58 58 58 58 00 00 00 58 00 58 00 00 00 00 00 58 00 58 00 00 00 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 00 00 00 00 00 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 00 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 00 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 00 00 58 00 58 00 58 00 58 58 00 58 00 58 58 00 00 58 00 00 00 58 58 00 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 00 00 00 00 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 58 58 58 00 00 58 00 58 58 58
*/
