.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2c33, %r10
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x6162, (%r10)
sub $16926, %r14
lea addresses_normal_ht+0x10f77, %r10
nop
nop
nop
and %rdi, %rdi
mov (%r10), %r13w
nop
lfence
lea addresses_D_ht+0x3457, %r11
nop
nop
nop
sub $31721, %r14
movb (%r11), %r12b
nop
nop
nop
nop
cmp $301, %r13
lea addresses_WC_ht+0x1af57, %rsi
lea addresses_WC_ht+0x167d7, %rdi
clflush (%rdi)
nop
nop
cmp $5624, %r12
mov $88, %rcx
rep movsb
nop
nop
sub $57304, %r13
lea addresses_A_ht+0x9c17, %r12
nop
nop
and %r10, %r10
movb $0x61, (%r12)
nop
add %r11, %r11
lea addresses_WC_ht+0x191eb, %rdi
clflush (%rdi)
nop
nop
and $27533, %r12
mov (%rdi), %rcx
nop
xor %r13, %r13
lea addresses_normal_ht+0x11937, %rsi
lea addresses_A_ht+0x8ed, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $87, %rcx
rep movsq
nop
nop
nop
inc %r13
lea addresses_normal_ht+0xc57, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rcx), %r12w
add $53614, %rdi
lea addresses_WC_ht+0x633e, %r13
add $12132, %r11
mov (%r13), %rsi
nop
nop
xor $25574, %r14
lea addresses_normal_ht+0xa4d7, %r10
nop
sub %rcx, %rcx
mov (%r10), %di
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x157f7, %rdi
nop
nop
cmp $219, %rcx
movb $0x61, (%rdi)
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x15657, %rsi
lea addresses_WC+0x34b7, %rdi
nop
nop
nop
cmp $26721, %r15
mov $46, %rcx
rep movsq
nop
nop
nop
nop
xor $42950, %r10

// Faulty Load
lea addresses_normal+0xc457, %r11
xor %rcx, %rcx
mov (%r11), %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'34': 9}
34 34 34 34 34 34 34 34 34
*/
