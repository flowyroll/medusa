.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x187, %rsi
lea addresses_WT_ht+0x16f87, %rdi
and %r13, %r13
mov $105, %rcx
rep movsl
nop
nop
nop
and $57185, %r14
lea addresses_A_ht+0x1d80f, %rcx
nop
nop
nop
nop
nop
and %rdx, %rdx
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r13
sub %r14, %r14
lea addresses_A_ht+0x4d87, %rsi
lea addresses_WC_ht+0x1ac4f, %rdi
nop
nop
nop
nop
nop
cmp $39089, %r13
mov $19, %rcx
rep movsb
nop
nop
nop
nop
add $12002, %rsi
lea addresses_D_ht+0x10887, %r13
nop
nop
nop
nop
mfence
movb $0x61, (%r13)
nop
nop
nop
nop
add $15182, %rdi
lea addresses_WT_ht+0x18907, %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rdx)
nop
xor %r13, %r13
lea addresses_D_ht+0x7e87, %rcx
nop
nop
nop
xor $30863, %r13
mov (%rcx), %rdx
nop
nop
sub $15936, %rdi
lea addresses_normal_ht+0x16d87, %rdx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x46ff, %rsi
lea addresses_A_ht+0x9d87, %rdi
nop
nop
dec %r11
mov $121, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x15975, %r12
nop
nop
cmp %r11, %r11
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
nop
xor $53552, %r14
lea addresses_A_ht+0x1687, %r12
nop
nop
nop
nop
nop
add $46342, %r11
movw $0x6162, (%r12)
nop
nop
nop
nop
cmp $49000, %r14
lea addresses_WC_ht+0x271b, %rsi
lea addresses_D_ht+0x3747, %rdi
nop
nop
nop
nop
nop
and $31942, %r14
mov $102, %rcx
rep movsq
nop
nop
nop
and $27819, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp

// Faulty Load
lea addresses_US+0x6187, %r14
nop
nop
xor $5541, %rax
mov (%r14), %r13w
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'00': 114}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
