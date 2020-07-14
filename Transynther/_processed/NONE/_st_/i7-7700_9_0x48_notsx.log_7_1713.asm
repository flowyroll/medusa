.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xce5, %rsi
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $47899, %r10
lea addresses_normal_ht+0xf4e5, %r14
clflush (%r14)
nop
and $2330, %rdi
mov (%r14), %r12w
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1014e, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp $15822, %rdi
movl $0x61626364, (%r12)
nop
nop
inc %r14
lea addresses_A_ht+0x154e5, %r12
nop
nop
nop
nop
sub $41140, %r14
movl $0x61626364, (%r12)
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x177a7, %r12
nop
nop
nop
nop
and $20525, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r12)

// Exception!!!
nop
nop
mov (0), %rax
nop
dec %rdx

// Store
lea addresses_RW+0x1c6dd, %rax
nop
nop
nop
nop
cmp $19276, %r13
movw $0x5152, (%rax)
nop
nop
add $18578, %r12

// Store
lea addresses_WC+0xace5, %r13
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r13)
and $29525, %r13

// Faulty Load
lea addresses_A+0x15ce5, %r9
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r9), %r13w
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'58': 7}
58 58 58 58 58 58 58
*/
