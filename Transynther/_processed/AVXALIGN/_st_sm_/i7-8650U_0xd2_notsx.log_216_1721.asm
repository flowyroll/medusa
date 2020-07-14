.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x289a, %rax
nop
nop
nop
and $51607, %rsi
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1dc2, %rsi
lea addresses_A_ht+0x1e89a, %rdi
nop
nop
nop
add %r8, %r8
mov $17, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1fe5a, %rsi
lea addresses_UC+0x8e8a, %rdi
nop
nop
nop
nop
nop
and $56326, %r8
mov $22, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_normal+0x209a, %r11
nop
nop
nop
nop
cmp %r15, %r15
movb $0x51, (%r11)
xor $28378, %r8

// Faulty Load
lea addresses_normal+0x209a, %r15
dec %rdi
mov (%r15), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'51': 216}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
