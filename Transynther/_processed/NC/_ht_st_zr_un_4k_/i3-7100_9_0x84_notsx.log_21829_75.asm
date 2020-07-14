.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18ffe, %r13
nop
nop
nop
nop
and %rbp, %rbp
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
xor $10231, %rdi
lea addresses_normal_ht+0x10356, %rbx
nop
nop
nop
cmp $6176, %rbp
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
cmp $11524, %r9
lea addresses_WT_ht+0x15eb6, %r14
nop
nop
nop
xor $53280, %rcx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
add $24436, %r13
lea addresses_WT_ht+0x138b6, %rcx
nop
nop
nop
nop
sub $18748, %r9
mov (%rcx), %rbx
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1d949, %r14
nop
nop
nop
nop
nop
mfence
mov (%r14), %bx
nop
and %rcx, %rcx
lea addresses_D_ht+0x7cf6, %rsi
lea addresses_WT_ht+0x8eb6, %rdi
nop
nop
nop
nop
cmp $58034, %r14
mov $79, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0xb906, %rbx
nop
cmp $21478, %r9
movb $0x61, (%rbx)
and $32188, %r13
lea addresses_A_ht+0x6df6, %rsi
lea addresses_D_ht+0x3d3e, %rdi
nop
nop
nop
nop
xor $39308, %r13
mov $95, %rcx
rep movsq
nop
nop
nop
xor $5857, %rsi
lea addresses_WC_ht+0x2988, %rbp
clflush (%rbp)
nop
nop
nop
and $35365, %r9
mov (%rbp), %cx
nop
nop
nop
nop
nop
sub $38933, %rbx
lea addresses_UC_ht+0x163a5, %rsi
lea addresses_normal_ht+0x155b6, %rdi
clflush (%rdi)
nop
nop
nop
and $40464, %rbx
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x12d4e, %rdx
clflush (%rdx)
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
add $38804, %rdx

// Store
mov $0x4b6, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
mov $0x5c63b00000004b6, %rdx
nop
nop
nop
and $30176, %r13
movb (%rdx), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'20': 1, '68': 1, 'ce': 1, '00': 369, '58': 1733, '40': 19724}
40 58 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 58 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 58 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 58 58 58 40 40 40 40 40 40 58 58 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 00 58 40 40 40 40 40 40 40 40 58 58 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 58 40 40 40 40 40 40 40 40 00 40 40 00 58 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 00 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 58 40 40 40 40 40 40 40 40 40 40 58 40 40 40 58 40 40 40 40 40 58 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 58 40 00 40 40 40 40 40 40 40 40 58 40 40 40 58 40 58 58 40 40 40 40 40 58 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 58 58 40 40 58 40 40 58 40 40 40 40 00 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 58 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 58 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 58 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 58 40 40 40 40 40 00 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 00 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 40 40 58 40 40 40 40 40 58 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 40 58 58 58 40 40 00 40 58 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 58 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 58 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 40 40 40 40 58 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 58 40 40 40 40 00 40 40 40 40 40 40 40 40 40 40 40 58 40 58 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 00 40 40 40 40 40 40 40 40 40 40 40 40 40 00
*/
