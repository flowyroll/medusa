.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x17bfa, %rdx
nop
nop
nop
nop
dec %r12
mov (%rdx), %bp
cmp $46502, %rax
lea addresses_D_ht+0x9ef2, %rsi
lea addresses_WT_ht+0xff96, %rdi
nop
inc %r8
mov $78, %rcx
rep movsw
nop
nop
sub $41421, %rbp
lea addresses_WT_ht+0x12c29, %rsi
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x12792, %rsi
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
add $58649, %rbp
lea addresses_A_ht+0x8932, %rdx
nop
nop
nop
inc %rbp
movb (%rdx), %al
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbp

// Load
lea addresses_WC+0x100f2, %r10
nop
nop
and $34975, %r9
mov (%r10), %r15w
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
mov $0x6f2, %r15
nop
nop
cmp $52416, %rax
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'f3': 1}
f3
*/
