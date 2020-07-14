.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xee07, %rsi
lea addresses_normal_ht+0xe107, %rdi
cmp $968, %rbp
mov $108, %rcx
rep movsl
nop
nop
nop
sub $2620, %r15
lea addresses_UC_ht+0xc244, %rsi
lea addresses_WT_ht+0x967, %rdi
cmp $33109, %r15
mov $2, %rcx
rep movsq
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x12777, %r9
clflush (%r9)
inc %r8
mov (%r9), %r15
nop
cmp $58368, %rbp
lea addresses_WT_ht+0x119d7, %rbp
nop
add %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x14d07, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $52429, %r9

// REPMOV
lea addresses_UC+0x8f07, %rsi
lea addresses_WT+0x14597, %rdi
sub $25329, %rbx
mov $45, %rcx
rep movsb
nop
add $10019, %rsi

// Store
lea addresses_A+0x5a05, %rsi
clflush (%rsi)
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
inc %r13

// REPMOV
lea addresses_RW+0x14707, %rsi
lea addresses_WC+0x1ff07, %rdi
nop
nop
nop
nop
xor $51357, %rbx
mov $126, %rcx
rep movsw
nop
cmp $13453, %rsi

// Faulty Load
lea addresses_A+0x17907, %r13
nop
nop
nop
xor $54593, %rbx
movb (%r13), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'35': 298}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
