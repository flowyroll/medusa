.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf487, %rbx
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rbx)
nop
nop
dec %rax
lea addresses_UC_ht+0xf4d9, %rsi
lea addresses_normal_ht+0x1d747, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $76, %rcx
rep movsb
xor $47142, %r10
lea addresses_A_ht+0x467f, %rdi
nop
nop
sub $37634, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
inc %r13
lea addresses_UC_ht+0xfc87, %rsi
lea addresses_WT_ht+0x15b87, %rdi
nop
nop
and %rbx, %rbx
mov $56, %rcx
rep movsb
cmp $58563, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_WC+0x6487, %r12
nop
nop
and $55964, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_WT+0x487, %r8
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r8), %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'58': 37}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
