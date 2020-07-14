.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6a6f, %r15
nop
cmp $52900, %rdx
movl $0x61626364, (%r15)
nop
nop
nop
xor $24493, %r9
lea addresses_UC_ht+0xc23e, %rcx
nop
xor %r8, %r8
movb $0x61, (%rcx)
nop
nop
nop
cmp $10585, %r8
lea addresses_WT_ht+0x757f, %rcx
nop
nop
nop
add %r8, %r8
movw $0x6162, (%rcx)
nop
add $57199, %rsi
lea addresses_UC_ht+0x3d9, %rsi
lea addresses_WC_ht+0xde7f, %rdi
nop
nop
cmp %r9, %r9
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x367f, %r8
nop
inc %r10
mov (%r8), %r9
nop
and %r9, %r9
lea addresses_WC_ht+0x683f, %rsi
lea addresses_WC_ht+0x170ff, %rdi
nop
nop
nop
nop
and $44443, %r15
mov $40, %rcx
rep movsl
add %r10, %r10
lea addresses_UC_ht+0x1267, %rdx
xor %r15, %r15
mov (%rdx), %r9w
nop
nop
nop
cmp $58843, %r10
lea addresses_WC_ht+0x683f, %r10
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x18bf, %rcx
nop
nop
nop
nop
add %rsi, %rsi
movb (%rcx), %dl
nop
nop
nop
xor $30085, %r8
lea addresses_UC_ht+0x293f, %rcx
nop
and %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
cmp $26991, %rdi
lea addresses_normal_ht+0xefd3, %rsi
lea addresses_normal_ht+0xf167, %rdi
clflush (%rsi)
nop
nop
nop
xor $385, %rdx
mov $43, %rcx
rep movsw
nop
add $10751, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rdx

// Store
lea addresses_A+0x6a7f, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
nop
nop
nop
sub $585, %r13

