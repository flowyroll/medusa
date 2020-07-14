.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1d1f0, %rsi
lea addresses_D_ht+0x180b0, %rdi
nop
cmp $11801, %r11
mov $124, %rcx
rep movsb
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x27a8, %rbx
nop
nop
nop
nop
and %rdx, %rdx
mov (%rbx), %r11w
nop
nop
sub $48771, %r15
lea addresses_D_ht+0x3670, %rdx
nop
nop
nop
nop
nop
sub $7417, %rsi
mov (%rdx), %ecx
nop
dec %r11
lea addresses_normal_ht+0x8ae3, %rsi
nop
nop
cmp %r15, %r15
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x10e58, %rsi
mov $0x424fbd00000004f0, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $43, %rcx
rep movsw
cmp $44743, %rdx

// Faulty Load
lea addresses_WC+0xee30, %rbx
nop
nop
nop
nop
add $49078, %r11
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
