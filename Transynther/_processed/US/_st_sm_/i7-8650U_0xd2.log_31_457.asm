.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5c97, %rsi
lea addresses_WT_ht+0x12e57, %rdi
sub %r9, %r9
mov $88, %rcx
rep movsl
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x12177, %r8
nop
cmp %rcx, %rcx
mov (%r8), %rsi
nop
nop
nop
nop
and $25249, %rcx
lea addresses_WT_ht+0x6cfe, %rsi
lea addresses_UC_ht+0xdff7, %rdi
nop
nop
add $53262, %r11
mov $50, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x19f97, %r9
nop
nop
nop
cmp %rbp, %rbp
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x8817, %rsi
lea addresses_WC_ht+0x18897, %rdi
dec %r9
mov $44, %rcx
rep movsq
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x497, %rdx
clflush (%rdx)
cmp %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
inc %rdi

// Store
lea addresses_US+0x1497, %r10
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
and $26031, %rbx

// Store
mov $0x517, %rbp
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
dec %rbx

// Load
lea addresses_WC+0x2c97, %r11
clflush (%r11)
inc %r10
movb (%r11), %bl
nop
inc %rdi

// Store
lea addresses_normal+0x7697, %r10
nop
and %r11, %r11
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add $36007, %rsi

// Faulty Load
lea addresses_US+0x1497, %rdx
nop
inc %rbx
mov (%rdx), %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'54': 31}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
