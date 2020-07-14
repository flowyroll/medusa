.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x161ea, %rbx
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
cmp $45570, %rdx
lea addresses_UC_ht+0x15036, %rbx
nop
nop
nop
nop
lfence
mov (%rbx), %dx
nop
add %rsi, %rsi
lea addresses_A_ht+0x1a146, %rsi
lea addresses_UC_ht+0x14c66, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $89, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_A_ht+0x7d46, %rcx
nop
nop
nop
nop
nop
dec %r12
movb (%rcx), %dl
nop
nop
add $22212, %rsi
lea addresses_normal_ht+0x1358e, %rsi
lea addresses_A_ht+0x25c6, %rdi
nop
nop
nop
add %r13, %r13
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1dc46, %r12
nop
cmp $22726, %rdi
mov (%r12), %r8d
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x14390, %rcx
nop
xor $11301, %r8
movb $0x61, (%rcx)
cmp $47157, %rbx
lea addresses_D_ht+0xd306, %r8
nop
nop
add $5476, %rsi
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x10746, %rsi
dec %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x60ae, %rbx
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rbx)
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rdi

// Load
lea addresses_US+0x1b746, %r10
nop
nop
cmp %rdi, %rdi
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_US+0x1b746, %r13
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
