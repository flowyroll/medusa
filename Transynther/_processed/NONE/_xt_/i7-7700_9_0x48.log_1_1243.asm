.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c8dd, %rsi
lea addresses_UC_ht+0x7b1, %rdi
nop
nop
xor %r10, %r10
mov $49, %rcx
rep movsq
nop
nop
nop
and $64303, %r10
lea addresses_A_ht+0xf565, %rax
dec %rdx
mov (%rax), %r11
cmp %r10, %r10
lea addresses_A_ht+0x11449, %r11
nop
nop
nop
nop
nop
cmp $35173, %rdi
mov (%r11), %edx
nop
xor %rax, %rax
lea addresses_WC_ht+0x12c49, %rcx
nop
nop
nop
add $59159, %rdx
movb (%rcx), %r10b
nop
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x13b0b, %rsi
lea addresses_D+0x1ec49, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $46, %rcx
rep movsw
nop
cmp %rdi, %rdi

// Store
mov $0x1a55440000000689, %rax
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
add %r8, %r8

// Load
lea addresses_D+0x17ca1, %r8
nop
nop
nop
cmp $64365, %rdi
movb (%r8), %al
nop
nop
nop
nop
nop
cmp $11512, %rdx

// Faulty Load
lea addresses_normal+0xe449, %rcx
clflush (%rcx)
nop
nop
xor $11142, %r8
movb (%rcx), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'34': 1}
34
*/
