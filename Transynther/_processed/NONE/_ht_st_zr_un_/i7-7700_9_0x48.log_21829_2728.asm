.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe2c0, %r8
nop
nop
nop
nop
sub $62083, %r15
mov (%r8), %r14
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1b240, %rsi
lea addresses_D_ht+0x1cd48, %rdi
nop
nop
nop
xor %r15, %r15
mov $113, %rcx
rep movsb
nop
dec %r8
lea addresses_A_ht+0x13b40, %r8
nop
nop
nop
nop
nop
dec %rax
movb (%r8), %r15b
nop
nop
nop
nop
nop
cmp $9099, %rcx
lea addresses_UC_ht+0x1ef40, %r15
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r15)
xor %r8, %r8
lea addresses_normal_ht+0x1dd44, %rsi
lea addresses_UC_ht+0x1b046, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r9, %r9
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x192c0, %rsi
lea addresses_UC_ht+0x1b070, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $107, %rcx
rep movsb
nop
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
mov $0xec0, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rdi)
nop
dec %r8

// Store
lea addresses_WC+0x1cac0, %rdx
clflush (%rdx)
nop
cmp $54033, %rbp
movw $0x5152, (%rdx)
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WC+0x80d2, %r15
nop
nop
nop
nop
sub $7897, %rbp
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
inc %rbp

// Store
lea addresses_WC+0x19500, %r14
sub $62176, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r14)
nop
dec %r13

// Faulty Load
lea addresses_UC+0xfec0, %r15
cmp %r14, %r14
vmovups (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'83': 1, '3b': 1, '03': 1, 'e1': 1, '44': 18671, '21': 1, '72': 1, '4a': 1, '45': 16, '1e': 1, '00': 3131, 'bb': 1, 'e6': 1, 'e3': 1}
44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 00 00 44 00 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 00 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00
*/
