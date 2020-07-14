.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1cd08, %r14
nop
nop
nop
sub $37070, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %r14
movntdq %xmm4, (%r14)
nop
nop
inc %r13
lea addresses_A_ht+0x1cba6, %rdx
clflush (%rdx)
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rdx
movaps %xmm5, (%rdx)
nop
nop
nop
xor $28993, %rsi
lea addresses_WC_ht+0x13f7c, %rsi
nop
nop
nop
sub $37939, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rsi
movntdq %xmm4, (%rsi)
nop
nop
nop
add $20902, %rsi
lea addresses_D_ht+0x188a0, %rdx
sub $52741, %r12
movw $0x6162, (%rdx)
add $15691, %r14
lea addresses_WT_ht+0xd31c, %rsi
lea addresses_WC_ht+0x1a8a6, %rdi
nop
nop
cmp $38955, %r15
mov $69, %rcx
rep movsq
and %r14, %r14
lea addresses_WT_ht+0x21e6, %r15
and %rax, %rax
movw $0x6162, (%r15)
nop
nop
nop
lfence
lea addresses_A_ht+0x1a4f6, %rcx
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x191e6, %rsi
clflush (%rsi)
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0xc9e6, %rsi
lea addresses_A_ht+0x199e6, %rdi
nop
nop
nop
nop
nop
sub $52901, %r12
mov $126, %rcx
rep movsq
nop
nop
nop
nop
xor $55833, %rdx
lea addresses_normal_ht+0xd5d6, %rcx
nop
nop
nop
nop
and $56850, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
add $47106, %r13
lea addresses_WC_ht+0x8be6, %rsi
lea addresses_WT_ht+0xfdfe, %rdi
clflush (%rsi)
nop
nop
xor %r14, %r14
mov $22, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xade6, %r14
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r14), %esi
nop
nop
inc %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x149e6, %rsi
add $17589, %rdi
movb $0x51, (%rsi)
nop
inc %r15

// Store
lea addresses_A+0x1e336, %r9
nop
nop
nop
nop
nop
xor $44462, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_PSE+0x149e6, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'08': 1, '2a': 1, '44': 543, '49': 1138, '00': 20142, 'ff': 2, '40': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 00 00 40 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 44 00 44 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 49 44 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 49 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 49 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 44 44 49 00 00 00 00 00 00 49 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
