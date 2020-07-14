.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rdx
push %rsi
lea addresses_normal_ht+0x58af, %r12
nop
xor $18783, %rsi
movb (%r12), %dl
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x63a7, %rsi
mfence
movb (%rsi), %dl
nop
nop
nop
and $46114, %rbp
lea addresses_D_ht+0x11d27, %rax
clflush (%rax)
nop
nop
add $10400, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm3
and $0xffffffffffffffc0, %rax
movaps %xmm3, (%rax)
nop
nop
nop
nop
sub $8151, %rsi
lea addresses_D_ht+0x11e6f, %r8
clflush (%r8)
nop
dec %r10
movw $0x6162, (%r8)
nop
cmp $25678, %r8
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rdi
push %rdx

// Load
mov $0x7ad7a70000000e6f, %r8
nop
nop
nop
and %r11, %r11
mov (%r8), %di
nop
cmp %rbp, %rbp

// Load
lea addresses_D+0xb44f, %rdx
nop
nop
add %r10, %r10
mov (%rdx), %r11
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0xb3cf, %r10
nop
nop
cmp %r8, %r8
movw $0x5152, (%r10)
sub $32960, %r10

// Store
lea addresses_US+0x107b4, %rbp
nop
xor $4509, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbp)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_US+0xafcf, %r14
nop
nop
nop
nop
nop
dec %r8
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
