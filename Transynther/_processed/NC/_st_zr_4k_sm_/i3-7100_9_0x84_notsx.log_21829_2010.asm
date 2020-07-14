.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf57f, %rsi
lea addresses_UC_ht+0x9ecf, %rdi
nop
nop
nop
nop
inc %r14
mov $101, %rcx
rep movsb
and $1978, %rax
lea addresses_WC_ht+0x1157f, %r15
nop
nop
nop
nop
nop
add $16515, %rcx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
nop
sub $7941, %rcx
lea addresses_normal_ht+0xfa0f, %rsi
lea addresses_WC_ht+0x7e0f, %rdi
nop
nop
xor %rdx, %rdx
mov $115, %rcx
rep movsq
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x197f, %rsi
lea addresses_A_ht+0x1ca3f, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $102, %rcx
rep movsq
nop
and $48786, %r10
lea addresses_WC_ht+0x1657f, %r10
clflush (%r10)
nop
nop
nop
dec %r14
movups (%r10), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x6fa7, %rsi
nop
inc %r10
mov (%rsi), %edi
dec %rdi
lea addresses_WC_ht+0x1f3f, %rdx
nop
nop
cmp $4816, %r14
movb (%rdx), %r15b
nop
nop
dec %rsi
lea addresses_A_ht+0x81df, %rcx
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
and %rdx, %rdx
lea addresses_A_ht+0x1257f, %r10
nop
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x47f, %rsi
lea addresses_WT_ht+0x9bdf, %rdi
cmp %rdx, %rdx
mov $117, %rcx
rep movsw
and %rdx, %rdx
lea addresses_normal_ht+0xbe22, %rsi
lea addresses_A_ht+0x1267f, %rdi
nop
nop
xor $35986, %rax
mov $47, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_D_ht+0x1d20b, %r15
nop
nop
nop
xor $21039, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r15)
sub $34692, %rsi
lea addresses_A_ht+0x851f, %rdi
nop
nop
xor $28042, %r14
mov (%rdi), %eax
nop
nop
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdi

// Store
lea addresses_WT+0x16d7f, %r13
nop
cmp $35779, %rdi
movw $0x5152, (%r13)

// Exception!!!
nop
nop
mov (0), %r13
nop
nop
cmp %rbp, %rbp

// Store
mov $0x250de60000000bff, %r13
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r13)
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x14bab, %r13
nop
nop
nop
and $23453, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r13)
sub $37112, %rbp

// Store
lea addresses_D+0x1737f, %r8
clflush (%r8)
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0x757f, %r8
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r8)
nop
nop
sub $61838, %r15

// Store
lea addresses_RW+0x18885, %rdi
nop
dec %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x6256630000000d7f, %r15
nop
and %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0x6256630000000d7f, %rbp
nop
nop
cmp %r12, %r12
movb (%rbp), %r8b
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 934, '58': 20865, '52': 30}
58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58
*/
