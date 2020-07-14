.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2538, %rsi
lea addresses_D_ht+0x1bfb8, %rdi
nop
dec %r8
mov $70, %rcx
rep movsq
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x123dc, %rbx
nop
nop
nop
nop
xor %r14, %r14
movb (%rbx), %cl
sub $14259, %rbp
lea addresses_WT_ht+0x1b9b8, %rcx
nop
nop
nop
nop
and $10029, %rbp
movb (%rcx), %r8b
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x9368, %rsi
lea addresses_A_ht+0x6b6b, %rdi
nop
nop
inc %rbp
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x1d538, %rsi
lea addresses_D_ht+0x14548, %rdi
nop
nop
nop
nop
cmp $64621, %rax
mov $95, %rcx
rep movsw
dec %rsi
lea addresses_normal_ht+0x987a, %rsi
lea addresses_D_ht+0x11d38, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $7560, %r14
mov $117, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x395a, %rsi
nop
nop
xor $61939, %r8
movb $0x61, (%rsi)
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx

// Faulty Load
lea addresses_US+0x13d38, %r10
nop
nop
nop
xor %r15, %r15
vmovntdqa (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}}
{'44': 1979, '00': 13090}
00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 44 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 44 00 00 44 44 00 44 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 44 44 00 44 44 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 44 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00
*/
