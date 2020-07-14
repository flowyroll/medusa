.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x1cc02, %rdi
nop
nop
nop
nop
cmp $48464, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $61856, %rdi

// Load
lea addresses_normal+0x18882, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rsi), %ecx
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x18882, %r9
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
dec %rsi

// Store
lea addresses_UC+0x163c2, %r11
xor $15590, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_normal+0x18882, %r9
nop
nop
and $40347, %rdi
movb (%r9), %r13b
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 98}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
