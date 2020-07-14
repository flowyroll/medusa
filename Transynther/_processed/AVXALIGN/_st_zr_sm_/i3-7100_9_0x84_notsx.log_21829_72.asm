.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x92ac, %rbx
and $37418, %r13
movw $0x6162, (%rbx)
nop
cmp %r10, %r10
lea addresses_WC_ht+0x18a38, %r9
nop
nop
nop
nop
cmp %rax, %rax
mov (%r9), %rcx
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1ceb8, %rbx
nop
nop
inc %r13
mov (%rbx), %rcx
nop
inc %r10
lea addresses_A_ht+0x28a0, %rbp
nop
nop
and %r10, %r10
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
sub $65408, %r9
lea addresses_D_ht+0x2038, %rsi
lea addresses_normal_ht+0x8538, %rdi
nop
nop
xor $48560, %r13
mov $45, %rcx
rep movsb
inc %r9
lea addresses_normal_ht+0x11580, %rax
and $7117, %rcx
movb $0x61, (%rax)
nop
nop
and $16478, %rcx
lea addresses_WT_ht+0x14268, %r13
nop
nop
add %rax, %rax
mov (%r13), %di
and $55322, %rsi
lea addresses_normal_ht+0x1ab47, %rsi
lea addresses_D_ht+0x12110, %rdi
nop
inc %rbp
mov $89, %rcx
rep movsw
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x5ab8, %rbp
nop
nop
nop
nop
sub $14677, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
and $990, %r9
lea addresses_normal_ht+0xfbd4, %rbp
xor $32263, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x38ba, %r10
nop
nop
nop
cmp $15332, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
add $35699, %rcx
lea addresses_WC_ht+0x17fb8, %r13
nop
cmp $26563, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
add $44319, %rbp
lea addresses_WT_ht+0x2a8, %rcx
nop
nop
xor $45461, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rcx)
nop
dec %rsi
lea addresses_D_ht+0x1c678, %rcx
nop
nop
nop
nop
and $32434, %r9
movb $0x61, (%rcx)
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xea78, %rsi
lea addresses_UC+0x1c9f0, %rdi
dec %rbx
mov $56, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_WC+0x96b8, %r10
nop
cmp $13597, %rsi
mov (%r10), %rbp
nop
nop
nop
nop
xor $64559, %rcx

// REPMOV
lea addresses_WT+0x116b8, %rsi
lea addresses_D+0x1deb8, %rdi
nop
sub %r13, %r13
mov $62, %rcx
rep movsl
nop
nop
xor $41727, %r10

// Store
mov $0x80, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%rsi)
add %r10, %r10

// Store
lea addresses_A+0x14140, %rdi
nop
and $63103, %rcx
movb $0x51, (%rdi)
nop
inc %rdi

// Load
mov $0xdac, %rbp
clflush (%rbp)
nop
sub %rdi, %rdi
mov (%rbp), %esi
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0xd2b8, %rsi
nop
nop
nop
nop
cmp $33005, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rsi)
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0x56b8, %r9
nop
nop
nop
add $48490, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r9)
xor %rcx, %rcx

// Store
lea addresses_D+0xdb1c, %rdi
add $6368, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovntdq %ymm2, (%rdi)
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x56b8, %rbx
dec %rbp
movntdqa (%rbx), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 196, '58': 21633}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
