.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x197e9, %r9
nop
nop
add %r11, %r11
mov (%r9), %ebp
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1cee9, %r15
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0xc6e9, %r12
nop
nop
nop
nop
xor $41435, %rcx
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
dec %r12
lea addresses_D_ht+0x1c6e9, %rdi
nop
nop
and $58153, %r15
mov (%rdi), %ebp
nop
add %r9, %r9
lea addresses_D_ht+0x73e9, %rsi
lea addresses_A_ht+0x1a3e9, %rdi
nop
and %rbp, %rbp
mov $48, %rcx
rep movsq
nop
nop
nop
nop
nop
and $6623, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx

// Load
lea addresses_D+0x1aee9, %rdi
nop
nop
nop
cmp %rcx, %rcx
movb (%rdi), %r8b
and %rdx, %rdx

// Store
lea addresses_WC+0xcd29, %r14
cmp $9918, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
dec %r14

// Store
mov $0xf29, %r12
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
cmp $7578, %r12

// Store
lea addresses_RW+0x8a9, %r14
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r14)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0x1f869, %r14
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r14)
and %r10, %r10

// Store
lea addresses_normal+0xd6e9, %rdx
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
sub $56747, %r12

// Store
lea addresses_WT+0x1fbe9, %r10
nop
nop
nop
nop
nop
sub $50913, %r12
movl $0x51525354, (%r10)
nop
nop
nop
cmp $15892, %r12

// Store
lea addresses_UC+0x1d2f1, %rdi
nop
add $58691, %rcx
movl $0x51525354, (%rdi)
nop
nop
and %r10, %r10

// Store
lea addresses_PSE+0x6409, %rcx
nop
nop
nop
nop
xor $31636, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_D+0x1aee9, %rdx
nop
nop
nop
nop
sub %rdi, %rdi
movaps (%rdx), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'48': 6109, '46': 15720}
48 46 46 48 46 46 46 46 48 46 46 46 46 48 46 46 46 48 46 46 48 46 46 48 48 46 48 48 46 46 46 46 46 48 46 46 46 48 48 48 46 46 46 46 48 46 48 46 46 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 48 48 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 48 48 48 48 46 46 48 46 46 46 46 46 46 46 46 46 46 46 48 48 46 48 46 46 48 46 48 46 48 46 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 48 46 46 48 46 48 46 48 48 46 46 46 46 46 46 46 48 46 48 48 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 48 48 46 46 46 46 46 48 46 48 46 46 46 46 46 46 46 48 46 48 46 48 46 46 48 48 46 48 46 46 46 46 46 48 46 48 46 46 48 46 46 48 46 46 46 48 46 46 46 48 48 46 46 46 48 46 46 46 46 46 46 46 46 46 48 48 46 46 46 48 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 48 46 48 46 46 48 46 46 48 46 46 46 46 46 48 46 48 46 46 48 46 46 46 46 46 46 46 48 48 48 48 46 46 46 48 46 48 46 46 46 46 48 48 48 46 46 46 46 48 46 46 46 46 46 46 46 48 46 46 48 46 46 46 46 46 48 48 46 46 46 46 48 46 48 46 48 46 46 46 46 46 48 48 46 46 48 48 46 48 46 48 48 46 48 46 48 46 48 48 46 46 46 46 48 46 46 46 46 46 46 46 46 48 46 46 46 46 46 48 46 46 46 46 46 48 46 46 48 46 46 46 46 46 48 46 46 46 48 48 48 46 46 48 48 46 46 46 46 46 46 48 48 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 48 46 46 46 46 48 46 48 48 46 46 48 46 46 48 46 48 46 46 48 46 48 46 48 46 46 46 46 46 46 48 46 48 46 46 48 46 46 46 46 48 46 46 46 46 46 46 46 46 46 48 48 48 46 46 48 46 46 48 46 46 46 46 46 46 46 48 46 46 48 46 46 48 48 46 46 48 48 46 46 48 46 46 48 46 46 46 46 46 46 46 48 46 46 46 48 46 46 48 48 48 48 46 46 46 46 48 46 48 46 46 48 46 46 46 48 48 46 46 46 46 46 46 48 48 48 48 46 46 46 48 46 46 46 46 46 48 46 46 48 48 46 46 48 46 46 48 46 46 48 46 46 46 46 46 48 46 46 48 46 46 48 46 48 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 48 46 46 46 46 46 46 48 46 46 48 46 46 46 46 46 46 46 46 46 48 46 48 48 46 46 46 46 48 46 46 46 46 48 48 46 46 46 46 48 46 46 46 46 46 46 48 46 46 46 48 46 46 46 46 46 46 46 46 46 46 48 48 46 46 48 46 46 48 46 46 46 46 46 46 48 48 46 46 46 48 48 46 48 48 46 46 48 46 46 46 46 46 46 48 48 46 48 46 48 46 46 46 46 48 46 46 46 46 46 46 46 48 46 46 48 46 48 46 46 46 46 46 46 48 46 48 48 46 46 46 48 46 46 46 46 46 46 48 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 48 48 46 48 48 48 46 46 46 48 46 46 46 46 48 46 46 46 46 46 46 46 46 48 48 46 46 48 46 46 48 48 46 48 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 48 48 46 46 46 48 46 46 48 46 46 48 46 46 46 48 46 46 48 46 46 46 46 48 46 46 46 48 48 46 48 46 48 46 48 46 46 46 46 48 48 46 46 46 46 46 46 46 46 46 46 46 48 48 46 46 46 48 46 48 46 46 46 48 46 48 46 46 46 46 46 46 48 46 46 48 46 46 46 48 46 46 46 48 48 46 46 46 46 46 48 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 46 48 46 48 46 46 48 46 46 48 46 46 46 48 46 48 46 46 46 46 46 46 48 48 46 46 46 48 46 46 46 46 48 46 48 46 46 48 46 48 48 46 46 46 46
*/
