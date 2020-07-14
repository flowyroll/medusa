.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xbbf9, %rsi
lea addresses_A_ht+0x180d9, %rdi
nop
nop
nop
nop
cmp $60158, %r15
mov $14, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xa6a3, %r13
nop
nop
nop
add %rcx, %rcx
mov (%r13), %r15w
nop
nop
nop
nop
cmp $52486, %rdi
lea addresses_D_ht+0x5e5d, %rsi
lea addresses_WC_ht+0x115e9, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $76, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_normal_ht+0xa2d9, %r15
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x15859, %rsi
lea addresses_normal_ht+0x1ced9, %rdi
clflush (%rsi)
nop
dec %rbp
mov $117, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x74ef, %rsi
lea addresses_UC_ht+0x13bc1, %rdi
nop
nop
nop
and %rax, %rax
mov $87, %rcx
rep movsw
nop
nop
nop
xor $43580, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x1ada2, %r8
clflush (%r8)
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %r8
movaps %xmm1, (%r8)
nop
nop
sub %r13, %r13

// Store
mov $0x2b2bb30000000d39, %rbx
clflush (%rbx)
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%rbx)
nop
and $38968, %r13

// Store
lea addresses_A+0x10b59, %rbx
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_RW+0x219c, %rcx
clflush (%rcx)
nop
xor $44247, %r13
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
and $62537, %rsi

// Store
lea addresses_D+0x1cf59, %r8
cmp %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
xor $23299, %rax

// Store
mov $0xca50000000004d9, %r12
nop
nop
nop
nop
nop
sub $14197, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r12)
nop
nop
dec %r13

// Faulty Load
mov $0x30c0150000000cd9, %rax
nop
nop
nop
nop
inc %r13
mov (%rax), %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
