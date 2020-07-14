.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2a1, %r12
nop
nop
nop
nop
nop
add $6548, %rsi
movb (%r12), %r11b
nop
nop
nop
nop
cmp $32583, %rbp
lea addresses_A_ht+0x16a81, %rsi
lea addresses_normal_ht+0x382f, %rdi
nop
nop
nop
add %r15, %r15
mov $126, %rcx
rep movsq
nop
xor $257, %rcx
lea addresses_WC_ht+0x186a1, %r15
nop
nop
and $46765, %r12
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
inc %rcx
lea addresses_normal_ht+0x100a1, %rdi
nop
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x178a1, %rcx
nop
nop
nop
nop
nop
xor $62918, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
and $38420, %r11
lea addresses_normal_ht+0x1e579, %r11
cmp %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r11)
nop
and $54984, %rcx
lea addresses_WC_ht+0x3c61, %rsi
lea addresses_UC_ht+0xaba8, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $125, %rcx
rep movsq
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x17b9, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
add $58480, %rsi

// Store
lea addresses_US+0x1fa11, %r9
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
nop
and $63270, %rbp

// Store
lea addresses_WC+0x62a1, %rdi
clflush (%rdi)
nop
nop
add %r14, %r14
movw $0x5152, (%rdi)
nop
dec %rbp

// Load
mov $0x5a1, %rbp
nop
nop
nop
and %r14, %r14
mov (%rbp), %si
nop
dec %r13

// Store
mov $0xa75, %rbp
nop
nop
cmp $62571, %r13
movb $0x51, (%rbp)
nop
nop
nop
xor $56064, %r14

// Store
mov $0x91, %rdi
sub %r9, %r9
movb $0x51, (%rdi)
add %rsi, %rsi

// Store
lea addresses_US+0xc1bd, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $756, %rbp
movw $0x5152, (%rsi)
nop
nop
cmp $39201, %rbp

// Store
lea addresses_WC+0x1b9a1, %rdi
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
and $61650, %rcx

// Faulty Load
lea addresses_WC+0x62a1, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rbp), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'52': 28}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
