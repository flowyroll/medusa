.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rdx
lea addresses_normal_ht+0x1751a, %rax
nop
xor $8120, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
nop
nop
nop
cmp %r14, %r14
pop %rdx
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x5c07, %r14
nop
nop
nop
nop
sub $41099, %r8
movw $0x5152, (%r14)
nop
nop
sub %r8, %r8

// Store
lea addresses_UC+0xb31a, %rbx
cmp $64101, %rax
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_normal+0xae1a, %rbx
nop
nop
inc %r8
mov (%rbx), %ax
xor %rdx, %rdx

// Load
lea addresses_UC+0x14bfa, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r14), %dl
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_normal+0x12c1a, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r14)
nop
inc %rax

// Load
mov $0x51a, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov (%rdi), %bx
nop
add %rbp, %rbp

// Store
lea addresses_RW+0xf1ca, %rdi
clflush (%rdi)
nop
nop
xor $33607, %r8
movb $0x51, (%rdi)
nop
nop
nop
add $1265, %r8

// Store
lea addresses_normal+0x17fd6, %rbx
nop
nop
nop
cmp $5230, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x1593e, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $35094, %r8
movl $0x51525354, (%rdx)
nop
nop
cmp %rbx, %rbx

// Load
mov $0x136a1a0000000e5a, %r8
nop
nop
nop
nop
sub $16708, %rdx
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
add $37219, %r14

// Faulty Load
lea addresses_UC+0xb31a, %rbx
nop
nop
nop
nop
dec %rdi
vmovntdqa (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'1a': 1140, '14': 1, 'b0': 1, '66': 1, '6c': 2, 'a8': 1, '06': 1, '68': 1, '80': 1, '9c': 1, '4b': 1, '46': 1407, '00': 227, '55': 1, '3e': 1}
06 1a 1a 1a 46 1a 46 00 00 00 00 1a 1a 1a 00 00 00 00 00 00 1a 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 1a 00 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 46 1a 1a 1a 1a 1a 46 1a 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 1a 1a 46 1a 1a 46 1a 1a 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 00 1a 1a 46 1a 1a 00 46 1a 00 1a 46 00 1a 1a 1a 1a 00 00 1a 00 1a 46 1a 1a 1a 00 00 00 1a 46 46 46 46 1a 1a 1a 1a 46 1a 1a 1a 1a 46 1a 1a 46 1a 46 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 46 46 1a 46 46 46 1a 46 1a 1a 1a 1a 1a 46 1a 1a 46 1a 1a 46 1a 1a 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 3e 46 1a 46 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 00 1a 46 1a 1a 46 1a 1a 1a 1a 1a 46 1a 46 1a 46 1a 46 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 46 1a 1a 1a 1a 46 1a 1a 1a 1a 46 1a 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 46 1a 1a 1a 1a 1a 46 1a 46 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 66 1a 1a 46 1a 46 1a 1a 46 1a 1a 46 1a 46 1a 1a 1a 1a 46 1a 1a 1a 46 1a 1a 1a 1a 1a 46 1a 1a 1a 1a 1a 46 1a 1a 1a 1a 1a 46 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 1a 1a 1a 1a 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 46 46 1a 1a 1a 1a 1a 46 46 1a 1a 1a 1a 1a 46 46 1a 1a 1a 1a 1a 1a 1a 46 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 1a 46 1a 1a 1a 46 1a 1a 1a 46 1a 1a 1a 46 1a 46 1a 1a 1a 1a 1a 46 00 1a 1a 46 00 00 00 1a 00 00 46 1a 00 00 00 1a 1a 1a 00 1a 1a 1a 1a 46 46 1a 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 1a 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 1a 46 1a 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 46 46 46 1a 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 1a 1a 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 1a 1a 1a 46 46 46 46 1a 46 46 1a 46 46 46 46 1a 1a 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 46 46 46 1a 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 1a 46 46 46 1a 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 1a 46 46 46 1a 1a 46 1a 46 46 46 46 1a 1a 1a 46 1a 1a 46 1a 1a 46 1a 46 1a 1a 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 1a 46 46 46 46 46 1a 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 46 1a 46 46 46 46 46 46 46 1a 46 46 46 46 46 1a 46 46 46 46 46 46 4b 46 46 1a 46 46 46 46 46 46 46 46 46 46 46 46
*/
