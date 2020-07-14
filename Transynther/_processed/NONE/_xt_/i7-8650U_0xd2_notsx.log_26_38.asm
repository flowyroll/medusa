.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rsi
lea addresses_normal_ht+0x65bb, %r10
xor %rsi, %rsi
movl $0x61626364, (%r10)
nop
nop
add %rbp, %rbp
pop %rsi
pop %rbp
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

// Load
lea addresses_UC+0xe4d7, %rax
nop
nop
and %r13, %r13
mov (%rax), %r11w
dec %r11

// Store
mov $0x8d7, %r8
nop
cmp %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x32b7, %r8
nop
nop
nop
nop
nop
sub $43542, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
nop
cmp $32493, %r11

// Store
lea addresses_normal+0xcb1f, %r15
nop
nop
add %rax, %rax
movb $0x51, (%r15)
nop
inc %r8

// Store
lea addresses_A+0x16357, %r13
nop
nop
nop
nop
nop
and $5933, %r15
movl $0x51525354, (%r13)
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_D+0x134d7, %r9
nop
nop
nop
xor $18026, %r15
mov (%r9), %r11w
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
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
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'36': 26}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
