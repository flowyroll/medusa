.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf212, %r14
add $18208, %rbp
movl $0x61626364, (%r14)
nop
nop
xor $2210, %rsi
lea addresses_normal_ht+0x1e7a8, %r13
nop
nop
nop
nop
nop
sub %rax, %rax
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xfca8, %rsi
lea addresses_WT_ht+0x15748, %rdi
nop
nop
nop
nop
nop
add $49778, %r8
mov $77, %rcx
rep movsw
sub %r14, %r14
lea addresses_D_ht+0x16567, %rsi
nop
xor %r14, %r14
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
add $14363, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_PSE+0x471c, %r8
nop
nop
nop
nop
nop
add $6849, %rsi
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x1c6a8, %rax
nop
nop
nop
cmp $30585, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_PSE+0x11748, %r13
nop
add %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%r13)
nop
nop
nop
nop
xor $1566, %r13

// Faulty Load
lea addresses_US+0xe748, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rax), %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1, '58': 52}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
