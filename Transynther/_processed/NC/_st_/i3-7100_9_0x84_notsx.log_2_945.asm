.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6f0, %r13
nop
nop
nop
nop
nop
add $1430, %rax
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
nop
add $9552, %r9
lea addresses_UC_ht+0xa0d0, %rbp
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x7714, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%r13), %eax
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x187d0, %rax
nop
xor $20902, %r13
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0xceb2, %rsi
lea addresses_A_ht+0x4510, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $109, %rcx
rep movsq
xor $49752, %r13
lea addresses_A_ht+0x113a4, %rsi
lea addresses_WC_ht+0xe6b4, %rdi
nop
nop
nop
and $2923, %r10
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1e5b0, %rdi
xor %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
inc %rax
lea addresses_WC_ht+0xe83a, %r8
nop
nop
dec %rbp
mov (%r8), %r9d
sub %rdi, %rdi
lea addresses_WC_ht+0x1d90, %rsi
lea addresses_D_ht+0xc2f0, %rdi
nop
cmp $1643, %r9
mov $28, %rcx
rep movsb
nop
nop
nop
sub $42306, %r10
lea addresses_D_ht+0x6490, %rbp
nop
and %r8, %r8
mov (%rbp), %eax
nop
sub $9515, %r8
lea addresses_WC_ht+0x39c, %r13
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r13), %ecx
add $2214, %r13
lea addresses_WT_ht+0x17b3, %r8
nop
nop
nop
sub %r13, %r13
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
and $36484, %rsi
lea addresses_D_ht+0xa300, %r10
nop
nop
nop
nop
and $14303, %rsi
movl $0x61626364, (%r10)
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x10b50, %rcx
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rcx)
xor $65087, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x132b8, %rcx
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0x20d0, %rax
nop
nop
nop
nop
nop
sub $37847, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movaps %xmm2, (%rax)
nop
inc %r10

// Store
lea addresses_UC+0x1d8d0, %rax
clflush (%rax)
nop
inc %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
add $7095, %rbp

// Store
lea addresses_D+0x74d0, %r10
nop
nop
nop
nop
nop
sub $12913, %r8
movw $0x5152, (%r10)
nop
nop
nop
sub %rcx, %rcx

// REPMOV
lea addresses_PSE+0x1cd0, %rsi
mov $0x3abaa0000000088, %rdi
nop
nop
nop
and $27383, %r14
mov $23, %rcx
rep movsw
cmp %rax, %rax

// Store
lea addresses_PSE+0xb4d0, %r9
nop
nop
nop
sub $63429, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
add $24587, %rdi

// Faulty Load
mov $0x1faa1e00000004d0, %r8
nop
and $43242, %r10
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 1, '52': 1}
58 52
*/
