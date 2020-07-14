.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdx
lea addresses_normal_ht+0x1de3a, %r8
nop
nop
nop
sub $37503, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0xaa2a, %rbx
nop
nop
sub %r14, %r14
movb (%rbx), %dl
nop
nop
sub $43731, %r10
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0x437a, %rsi
sub %rax, %rax
movb $0x51, (%rsi)
nop
xor $14814, %rax

// Store
lea addresses_UC+0x16602, %r11
clflush (%r11)
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x1e37a, %rbp
nop
nop
nop
nop
sub $18289, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movaps %xmm5, (%rbp)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_UC+0xe8fa, %rcx
nop
nop
inc %rsi
movl $0x51525354, (%rcx)
and %rbp, %rbp

// Load
lea addresses_RW+0x857a, %r11
nop
nop
nop
nop
cmp $27894, %rsi
mov (%r11), %r13d
nop
add %rbp, %rbp

// Store
lea addresses_A+0x1b77a, %rcx
clflush (%rcx)
cmp %r8, %r8
movb $0x51, (%rcx)
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x6b7a, %rbp
nop
nop
nop
nop
nop
sub $6159, %rax
movb $0x51, (%rbp)
nop
nop
cmp $50513, %rsi

// Store
lea addresses_PSE+0x99fa, %rax
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rax)
nop
add %r8, %r8

// Faulty Load
lea addresses_PSE+0x1e37a, %rax
nop
nop
nop
cmp %rbp, %rbp
mov (%rax), %r13d
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'58': 5}
58 58 58 58 58
*/
