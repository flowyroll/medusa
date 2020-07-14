.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx
lea addresses_D_ht+0x3d70, %r14
nop
nop
add %rbx, %rbx
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x57e0, %r12
nop
nop
nop
nop
dec %rdi
mov (%r12), %eax
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x7714, %rbx
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %r8
nop
xor $59301, %r12
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0x3b5c, %r12
nop
nop
nop
and $21069, %rcx
mov (%r12), %esi
nop
sub $46370, %rbx

// REPMOV
lea addresses_normal+0x115e0, %rsi
lea addresses_normal+0x39e0, %rdi
clflush (%rdi)
nop
cmp $59417, %r9
mov $102, %rcx
rep movsb
sub $14846, %r9

// Faulty Load
mov $0x52d7900000009e0, %rbx
nop
nop
and $16383, %rcx
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 171, 'ff': 8}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 ff
*/
