.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15430, %rsi
lea addresses_WT_ht+0x9cb0, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rax, %rax
mov $46, %rcx
rep movsl
nop
nop
cmp $38350, %r14
lea addresses_normal_ht+0x1e0b0, %r12
nop
nop
nop
xor %rdx, %rdx
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
sub $38591, %rcx
lea addresses_UC_ht+0x15aa8, %r14
nop
nop
nop
sub $57770, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1bab0, %rsi
lea addresses_A_ht+0x1aeb0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $96, %rcx
rep movsl
nop
nop
sub $16205, %r14
lea addresses_WC_ht+0xa0d0, %rdx
nop
nop
xor %r14, %r14
movb (%rdx), %al
nop
nop
nop
and $48462, %rsi
lea addresses_D_ht+0x155b0, %rsi
lea addresses_UC_ht+0x11f48, %rdi
and $54211, %r13
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0xbc70, %rsi
lea addresses_D_ht+0x7a3a, %rdi
nop
inc %r12
mov $124, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1eb0, %r12
nop
nop
nop
nop
nop
inc %r13
mov (%r12), %r14d
inc %rsi
lea addresses_UC_ht+0x1d913, %r13
nop
nop
nop
nop
nop
mfence
movb $0x61, (%r13)
and %r12, %r12
lea addresses_UC_ht+0x18630, %rsi
nop
nop
nop
dec %r13
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
add %rcx, %rcx
lea addresses_A_ht+0x150b0, %rsi
lea addresses_D_ht+0x81ce, %rdi
nop
sub $15403, %r13
mov $124, %rcx
rep movsb
nop
nop
nop
add $63779, %rdx
lea addresses_D_ht+0x1e6e0, %rsi
nop
nop
nop
nop
inc %r14
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Load
lea addresses_D+0x1a8b0, %rcx
nop
nop
sub %rdi, %rdi
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
nop
nop
sub %r11, %r11

// Store
lea addresses_RW+0x1faf0, %r11
add %r10, %r10
movw $0x5152, (%r11)
sub %rcx, %rcx

// Faulty Load
lea addresses_RW+0x1d8b0, %rax
nop
nop
nop
nop
nop
dec %r8
movb (%rax), %r11b
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 82}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
