.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbp
push %rcx
push %rdi
lea addresses_D_ht+0x7321, %r15
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
xor $28250, %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1ff21, %rsi
lea addresses_RW+0x16721, %rdi
nop
nop
nop
cmp %r9, %r9
mov $36, %rcx
rep movsw
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_normal+0x2f21, %rdi
nop
nop
cmp $28701, %r8
movb (%rdi), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 10}
34 34 34 34 34 34 34 34 34 34
*/
