.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x203c, %rsi
lea addresses_D_ht+0x1cdc4, %rdi
nop
add %r12, %r12
mov $70, %rcx
rep movsl
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x1a074, %rsi
nop
nop
nop
nop
nop
and $46706, %r8
mov (%rsi), %ecx
nop
nop
nop
nop
nop
cmp $12961, %rbx
lea addresses_UC_ht+0xd1dc, %rsi
lea addresses_normal_ht+0x9dbc, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
add $14412, %r13
lea addresses_D_ht+0x193ec, %rsi
lea addresses_WT_ht+0x122bc, %rdi
clflush (%rsi)
cmp %r8, %r8
mov $31, %rcx
rep movsq
nop
nop
and %r8, %r8
lea addresses_D_ht+0x173c, %rsi
lea addresses_normal_ht+0xe6eb, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $16, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x83c, %rsi
nop
nop
nop
nop
cmp $26325, %rbx
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rdx

// Load
lea addresses_WT+0xbfc, %r9
clflush (%r9)
nop
lfence
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
sub $44652, %rbx

// Faulty Load
lea addresses_UC+0x17b3c, %r12
clflush (%r12)
nop
dec %r15
mov (%r12), %r11w
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'37': 102}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
