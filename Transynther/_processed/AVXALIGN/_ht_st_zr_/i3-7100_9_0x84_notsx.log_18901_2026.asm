.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1319b, %rbp
and %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x14a9b, %r10
nop
xor $40717, %r9
movl $0x61626364, (%r10)
nop
nop
xor $39364, %rbx
lea addresses_D_ht+0xb29b, %r9
nop
nop
nop
and %r12, %r12
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $22003, %rbx
lea addresses_D_ht+0x195c1, %r12
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
nop
cmp $63031, %r13
lea addresses_WT_ht+0xcce5, %rsi
xor %rbx, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
sub $1228, %rbp
lea addresses_normal_ht+0x98db, %r13
clflush (%r13)
nop
nop
nop
xor %r12, %r12
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
cmp $1660, %r12
lea addresses_A_ht+0xff5b, %rsi
lea addresses_A_ht+0x429b, %rdi
nop
nop
nop
nop
cmp $58421, %r13
mov $94, %rcx
rep movsq
nop
nop
nop
and $43543, %r12
lea addresses_WC_ht+0x18267, %rsi
lea addresses_D_ht+0x1cc50, %rdi
nop
xor %r13, %r13
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x14a9b, %rsi
lea addresses_WC_ht+0x129b, %rdi
clflush (%rsi)
nop
nop
nop
and $60707, %rbx
mov $30, %rcx
rep movsw
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x17423, %rsi
lea addresses_UC_ht+0xba9b, %rdi
cmp %rbp, %rbp
mov $82, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xda9b, %rdi
nop
and %rbp, %rbp
mov (%rdi), %ecx
nop
nop
nop
cmp $32208, %rdi
lea addresses_D_ht+0x1d94f, %rsi
lea addresses_WC_ht+0xf2cb, %rdi
clflush (%rdi)
nop
nop
nop
and $26232, %r9
mov $19, %rcx
rep movsw
nop
nop
nop
nop
and $65050, %r10
lea addresses_WC_ht+0x19d9b, %rbp
nop
nop
nop
cmp %r10, %r10
mov (%rbp), %ebx
nop
nop
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xfc3, %rsi
lea addresses_D+0x1b77b, %rdi
and $2288, %rbp
mov $51, %rcx
rep movsw
nop
nop
xor $10387, %rdi

// Store
lea addresses_WT+0x6e7b, %r13
nop
nop
and $556, %rcx
movw $0x5152, (%r13)
nop
nop
nop
and $44727, %rbp

// Store
lea addresses_normal+0x45b4, %rdx
nop
sub %rsi, %rsi
movl $0x51525354, (%rdx)
nop
and $62857, %rdx

// Faulty Load
mov $0x29b, %rbp
nop
nop
nop
nop
xor %rcx, %rcx
vmovntdqa (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 962, '48': 17933, '45': 5, '34': 1}
48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48
*/