// Store
lea addresses_A+0x16093, %rbp
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_D+0x1a67f, %rdx
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_UC+0x8e7f, %r15
nop
nop
and %rbp, %rbp
mov (%r15), %r13d
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'53': 263, '47': 1656, '3c': 1, 'f0': 21, '01': 120, '48': 353, 'ff': 8847, 'de': 74, '68': 2, '44': 73, '00': 6333, '3e': 1, '10': 4081, 'e0': 4}
ff 00 00 ff 47 ff 10 ff 10 00 ff 47 00 47 00 ff ff 10 47 ff 10 ff 44 00 00 00 ff 10 ff 00 00 53 ff ff ff ff 47 ff 10 ff 47 47 00 00 ff 00 00 00 ff 10 00 47 ff 53 ff 47 ff 10 ff ff 10 ff 10 00 00 ff 00 00 47 00 ff 00 ff 10 ff ff 10 00 00 00 ff 00 ff 10 ff 00 00 ff 00 ff 47 ff 00 ff 00 ff 10 ff ff 10 00 ff 00 ff 10 00 00 ff 10 00 10 00 ff 10 ff 10 47 00 00 ff ff 10 00 ff 10 ff 10 ff 47 ff 00 ff 10 ff 10 ff 10 ff 10 00 53 00 00 00 ff 10 47 ff 00 ff 10 ff 00 00 ff 10 10 ff 00 47 00 ff 10 ff 10 47 ff 10 00 00 ff 00 47 ff 10 ff 10 ff 10 ff 10 ff 00 ff ff 47 47 ff ff ff 00 ff 10 ff ff 10 47 ff 10 10 ff ff 00 53 53 ff ff 00 47 ff 10 ff 10 00 00 47 ff 10 ff ff 10 ff 10 00 ff 10 47 53 ff 10 00 00 00 00 ff 00 ff 10 ff 00 ff 10 00 00 00 00 ff 00 00 00 ff 00 ff 47 00 ff 00 00 ff 10 00 00 ff 10 ff 47 ff 10 ff 00 ff 10 ff 10 ff 00 ff 47 ff 10 ff 10 00 00 ff 10 ff ff 10 00 ff 10 ff 10 00 00 00 00 00 00 ff ff 10 ff 47 ff f0 ff 10 ff 47 ff 10 ff ff 00 ff ff ff 10 47 ff 00 47 ff 10 00 00 ff 00 47 00 ff ff 10 ff ff 10 00 00 00 ff 10 ff 10 ff ff 10 ff ff 00 00 00 ff 10 47 ff 10 47 ff 47 44 ff 10 00 ff 10 ff 00 ff ff 10 ff ff 10 00 00 ff 10 47 ff 10 47 ff 10 00 ff 10 53 ff 10 48 ff ff ff 10 ff ff ff 47 ff ff 00 ff 00 ff ff 01 00 ff 00 ff 01 ff ff ff 00 ff 01 ff 01 ff 01 00 00 ff 47 00 00 00 01 ff 10 ff 10 00 ff 00 10 ff ff ff 10 47 ff 00 ff 10 ff 47 00 47 ff ff 10 ff 10 ff ff 10 00 ff 00 53 53 ff 00 00 00 00 ff 00 00 ff f0 ff ff ff 10 ff 10 00 00 ff 10 00 00 47 47 00 00 ff 10 ff 10 ff 10 53 ff 10 ff 10 53 ff 00 ff 10 00 00 ff 00 53 ff 10 ff 10 ff 00 ff 10 ff 47 ff 10 ff ff ff 10 ff 47 ff 00 00 ff 10 47 ff ff ff 47 ff 10 ff 10 ff 00 00 00 ff 47 ff 00 53 ff 10 47 ff 47 00 ff 10 ff 10 00 00 00 ff 10 ff 48 ff 10 00 ff ff 47 47 ff ff ff 00 ff 10 ff 10 ff 10 ff ff 10 00 ff 00 00 ff 00 00 47 ff 00 ff 44 00 47 ff 10 00 ff 10 00 ff 00 00 ff 10 47 ff 00 00 00 ff 10 00 ff 10 ff 10 00 ff 10 ff 00 ff 47 47 ff 10 00 00 48 00 ff 10 ff 00 ff 47 ff 00 47 00 ff ff 00 ff 10 ff 10 47 ff 00 ff 10 00 00 ff ff 00 00 ff 47 ff 10 ff 10 00 ff ff ff 47 00 ff 00 00 ff 00 47 00 ff 00 ff 00 00 ff ff 00 47 ff 10 ff 10 ff 10 ff 10 00 00 00 00 ff 47 00 ff 10 ff 10 ff ff 00 00 ff 10 00 ff 00 00 ff 10 ff 00 ff 10 ff 10 00 00 ff ff 10 47 00 ff 10 00 00 ff 47 ff 10 47 ff 10 00 ff 10 ff 10 ff 00 47 ff ff 10 00 48 ff 48 44 00 00 00 00 ff 47 00 ff 00 00 47 00 ff ff 10 ff 10 00 10 00 00 53 00 ff 10 00 00 00 ff 10 47 00 ff 10 ff 10 ff 10 00 ff 47 00 00 00 ff 10 00 ff 10 ff 00 ff 47 ff ff 10 44 ff ff ff 10 00 00 00 00 00 ff 00 00 ff 00 00 ff 10 ff 10 00 ff 00 ff 00 00 ff ff 10 ff 10 ff 00 47 00 ff 00 47 53 53 ff ff 00 ff 10 ff 10 ff 00 ff 10 ff 10 00 ff 10 48 ff 10 00 47 ff 47 ff 00 ff 10 ff 00 00 00 00 ff 10 00 ff ff ff 10 00 ff 10 ff 10 ff 00 10 00 ff 10 00 00 47 00 ff 10 ff 47 ff 10 ff 00 ff 10 ff 00 ff 10 ff 10 00 00 00 ff 10 47 00 ff ff 10 ff 00 ff 47 ff 47 00 ff 00 ff 00 00 ff 10 ff 10 ff 10 00 ff 10 ff 10 ff ff 00 00 de 47 48 ff 10 47 00 47 10 ff 47 00 ff ff 00 ff 10 00 ff 10 ff ff 10 00 ff 10 00 ff 10
*/
