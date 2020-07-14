.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x36a5, %r13
xor %r15, %r15
movb $0x61, (%r13)
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xfe87, %r10
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x2e36, %rdi
nop
add %r15, %r15
movb (%rdi), %r13b
nop
inc %rbx
lea addresses_UC_ht+0x1367d, %rsi
lea addresses_WT_ht+0x1cf6d, %rdi
clflush (%rsi)
xor $18998, %r12
mov $94, %rcx
rep movsl
nop
cmp $29369, %r15
lea addresses_WC_ht+0x1bce7, %rsi
lea addresses_WT_ht+0x18f7d, %rdi
nop
nop
nop
cmp %r15, %r15
mov $17, %rcx
rep movsb
inc %r13
lea addresses_A_ht+0x1bf7d, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r10), %rbx
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0xdc65, %rsi
lea addresses_normal_ht+0x5b7d, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $35, %rcx
rep movsl
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x183fd, %r15
nop
nop
nop
xor %r12, %r12
mov (%r15), %r10w
nop
nop
nop
nop
cmp $10710, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0xff59, %r10
nop
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x18d15, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %r14, %r14
movw $0x5152, (%r15)
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_US+0x11f7d, %rax
nop
nop
and %r10, %r10
mov (%rax), %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'53': 1204, '47': 1390, 'ff': 6490, 'f0': 439, 'b3': 1, '01': 83, '48': 763, '44': 123, 'de': 13, '3f': 10, '45': 48, '00': 11265}
00 f0 53 00 ff 00 00 00 00 00 00 48 00 ff ff 00 00 00 47 53 00 ff ff 00 47 00 ff ff 00 ff 00 00 00 ff 00 47 ff f0 00 00 ff 47 00 ff 00 53 53 ff 00 00 00 00 ff 00 ff 47 00 ff ff 00 00 00 47 00 53 ff 00 00 ff ff ff 00 ff ff 00 00 00 48 00 ff 44 00 00 00 00 00 ff 00 00 48 00 ff ff ff 47 00 48 ff ff 00 53 47 00 00 ff 47 00 47 00 00 00 00 00 00 00 ff ff 00 00 48 00 00 00 00 00 00 00 47 ff 00 ff 00 00 53 00 00 48 00 00 00 ff ff 00 00 00 ff ff 00 00 ff 00 ff ff 00 ff 00 ff f0 00 ff 44 00 00 00 ff 00 47 00 00 48 53 00 00 47 00 ff 00 ff 53 ff 53 ff 48 00 00 ff ff ff ff 47 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 53 00 ff ff 00 ff 00 ff ff 00 00 00 00 47 00 00 47 00 00 00 00 ff 3f 00 47 00 47 ff ff 53 00 00 00 ff ff 00 47 00 00 00 48 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 53 ff ff 00 ff 00 00 00 ff 00 53 00 00 00 44 00 ff 00 47 00 ff 48 ff 00 00 ff 00 00 ff f0 00 ff 00 00 ff ff ff ff 48 53 ff 47 00 ff 00 00 00 ff ff 00 00 ff 00 ff 00 53 00 47 00 de ff f0 00 ff 53 00 00 ff 00 ff ff ff ff 00 ff ff 01 00 00 00 48 00 00 ff 48 47 00 ff 00 00 ff 00 53 00 00 00 00 00 00 ff 00 53 00 ff 00 53 00 ff 53 ff ff 47 00 00 00 00 00 53 00 00 48 47 00 00 00 00 00 00 00 00 00 00 ff 47 00 ff 47 00 ff f0 ff 47 00 ff ff ff 00 ff 47 00 ff 47 ff 00 ff ff 00 44 00 47 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 53 47 00 47 00 ff 00 00 ff ff 00 48 ff 00 00 00 ff ff f0 ff ff 53 00 00 00 48 ff ff 00 47 00 00 ff ff 47 ff ff ff ff 01 00 ff 00 00 ff 00 00 00 ff 00 00 ff ff ff ff 47 00 00 00 00 ff ff ff 00 00 00 47 53 00 ff ff ff 48 f0 ff 00 00 ff ff 00 53 00 00 00 47 53 ff ff ff 00 00 00 00 ff ff 00 ff 48 ff 00 00 00 ff 00 00 00 ff ff f0 ff ff ff 47 00 00 00 ff 00 00 00 ff 53 00 00 ff 00 ff ff 00 00 00 ff 00 00 00 ff 47 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 53 ff 00 ff 00 ff 00 00 ff ff ff 53 ff ff 53 00 00 ff 00 00 48 00 ff 53 ff 00 48 ff ff de 00 00 ff 48 00 ff ff f0 00 00 00 00 ff 47 f0 00 00 ff 00 00 00 ff f0 53 ff ff f0 00 00 ff 47 00 00 00 53 53 00 47 00 00 53 00 ff 53 00 ff 00 ff ff ff ff ff ff 00 48 00 ff ff 00 00 ff 00 00 ff ff 00 00 00 ff 00 00 ff ff 47 00 00 00 ff ff f0 00 ff 00 00 00 ff 47 47 00 ff ff ff 00 53 00 00 00 00 53 00 00 00 ff ff 00 00 ff ff 47 00 ff 48 ff ff f0 ff 00 00 00 00 00 00 00 00 00 00 ff 00 ff ff 47 00 00 00 00 00 00 47 ff 00 00 00 53 ff ff 47 53 00 00 48 f0 ff 00 00 ff f0 ff 00 ff 00 00 00 ff 00 47 ff f0 ff ff 00 00 00 00 00 00 00 53 00 ff ff 00 53 00 00 ff ff 00 00 00 00 00 00 ff ff 53 00 ff ff 00 00 00 53 ff ff 00 ff 00 53 53 00 ff 48 00 ff ff f0 ff 47 48 ff 00 00 00 00 53 00 ff ff 00 00 00 ff ff ff 00 44 53 00 00 00 00 ff 00 00 00 00 00 ff ff 47 00 ff 00 00 00 47 00 00 ff 00 00 ff ff f0 00 ff 00 00 00 00 00 00 00 00 00 ff 53 00 53 00 00 00 00 00 47 00 47 ff ff 47 00 00 00 48 00 00 ff 53 ff ff f0 ff 48 ff 00 ff ff 00 ff f0 00 00 ff ff 00 00 47 ff 00 53 00 ff 00 00 00 00 00 00 ff ff ff ff 00 ff 00 00 00 ff f0 47 00 00 ff f0 00 00 ff 53 ff ff 00 47 00 48 53 ff ff ff 47 ff f0 00 ff ff 00 00 48 ff ff 48 ff ff 53 00 ff 00 00 ff ff ff 53
*/
