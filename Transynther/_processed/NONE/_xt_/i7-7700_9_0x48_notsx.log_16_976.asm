.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x94e, %rsi
lea addresses_WC_ht+0x1c1ea, %rdi
nop
nop
nop
nop
inc %rdx
mov $28, %rcx
rep movsq
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp

// Load
mov $0x7a2, %r10
nop
nop
nop
nop
dec %r12
mov (%r10), %r11
nop
cmp %rbp, %rbp

// Store
mov $0x3a2, %rbp
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rbp)
nop
nop
dec %r10

// Load
lea addresses_UC+0xbba2, %r8
xor %r10, %r10
mov (%r8), %r12w
nop
inc %r13

// Store
mov $0x2c34e00000001a2, %rbp
nop
nop
nop
sub $8511, %r13
movb $0x51, (%rbp)
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_normal+0xeba2, %r10
nop
xor $35641, %r8
mov (%r10), %r11w
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'34': 16}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
