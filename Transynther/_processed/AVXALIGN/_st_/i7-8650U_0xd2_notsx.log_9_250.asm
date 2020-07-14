.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11674, %rsi
lea addresses_WT_ht+0x1b70, %rdi
nop
nop
sub %r8, %r8
mov $74, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x3c74, %r14
cmp %r13, %r13
movups (%r14), %xmm1
vpextrq $1, %xmm1, %r8
nop
inc %r14
lea addresses_normal_ht+0x8b38, %rsi
lea addresses_WT_ht+0xfe74, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $91, %rcx
rep movsl
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xbe94, %rdi
nop
and %r13, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $58483, %r13
lea addresses_A_ht+0x1cf7c, %r14
nop
nop
xor $26051, %r8
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rcx
nop
dec %rsi
lea addresses_normal_ht+0x17ef8, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r13)
lfence
lea addresses_A_ht+0x9750, %r8
nop
nop
nop
nop
inc %rsi
mov (%r8), %di
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xb4a4, %rsi
lea addresses_UC_ht+0x15314, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $105, %rcx
rep movsw
nop
nop
nop
cmp $6558, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xc74, %rsi
lea addresses_UC+0x16274, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $87, %rcx
rep movsl

// Exception!!!
mov (0), %rdi
nop
nop
nop
dec %rax

// Load
lea addresses_UC+0x16bb4, %rdi
clflush (%rdi)
nop
xor %r9, %r9
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
add $62497, %r9

// Store
lea addresses_US+0x14014, %rax
nop
nop
nop
and $43672, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
nop
sub $56603, %rdi

// Load
lea addresses_UC+0x8e74, %rsi
nop
nop
nop
nop
inc %rdi
movb (%rsi), %r9b
nop
nop
nop
nop
and $35972, %r9

// Store
lea addresses_WC+0xa2a4, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%rcx)
nop
and $16654, %rbp

// Faulty Load
lea addresses_PSE+0xc74, %rcx
cmp $33241, %r11
mov (%rcx), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'33': 9}
33 33 33 33 33 33 33 33 33
*/
