.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x5b09, %rdi
add %r10, %r10
mov (%rdi), %r12d
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x6641, %rdi
nop
add %r10, %r10
movb $0x51, (%rdi)
nop
nop
cmp $34702, %rbp

// REPMOV
mov $0xe49, %rsi
lea addresses_WC+0x17f51, %rdi
nop
inc %r12
mov $17, %rcx
rep movsb
nop
sub %rdx, %rdx

// Store
lea addresses_US+0xcb49, %rdi
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%rdi)
nop
nop
nop
nop
add $29685, %rdi

// Store
lea addresses_PSE+0xfb49, %rbp
xor $58550, %rdx
movw $0x5152, (%rbp)
nop
nop
cmp $27646, %rdx

// Faulty Load
lea addresses_WT+0x13949, %rdx
nop
nop
nop
nop
and %r10, %r10
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'39': 2}
39 39
*/
