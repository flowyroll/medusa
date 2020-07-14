.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15ed9, %rsi
lea addresses_WT_ht+0x8cd9, %rdi
nop
nop
nop
nop
dec %r9
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x175da, %r15
nop
nop
nop
nop
nop
add $19587, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
add $15768, %r11
lea addresses_WT_ht+0x76c1, %rsi
lea addresses_WT_ht+0x4d0b, %rdi
clflush (%rdi)
nop
nop
nop
sub %r13, %r13
mov $56, %rcx
rep movsl
nop
sub $32658, %r12
lea addresses_normal_ht+0x10259, %r13
clflush (%r13)
sub %rdi, %rdi
movb $0x61, (%r13)
nop
nop
and $60072, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x195d9, %r15
nop
nop
inc %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r15)
add $24718, %r9

// Store
lea addresses_WC+0xcba5, %rdx
nop
nop
nop
nop
nop
and $38240, %rdi
movw $0x5152, (%rdx)
nop
nop
and %r11, %r11

// Store
lea addresses_US+0xb9f5, %rbx
clflush (%rbx)
dec %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0x14699, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%rdi)
nop
nop
dec %rdx

// Store
lea addresses_normal+0xc6f, %rdi
nop
nop
add $29819, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
add $60755, %rbx

// Store
lea addresses_RW+0x1d6ef, %rdx
nop
nop
nop
add $39955, %rbx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_A+0xafa9, %r9
nop
nop
nop
nop
nop
and $40054, %r11
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
and %r9, %r9

// Store
mov $0x49ddb00000002d9, %rbp
nop
nop
nop
nop
inc %rdi
movb $0x51, (%rbp)
nop
nop
cmp $11029, %rdx

// Faulty Load
mov $0x7ff83b0000000ed9, %rbx
nop
nop
nop
dec %rdx
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 1}
00
*/
