.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rdx
push %rsi
lea addresses_D_ht+0x15cb0, %r9
nop
nop
nop
cmp $7715, %rdx
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x157ac, %rbp
sub $50302, %r14
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0xde40, %r9
nop
nop
nop
nop
nop
and $30934, %rax
mov (%r9), %r11d
cmp $13674, %rax
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdi

// Faulty Load
mov $0xd30, %r12
sub $32255, %rax
mov (%r12), %di
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
