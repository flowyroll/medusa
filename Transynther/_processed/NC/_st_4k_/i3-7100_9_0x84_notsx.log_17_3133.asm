.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1d506, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rax)
nop
nop
nop
cmp $33452, %rbx

// Store
mov $0x4437ad00000005e6, %r8
nop
sub %rsi, %rsi
movb $0x51, (%r8)
and $48744, %rsi

// Store
lea addresses_A+0x13546, %rbx
clflush (%rbx)
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x3e6, %r8
clflush (%r8)
nop
cmp %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
inc %rdx

// Store
lea addresses_normal+0x18226, %rax
nop
sub %rsi, %rsi
movw $0x5152, (%rax)
nop
xor %rdx, %rdx

// Faulty Load
mov $0x55f8c00000003e6, %r10
nop
nop
add $43382, %rdx
movb (%r10), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 17}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
