.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13cb3, %rsi
lea addresses_normal_ht+0x13cb3, %rdi
cmp $4920, %r14
mov $91, %rcx
rep movsq
nop
nop
add $31489, %r8
lea addresses_A_ht+0x175c3, %rax
nop
nop
nop
xor %rbx, %rbx
mov (%rax), %cx
nop
nop
nop
nop
nop
and $55981, %rdi
lea addresses_A_ht+0x114b3, %rsi
lea addresses_WT_ht+0x17629, %rdi
sub %r9, %r9
mov $95, %rcx
rep movsw
nop
nop
nop
inc %r8
lea addresses_D_ht+0x1d13b, %r9
nop
xor $43288, %rax
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and $40399, %r8
lea addresses_D_ht+0x7173, %r14
dec %rsi
mov (%r14), %r8w
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Load
lea addresses_UC+0x164b3, %r11
and $37558, %rcx
mov (%r11), %r13d
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x10a73, %r8
add %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r8)
cmp %r15, %r15

// Faulty Load
lea addresses_UC+0x164b3, %rcx
nop
nop
nop
nop
and %rbp, %rbp
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'e0': 1, '3c': 49, '45': 1763, '00': 130, '49': 240, '66': 7243, '80': 1, 'ff': 240, '67': 12162}
66 66 45 66 66 66 66 66 66 66 66 66 66 45 45 66 49 66 45 66 45 66 66 66 66 66 45 66 66 49 66 66 ff 66 66 45 66 66 66 66 66 66 66 66 66 49 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 45 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 49 66 66 66 45 66 66 49 66 66 66 66 45 66 66 66 66 45 66 66 66 45 66 66 45 66 66 66 66 ff 66 66 66 66 49 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 45 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 ff 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 45 66 45 66 66 45 66 66 66 66 66 45 45 66 66 66 66 66 66 49 00 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 3c 66 66 66 45 66 66 49 45 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 66 66 45 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 45 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 45 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 45 66 ff 66 66 66 66 45 66 66 49 66 45 66 66 66 66 66 66 66 66 66 49 66 66 66 66 66 66 ff 49 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 45 45 66 66 66 ff 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 49 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 49 66 66 66 66 45 ff 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 49 66 66 45 66 66 45 66 66 66 66 66 66 66 45 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 ff 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 45 66 66 66 49 66 66 66 45 45 66 66 66 66 45 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 ff 66 66 66 66 66 ff 66 66 66 66 66 ff 66 66 66 66 66 66 66 66 66 66 66 66 66 66 49 66 45 66 66 66 66 66 45 66 66 ff 66 66 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 66 00 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 45 ff 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 45 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 45 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66 66
*/
