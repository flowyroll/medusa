.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb958, %rbp
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rbp), %r11w
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1b878, %rsi
lea addresses_WC_ht+0x18fb8, %rdi
nop
nop
and %rdx, %rdx
mov $36, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x19538, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1a068, %rsi
lea addresses_normal_ht+0x10938, %rdi
nop
nop
nop
nop
dec %rdx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Faulty Load
mov $0x138, %r14
nop
add %rbp, %rbp
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'02': 2}
02 02
*/
