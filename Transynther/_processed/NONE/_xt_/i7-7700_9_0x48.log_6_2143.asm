.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x1d8e2, %r11
nop
nop
nop
xor $55051, %rbp
movw $0x5152, (%r11)
nop
dec %rcx

// Load
lea addresses_UC+0x7426, %r11
and $224, %r8
movb (%r11), %r9b
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x2086610000000006, %r8
clflush (%r8)
nop
nop
nop
cmp $19898, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%r8)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_normal+0x1d426, %r15
sub $18180, %rdi
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'34': 6}
34 34 34 34 34 34
*/
