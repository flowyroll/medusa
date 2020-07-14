.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1efcf, %r13
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x77f, %rsi
lea addresses_UC_ht+0x4642, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $29, %rcx
rep movsw
nop
xor %r15, %r15
lea addresses_UC_ht+0x11e37, %rsi
lea addresses_D_ht+0x4e3f, %rdi
nop
nop
nop
and $47802, %r10
mov $57, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1765f, %rsi
lea addresses_normal_ht+0x2abf, %rdi
nop
nop
add $52040, %r12
mov $110, %rcx
rep movsw
nop
and %r15, %r15
lea addresses_A_ht+0x14bbf, %rsi
lea addresses_normal_ht+0x3ebf, %rdi
nop
xor %r10, %r10
mov $127, %rcx
rep movsb
nop
nop
nop
and $15635, %r15
lea addresses_normal_ht+0x11225, %r10
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
cmp $17808, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_WT+0x1d6bf, %rdi
nop
nop
nop
nop
dec %rbx
mov (%rdi), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'39': 105}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
