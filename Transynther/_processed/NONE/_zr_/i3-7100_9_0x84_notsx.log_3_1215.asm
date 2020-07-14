.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rsi
lea addresses_A_ht+0x681f, %r14
nop
nop
nop
nop
cmp $44899, %r8
movl $0x61626364, (%r14)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x17530, %rsi
nop
sub %r9, %r9
movb $0x61, (%rsi)
nop
nop
xor $40138, %r15
lea addresses_WT_ht+0x27bf, %r14
nop
nop
nop
nop
xor %r10, %r10
movb (%r14), %r15b
sub $47221, %r8
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x20d81200000003bf, %rsi
clflush (%rsi)
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_A+0x1fbf, %rdi
nop
nop
nop
sub %rbp, %rbp
mov (%rdi), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
