.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xff42, %rcx
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
sub $41412, %r11
lea addresses_normal_ht+0x809a, %r15
nop
cmp %r14, %r14
movb $0x61, (%r15)
xor %r14, %r14
lea addresses_WC_ht+0x1c19a, %r13
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x1069a, %rsi
lea addresses_D_ht+0xec06, %rdi
nop
cmp $13717, %r14
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x91a, %r13
nop
nop
nop
lfence
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r13)
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1969a, %rsi
lea addresses_D_ht+0x116c2, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $66, %rcx
rep movsb
and $51424, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rsi

// Store
lea addresses_WC+0xc69a, %r15
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
add $46295, %rsi

// Store
lea addresses_D+0xbbda, %r8
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r8)
nop
nop
dec %r9

// Faulty Load
lea addresses_UC+0xde9a, %r15
nop
sub %r14, %r14
movb (%r15), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'37': 67}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
