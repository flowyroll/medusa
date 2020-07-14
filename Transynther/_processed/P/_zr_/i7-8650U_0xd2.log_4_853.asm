.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x48d0, %rsi
lea addresses_normal_ht+0xbc78, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $48, %rcx
rep movsw
nop
nop
nop
lfence
lea addresses_WC_ht+0x16018, %rsi
lea addresses_A_ht+0x15978, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0xcf78, %r15
nop
nop
nop
nop
sub %r8, %r8
movups (%r15), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
cmp $15286, %r15
lea addresses_normal_ht+0x1cb78, %r10
nop
nop
cmp $55191, %rdi
mov (%r10), %r8d
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1828, %r15
nop
cmp %r10, %r10
mov (%r15), %r8d
dec %rdi
lea addresses_A_ht+0xbf04, %r8
add $7146, %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
sub $51734, %rbp
lea addresses_UC_ht+0x10878, %r8
xor %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %r8
vmovaps %ymm0, (%r8)
sub %r8, %r8
lea addresses_UC_ht+0x1978, %r8
nop
add %rsi, %rsi
movb (%r8), %r10b
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x7280, %rbp
nop
sub %r15, %r15
mov (%rbp), %r10
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x16f78, %r15
nop
nop
nop
nop
nop
xor $7702, %rcx
mov (%r15), %si
nop
nop
nop
nop
add $61187, %rdi
lea addresses_A_ht+0x19d78, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r15), %r8d
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rdi
push %rdx

// Faulty Load
mov $0x778, %r12
nop
nop
nop
nop
dec %rdx
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 4}
00 00 00 00
*/
