.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x52f9, %rsi
lea addresses_normal_ht+0x11cd1, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $118, %rcx
rep movsq
nop
add $31968, %rsi
lea addresses_A_ht+0xf079, %rsi
lea addresses_D_ht+0x182f9, %rdi
nop
nop
nop
nop
nop
add $1783, %rbp
mov $78, %rcx
rep movsw
nop
and $63444, %rbp
lea addresses_normal_ht+0xf2f9, %r12
nop
nop
nop
inc %rbx
mov (%r12), %rcx
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x116f9, %rbp
and %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx

// Store
lea addresses_D+0x1aa91, %r8
nop
nop
nop
dec %rbp
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_WT+0x6121, %r8
and %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movaps %xmm4, (%r8)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_RW+0xb669, %r12
nop
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_normal+0xaaf9, %r14
nop
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r14)
nop
nop
nop
xor $56720, %r8

// Faulty Load
lea addresses_normal+0xaaf9, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%r13), %r8b
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'51': 89}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
