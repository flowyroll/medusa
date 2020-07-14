.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc2b1, %rsi
lea addresses_D_ht+0x129c5, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $123, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_WC_ht+0xaeb1, %r14
nop
nop
nop
nop
nop
cmp $37467, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
add $38361, %rsi
lea addresses_D_ht+0x32b1, %rcx
nop
nop
nop
cmp $26949, %r15
movb (%rcx), %al
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x166f1, %rsi
lea addresses_UC_ht+0xb2d3, %rdi
nop
nop
nop
nop
nop
xor $59139, %r15
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
and $55868, %rdx
lea addresses_D_ht+0xa631, %r14
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
cmp $64374, %rax
lea addresses_WT_ht+0x1bfe9, %rdx
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%rdx), %cl
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1b151, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
movb (%rdx), %r15b
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xb3b1, %rsi
lea addresses_UC_ht+0x79fe, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $27, %rcx
rep movsq
nop
xor $61621, %r14
lea addresses_WC_ht+0x1d2b1, %rdi
and %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1d8c5, %rsi
lea addresses_normal_ht+0x15ad1, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $58, %rcx
rep movsq
nop
sub $24768, %rsi
lea addresses_WC_ht+0x1d981, %rsi
lea addresses_normal_ht+0xc081, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $82, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1ecb1, %rsi
lea addresses_WT_ht+0x77c9, %rdi
nop
nop
nop
and %r8, %r8
mov $11, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x9191, %rbp
nop
and %rbx, %rbx
movw $0x5152, (%rbp)
nop
cmp $5236, %rbx

// Store
lea addresses_WT+0x9c31, %rbx
nop
nop
nop
nop
xor $38578, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rbx)
add $61410, %rbx

// Load
lea addresses_US+0x4ab1, %rbx
nop
and $34038, %r10
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_UC+0x22b1, %rdx
nop
nop
inc %r10
movb (%rdx), %bl
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
