.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rcx
push %rsi
lea addresses_UC_ht+0xd43e, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rcx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x1b5fe, %rdi
nop
nop
nop
mfence
movw $0x5152, (%rdi)
nop
nop
nop
inc %rcx

// Load
lea addresses_US+0xd8fe, %r14
dec %rcx
mov (%r14), %r11
nop
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0xd8fe, %r14
add $39398, %rdx
mov (%r14), %edi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 24, '08': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00
*/
