.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x2b76, %rbp
add %r12, %r12
movb (%rbp), %r11b
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_PSE+0x18df6, %rcx
and %r10, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor $50499, %rcx

// Store
lea addresses_A+0x19ff6, %rbp
nop
nop
dec %rdx
movw $0x5152, (%rbp)
nop
inc %rdx

// REPMOV
lea addresses_WC+0xaf52, %rsi
lea addresses_A+0x1028e, %rdi
add %r12, %r12
mov $121, %rcx
rep movsq
nop
nop
and %rbp, %rbp

// REPMOV
lea addresses_WC+0x14cf6, %rsi
lea addresses_WT+0x36d6, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $122, %rcx
rep movsw
nop
nop
nop
cmp %rdx, %rdx

// Load
mov $0x951, %rbp
nop
nop
nop
nop
add $42583, %r10
mov (%rbp), %di
nop
nop
nop
nop
add $48542, %rsi

// Faulty Load
lea addresses_UC+0x5bf6, %rbp
clflush (%rbp)
nop
add %rsi, %rsi
movntdqa (%rbp), %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 140}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
