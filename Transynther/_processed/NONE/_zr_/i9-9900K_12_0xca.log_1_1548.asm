.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
lea addresses_D_ht+0xf211, %r11
nop
sub $60165, %r15
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $39947, %r10
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rsi

// Store
lea addresses_UC+0x104d1, %r13
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%r13)
nop
xor $53883, %r11

// Store
lea addresses_WT+0xeedb, %r9
nop
nop
xor $55494, %r12
movw $0x5152, (%r9)
nop
nop
xor $21979, %r12

// Load
lea addresses_D+0x7128, %r11
nop
dec %rsi
mov (%r11), %r12
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_US+0x59d1, %r9
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
xor $37425, %rsi

// Store
mov $0xad1, %rsi
cmp %r9, %r9
movl $0x51525354, (%rsi)
nop
nop
dec %r10

// Store
lea addresses_UC+0x16351, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %r10, %r10
movb $0x51, (%r11)
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0xb1ef, %r9
nop
sub %r11, %r11
movl $0x51525354, (%r9)
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_UC+0x14fd1, %r12
nop
nop
nop
cmp $29036, %rsi
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 1}
00
*/
