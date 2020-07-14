.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd2c0, %r15
nop
nop
and $42213, %r8
mov (%r15), %r12w
nop
nop
nop
nop
add $5563, %rax
lea addresses_UC_ht+0x12a93, %rsi
lea addresses_A_ht+0x16e3f, %rdi
nop
nop
nop
and %r14, %r14
mov $101, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_A_ht+0x1013f, %r15
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x14c07, %rsi
lea addresses_A_ht+0x1029f, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $102, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xbeef, %rsi
lea addresses_normal_ht+0xb8a, %rdi
clflush (%rsi)
and $30077, %rax
mov $118, %rcx
rep movsq
nop
add $24279, %rcx
lea addresses_A_ht+0x482f, %rsi
lea addresses_WT_ht+0x11c3f, %rdi
nop
inc %r14
mov $54, %rcx
rep movsb
nop
nop
nop
and $189, %r14
lea addresses_WC_ht+0x10e3f, %rsi
lea addresses_A_ht+0x1703f, %rdi
nop
xor %r14, %r14
mov $13, %rcx
rep movsb
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x4267, %r12
nop
nop
nop
nop
nop
sub $27218, %r15
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r8
xor %rdi, %rdi
lea addresses_D_ht+0xcc25, %r12
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x2a3f, %rbp
nop
nop
nop
sub %rcx, %rcx
vmovaps (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'45': 60, '00': 1592, '49': 225, '47': 11}
00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 49 49 49 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 49 45 49 49 49 00 49 49 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 49 45 00 00 49 49 00 00 00 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 49 00 00 00 49 00 49 49 00 49 00 49 49 49 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 00 49 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 49 49 49 49 00 49 49 00 49 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 47 00 00 00 00 00 45 49 00 49 49 49 00 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 47 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49
*/
