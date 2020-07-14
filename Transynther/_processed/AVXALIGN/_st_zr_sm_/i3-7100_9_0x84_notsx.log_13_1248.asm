.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf0ec, %r10
clflush (%r10)
cmp %r14, %r14
movb (%r10), %r8b
nop
nop
nop
nop
xor $11583, %r9
lea addresses_WC_ht+0x147ef, %rsi
lea addresses_UC_ht+0x1b42c, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $12, %rcx
rep movsq
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1c1ec, %rsi
lea addresses_D_ht+0x1e0ac, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $43, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x40ec, %rsi
nop
nop
sub %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1d61c, %rsi
dec %rdi
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
xor $25574, %r9
lea addresses_normal_ht+0x74ec, %r9
nop
sub $44233, %r14
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0x13628, %rbp
clflush (%rbp)
add %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovaps %ymm2, (%rbp)
nop
inc %rdi

// Store
lea addresses_normal+0x574c, %r14
nop
nop
nop
nop
nop
sub $346, %r11
movb $0x51, (%r14)
nop
and $13974, %rdi

// Store
mov $0xcc, %r15
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0xcec, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
inc %rbp

// Store
mov $0xcec, %r11
nop
nop
dec %rdi
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
mov $0xcec, %rdi
nop
nop
nop
nop
and $61993, %r15
movntdqa (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2, '52': 11}
52 52 52 52 52 52 52 00 52 52 52 52 00
*/
