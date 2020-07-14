.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a23e, %rsi
lea addresses_WC_ht+0x1033e, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x89be, %r11
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r11
movaps %xmm4, (%r11)
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Load
lea addresses_US+0x1a73e, %r13
nop
nop
nop
inc %r8
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
inc %r15

// Load
lea addresses_normal+0x1b436, %rbx
nop
nop
nop
nop
nop
xor %r12, %r12
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
sub $51165, %rdi

// Store
lea addresses_D+0x3ebe, %r13
nop
nop
nop
sub $56782, %rbx
movb $0x51, (%r13)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_D+0xfac1, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rbp)
inc %rbx

// Store
lea addresses_UC+0x154be, %r8
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r8)
nop
nop
nop
and $18429, %rbp

// Store
mov $0x43e, %r12
add $24188, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r12)
nop
inc %r15

// Faulty Load
lea addresses_UC+0x154be, %r13
nop
nop
nop
nop
dec %r12
movb (%r13), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 7, 'same': False}}
{'54': 55}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
