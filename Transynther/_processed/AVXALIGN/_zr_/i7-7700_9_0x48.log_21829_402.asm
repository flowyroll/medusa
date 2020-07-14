.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a0c4, %rsi
lea addresses_WT_ht+0x18660, %rdi
nop
nop
nop
dec %r10
mov $16, %rcx
rep movsb
nop
and $53808, %r13
lea addresses_WC_ht+0x4fc4, %r9
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%r9)
nop
nop
nop
nop
add $53214, %rsi
lea addresses_UC_ht+0x142c4, %r8
nop
xor $1993, %rsi
mov (%r8), %r13d
nop
nop
add $37769, %r10
lea addresses_UC_ht+0xffc4, %r13
nop
nop
nop
sub $55403, %r9
mov (%r13), %di
nop
cmp $11777, %r9
lea addresses_WC_ht+0x7bc4, %rsi
lea addresses_WC_ht+0x1ed44, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x103c4, %r15
and %r13, %r13
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
cmp %rcx, %rcx
lea addresses_D_ht+0xf3c4, %r8
nop
nop
nop
nop
nop
add $47263, %r15
mov (%r8), %edi
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x163c4, %r10
clflush (%r10)
nop
nop
inc %r13
mov (%r10), %di
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x192eb, %r15
nop
nop
nop
nop
dec %rdi
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
cmp $37955, %r9
lea addresses_D_ht+0x6b9c, %rsi
lea addresses_WT_ht+0x164c4, %rdi
nop
nop
nop
nop
inc %r8
mov $90, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1c9c4, %rdi
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
and $15559, %rsi
lea addresses_UC_ht+0x3c4, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rdi
and %rsi, %rsi
lea addresses_normal_ht+0x11c4, %rsi
lea addresses_normal_ht+0x145c4, %rdi
nop
nop
xor %r13, %r13
mov $75, %rcx
rep movsw
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x115a4, %r9
nop
sub %r15, %r15
mov (%r9), %r8w
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x12404, %r8
nop
xor %rdi, %rdi
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx

// Faulty Load
lea addresses_normal+0x1a3c4, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
movaps (%r8), %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
