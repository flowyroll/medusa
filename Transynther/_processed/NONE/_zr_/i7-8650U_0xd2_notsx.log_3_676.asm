.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6ef3, %r9
nop
nop
nop
nop
nop
add $41771, %rcx
mov (%r9), %rbx
nop
cmp %r11, %r11
lea addresses_UC_ht+0x9e23, %rsi
lea addresses_D_ht+0x10803, %rdi
nop
nop
nop
nop
inc %r14
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $11211, %r9
lea addresses_D_ht+0x1ccbd, %r9
nop
nop
nop
and $1645, %r11
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rcx
push %rsi

// Load
lea addresses_US+0x1dbfc, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r9), %r12w
nop
nop
add $46431, %r12

// Faulty Load
lea addresses_A+0x6a83, %r9
nop
nop
nop
nop
add $5991, %rsi
mov (%r9), %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 3}
00 00 00
*/
