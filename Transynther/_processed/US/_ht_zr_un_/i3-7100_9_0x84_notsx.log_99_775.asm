.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1ec9, %rdi
nop
nop
nop
nop
nop
cmp $31115, %rbp
mov (%rdi), %r13d
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x1b4f9, %r15
nop
and $15971, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0xf9, %rdi
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rdi
vmovaps %ymm3, (%rdi)
dec %r15
lea addresses_WC_ht+0x1d409, %rsi
lea addresses_WT_ht+0x6079, %rdi
nop
inc %rdx
mov $70, %rcx
rep movsq
add $54316, %rbp
lea addresses_UC_ht+0x11af9, %rbp
clflush (%rbp)
nop
cmp $26278, %rdx
mov (%rbp), %r15d
add $53668, %r10
lea addresses_A_ht+0xc0b9, %r10
nop
nop
nop
nop
nop
inc %rsi
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
sub $43895, %rbp
lea addresses_WC_ht+0x1c119, %rsi
lea addresses_D_ht+0x50f9, %rdi
add %rbp, %rbp
mov $48, %rcx
rep movsq
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x144f9, %rbp
clflush (%rbp)
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
and $44318, %rdi
lea addresses_A_ht+0x2ff9, %rdx
nop
nop
nop
nop
and %r15, %r15
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
inc %rdi
lea addresses_D_ht+0x12cf9, %rsi
nop
nop
nop
nop
nop
xor $21017, %r13
mov (%rsi), %ebp
nop
nop
nop
add $29562, %rsi
lea addresses_normal_ht+0x15679, %rsi
lea addresses_A_ht+0x8a79, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $37, %rcx
rep movsl
nop
and $36132, %rbp
lea addresses_UC_ht+0x6cf9, %rbp
nop
nop
cmp %rsi, %rsi
vmovups (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x50f9, %rsi
lea addresses_normal_ht+0x84f9, %rdi
nop
nop
nop
and $13269, %rdx
mov $63, %rcx
rep movsl
nop
nop
xor $60768, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_US+0x1c4f9, %r11
nop
nop
nop
nop
nop
sub $12780, %rbx
mov (%r11), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'47': 2, '48': 2, '9e': 2, '1a': 2, '00': 75, 'd0': 16}
d0 d0 d0 d0 00 00 00 00 00 00 1a d0 00 00 47 00 48 00 00 00 00 00 d0 d0 d0 00 00 00 00 00 00 00 00 00 00 9e 00 00 00 00 00 00 00 1a d0 d0 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 9e 00 00 00 00 d0 d0 d0 d0 00 00 00 47 00 00 00 00 00 00
*/
