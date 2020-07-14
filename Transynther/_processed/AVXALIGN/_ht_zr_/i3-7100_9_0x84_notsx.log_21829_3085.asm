.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x32a2, %r10
and %r12, %r12
movw $0x6162, (%r10)
xor $29217, %rbp
lea addresses_WC_ht+0x13f52, %rsi
lea addresses_normal_ht+0xf422, %rdi
nop
nop
nop
nop
inc %rbx
mov $75, %rcx
rep movsq
add $27449, %rdi
lea addresses_UC_ht+0xf42, %rsi
lea addresses_normal_ht+0x1a20e, %rdi
nop
nop
cmp %rbx, %rbx
mov $64, %rcx
rep movsw
nop
cmp $16797, %rdi
lea addresses_A_ht+0x15190, %r12
nop
nop
nop
nop
inc %rsi
movb (%r12), %bl
nop
nop
cmp $38363, %r10
lea addresses_WT_ht+0xfa52, %rsi
nop
nop
nop
nop
cmp $58362, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x18552, %r10
nop
nop
nop
nop
nop
and $27910, %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and $34560, %rbx
lea addresses_UC_ht+0x1688a, %rsi
lea addresses_WT_ht+0xffd2, %rdi
nop
nop
nop
xor $50586, %rbp
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_WT+0x19ef2, %r14
xor $49709, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_PSE+0x18b52, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
and $41933, %rax
movntdqa (%rbp), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'00': 15635, '48': 6194}
00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 48 00 00 48 00 48 48 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 48 48 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 48 48 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 48 00 48 00 00 48 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 48 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 48 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00
*/
