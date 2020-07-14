.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xbd96, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %r10
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1ab96, %rsi
lea addresses_D_ht+0x12a46, %rdi
nop
nop
nop
nop
nop
xor $6707, %r14
mov $121, %rcx
rep movsl
nop
nop
add $23022, %r12
lea addresses_D_ht+0xf5c6, %rsi
lea addresses_normal_ht+0x1c2d3, %rdi
nop
nop
and %rbp, %rbp
mov $79, %rcx
rep movsb
nop
add %rsi, %rsi
lea addresses_WC_ht+0x49d6, %rsi
lea addresses_A_ht+0x1ee46, %rdi
inc %rdx
mov $88, %rcx
rep movsw
nop
nop
add %r10, %r10
lea addresses_normal_ht+0xabae, %rsi
lea addresses_WC_ht+0x7646, %rdi
nop
nop
nop
nop
nop
cmp $58270, %r14
mov $80, %rcx
rep movsb
nop
xor $48600, %rbp
lea addresses_UC_ht+0x13446, %r12
nop
nop
nop
nop
cmp $18284, %rdx
movw $0x6162, (%r12)
add %r12, %r12
lea addresses_A_ht+0x1e846, %rdx
clflush (%rdx)
nop
nop
nop
sub %r12, %r12
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
add %rdx, %rdx
lea addresses_normal_ht+0x11646, %r10
nop
nop
nop
add $58351, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %r10
movntdq %xmm4, (%r10)
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x19b26, %rsi
lea addresses_normal_ht+0x15206, %rdi
clflush (%rdi)
nop
sub $48672, %rbp
mov $84, %rcx
rep movsw
add $31791, %r10
lea addresses_WT_ht+0x1d846, %rdx
xor %rdi, %rdi
movb (%rdx), %cl
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xd946, %rdx
nop
nop
nop
add $29049, %rbp
mov (%rdx), %r12d
nop
nop
nop
nop
nop
cmp $22334, %rdi
lea addresses_UC_ht+0xe4c2, %rcx
xor $51192, %rsi
mov (%rcx), %rdi
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1ce46, %rsi
lea addresses_D+0x5e46, %rdi
nop
nop
inc %r13
mov $120, %rcx
rep movsw
nop
nop
nop
nop
cmp %r15, %r15

// Store
mov $0x1461200000000e46, %rdi
add $1629, %r11
movw $0x5152, (%rdi)
sub %r11, %r11

// Faulty Load
mov $0x1461200000000e46, %rdi
nop
nop
add %r15, %r15
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'7a': 1, 'd8': 2, 'd4': 1, '52': 2472, '98': 338, 'a6': 1, '94': 1, 'bc': 1, 'f2': 1, '82': 1, '08': 1, 'fa': 1, '16': 1, 'f0': 1, '4e': 1, '80': 1, '35': 290, '02': 2, '46': 1, '2e': 1, '58': 1, '8a': 1, 'ae': 1, '10': 1, 'c6': 1, '32': 2, 'ca': 1, 'd2': 1, 'e0': 1, 'c2': 1, '06': 1, 'fc': 2, 'd6': 1, 'be': 1, 'a4': 1, '86': 2, 'd0': 111, '00': 18579, 'fe': 1}
00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 35 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 35 00 35 00 00 00 d0 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 52 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 52 00 00 00 00 52 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 52 52 00 00 52 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 98 00 00 00 35 00 00 00 52 00 00 00 00 00 00 00 00 35 00 00 35 00 00 00 00 98 00 98 00 00 00 35 00 00 00 35 00 00 00 00 35 00 00 00 00 00 06 52 00 98 00 52 00 00 00 00 00 35 52 52 00 00 00 00 00 00 00 98 00 00 00 00 00 52 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 35 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 98 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 52 52 52 00 00 00 35 00 00 52 00 00 00 00 00 35 52 00 00 00 52 52 00 00 00 00 35 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 98 00 00 00 00 98 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 d0 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 35 00 00 52 00 00 98 00 52 00 00 52 00 00 52 00 00 00 00 35 35 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 98 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 98 00 00 00 98 00 00 52 00 52 52 d0 00 00 35 00 52 00 52 98 52 00 00 ca 52 00 00 00 00 00 52 52 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 98 00 00 00 00 00 00 00 00 52 00 00 00 98 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 52 00 00 00 00 52 52 35 00 00 52 00 00 00 00 00 52 00 00 d0 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 35 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00
*/
