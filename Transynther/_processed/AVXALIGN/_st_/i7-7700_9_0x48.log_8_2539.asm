.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
lea addresses_D_ht+0x67c4, %rcx
clflush (%rcx)
nop
nop
nop
inc %rax
movb (%rcx), %r14b
nop
nop
nop
nop
sub $48152, %rax
lea addresses_WT_ht+0xf798, %r9
nop
cmp $33212, %r8
movw $0x6162, (%r9)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1d63e, %r12
nop
nop
nop
nop
sub $30451, %r13
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r14
nop
dec %r14
lea addresses_WC_ht+0x8fc4, %r13
add $38683, %r14
mov (%r13), %ax
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x4fc4, %rcx
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
and $49824, %r13
lea addresses_WC_ht+0x5234, %rax
nop
nop
nop
sub %r9, %r9
mov (%rax), %r8d
xor $53897, %r14
lea addresses_WT_ht+0x3cf6, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r8, %r8
mov (%rcx), %r14
and $24719, %r9
lea addresses_WT_ht+0x8044, %r13
clflush (%r13)
and %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
and %rax, %rax
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0x1a7c4, %rcx
cmp %rsi, %rsi
movb (%rcx), %r10b
nop
cmp $50922, %rcx

// REPMOV
lea addresses_WC+0x10d00, %rsi
lea addresses_RW+0x103c4, %rdi
xor %rdx, %rdx
mov $2, %rcx
rep movsl

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
nop
nop
and $40940, %r8

// Faulty Load
lea addresses_WT+0x1a7c4, %rsi
nop
nop
add $23731, %rcx
mov (%rsi), %r8d
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'39': 8}
39 39 39 39 39 39 39 39
*/
