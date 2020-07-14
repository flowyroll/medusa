.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15f04, %rsi
nop
nop
nop
nop
nop
and $39467, %r10
movw $0x6162, (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x13f74, %r11
nop
nop
xor $59186, %rdx
mov (%r11), %r10d
nop
inc %rdx
lea addresses_normal_ht+0x5a4c, %r10
nop
nop
inc %r8
movl $0x61626364, (%r10)
xor %rdx, %rdx
lea addresses_WT_ht+0x1c5cc, %rsi
lea addresses_WC_ht+0x2f4c, %rdi
nop
nop
nop
nop
nop
xor $42496, %r12
mov $126, %rcx
rep movsw
nop
nop
nop
nop
add $13597, %rdx
lea addresses_WT_ht+0x12e00, %r12
nop
nop
cmp %r11, %r11
mov (%r12), %r8d
nop
nop
nop
and $1726, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_WC+0x14c, %r11
nop
nop
add $24965, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r11)
nop
dec %rbp

// Store
lea addresses_A+0x27cc, %r8
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r8)
xor %r9, %r9

// Store
lea addresses_D+0x13cc, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm0
movaps %xmm0, (%rdx)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0xe7cc, %rdx
nop
nop
add $28496, %r15
movl $0x51525354, (%rdx)
nop
dec %r8

// Faulty Load
lea addresses_RW+0x18fcc, %r15
nop
sub %rbp, %rbp
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'32': 448}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
