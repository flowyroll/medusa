.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xd5a0, %rsi
nop
sub %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp $61775, %r14

// REPMOV
lea addresses_RW+0xf4e0, %rsi
lea addresses_RW+0x1020, %rdi
nop
and %rbp, %rbp
mov $19, %rcx
rep movsw
cmp %rdi, %rdi

// Store
lea addresses_D+0xc010, %rax
nop
nop
nop
nop
cmp $63779, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x11060, %rcx
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
add %rdi, %rdi

// Store
mov $0x720, %rax
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x14228, %rcx
nop
and $5162, %rsi
movb $0x51, (%rcx)
nop
cmp %rsi, %rsi

// Store
lea addresses_US+0x6020, %r14
nop
xor $11381, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovntdq %ymm2, (%r14)
nop
nop
nop
nop
sub $1216, %r14

// Faulty Load
lea addresses_US+0x7720, %rdi
nop
nop
nop
inc %rbp
movb (%rdi), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 4}
58 58 58 58
*/
