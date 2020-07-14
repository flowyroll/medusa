.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi

// Load
mov $0x1e6b2400000008da, %r15
nop
nop
nop
nop
nop
dec %rdi
mov (%r15), %bp
nop
nop
nop
and $60417, %rcx

// Store
lea addresses_PSE+0x1a3b7, %r15
sub $25033, %r11
movb $0x51, (%r15)
nop
xor %r15, %r15

// Load
lea addresses_WC+0x14e85, %r8
nop
nop
nop
nop
sub $49116, %r11
movb (%r8), %r10b
nop
nop
xor $32120, %rbp

// Store
mov $0xa9a, %rdi
sub $50732, %r8
movw $0x5152, (%rdi)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_UC+0x1859a, %rdi
nop
nop
nop
nop
nop
xor $49374, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0x1b08920000000f1a, %rcx
nop
nop
nop
nop
nop
add $61538, %r11
movb $0x51, (%rcx)
nop
nop
inc %rcx

// Faulty Load
lea addresses_WT+0x1129a, %r8
nop
nop
nop
nop
cmp %r15, %r15
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'39': 2}
39 39
*/
