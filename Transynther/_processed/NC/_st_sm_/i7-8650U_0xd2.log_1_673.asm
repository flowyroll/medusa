.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2e53, %rsi
lea addresses_WC_ht+0x2fd3, %rdi
nop
add %r8, %r8
mov $52, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x11b53, %rsi
lea addresses_WC_ht+0x187db, %rdi
nop
nop
nop
dec %r13
mov $4, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x3e6d, %r8
nop
nop
nop
nop
sub $35242, %rax
movb $0x51, (%r8)
nop
add $52586, %rax

// Store
mov $0x1922910000000553, %r11
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_US+0x21f3, %r8
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%r8)
add %r8, %r8

// Faulty Load
mov $0x1922910000000553, %r11
clflush (%r11)
nop
nop
nop
nop
xor $41583, %rcx
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'54': 1}
54
*/
