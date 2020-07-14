.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Store
mov $0x598e660000000891, %r13
nop
nop
xor %r14, %r14
movw $0x5152, (%r13)
nop
nop
nop
xor $35631, %rcx

// Store
lea addresses_WC+0x16a31, %r11
nop
xor %rbp, %rbp
movl $0x51525354, (%r11)
dec %r13

// Load
lea addresses_UC+0x7f1, %rcx
nop
nop
nop
cmp $16245, %r13
mov (%rcx), %rsi
nop
nop
nop
dec %rsi

// Load
lea addresses_UC+0x17911, %r11
nop
nop
xor $54072, %r8
mov (%r11), %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_US+0x2749, %r11
sub $41909, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
add $3387, %rbp

// Store
lea addresses_normal+0x6291, %rcx
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
nop
sub $6364, %rsi

// Faulty Load
lea addresses_WC+0x18c91, %r11
nop
nop
dec %r13
mov (%r11), %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 8}
00 00 00 00 00 00 00 00
*/
