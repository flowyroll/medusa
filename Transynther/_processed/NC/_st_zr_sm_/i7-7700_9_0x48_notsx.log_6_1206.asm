.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16aa9, %rsi
lea addresses_normal_ht+0x156a9, %rdi
nop
nop
nop
nop
mfence
mov $30, %rcx
rep movsl
nop
nop
xor $62355, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0x70440900000002a9, %r10
nop
nop
nop
add $30919, %rsi
movl $0x51525354, (%r10)
nop
nop
cmp $21021, %r15

// Store
mov $0x70440900000002a9, %rbx
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rbx)
nop
nop
and $39438, %rbx

// Load
lea addresses_A+0x1df49, %r10
nop
nop
nop
inc %r8
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
add $10177, %r10

// Store
lea addresses_RW+0x14c81, %r10
cmp $63191, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
and $55062, %r15

// Store
lea addresses_A+0x1d069, %r10
sub $37195, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
add $24581, %r14

// Faulty Load
mov $0x70440900000002a9, %r10
add $48419, %r15
mov (%r10), %bx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'00': 1, '51': 5}
51 51 00 51 51 51
*/
