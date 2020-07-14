.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbx
lea addresses_A_ht+0x1164f, %rax
nop
nop
nop
nop
nop
and $54184, %r11
mov (%rax), %r10d
nop
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x10d8f, %rbx
cmp $48142, %r11
mov (%rbx), %r12w
nop
xor %r14, %r14
lea addresses_D_ht+0x1930f, %rax
nop
nop
nop
nop
nop
cmp $34201, %r13
movb $0x61, (%rax)
nop
nop
nop
cmp $58782, %r14
lea addresses_UC_ht+0xc5cf, %rax
nop
nop
xor %r11, %r11
movb $0x61, (%rax)
nop
nop
nop
add $52820, %r11
lea addresses_A_ht+0xe62f, %r10
nop
nop
nop
nop
nop
sub $22055, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
and $58181, %r12
lea addresses_WT_ht+0x1b66f, %r10
nop
nop
nop
nop
sub $20816, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x12f8f, %r13
nop
nop
sub $38274, %rax
movw $0x6162, (%r13)
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x1689f, %r13
add %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
nop
and %rax, %rax
pop %rbx
pop %rax
pop %r14
pop %r13
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
push %rax
push %rbx

// Store
lea addresses_US+0x18a2f, %rax
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
cmp $3422, %r9

// Store
lea addresses_RW+0x7715, %r9
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, (%r9)
sub $57740, %r13

// Store
lea addresses_D+0x1618f, %rbx
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add $9262, %r11

// Faulty Load
lea addresses_RW+0x13f8f, %rbx
nop
nop
nop
add %r8, %r8
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'32': 143}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
