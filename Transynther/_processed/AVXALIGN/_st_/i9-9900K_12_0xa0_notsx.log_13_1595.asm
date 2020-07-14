.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x12b18, %r12
nop
nop
nop
cmp $4080, %rdi
movb $0x51, (%r12)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_RW+0x5758, %rbp
sub %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_D+0x15f58, %r12
nop
nop
nop
nop
nop
and $44374, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovntdq %ymm7, (%r12)
nop
nop
nop
add $60265, %rbp

// Store
lea addresses_RW+0xe988, %r12
nop
nop
nop
nop
add $30656, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_US+0x1bed8, %r15
nop
xor %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x12558, %r12
clflush (%r12)
nop
dec %rbp
movb (%r12), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 13}
33 33 33 33 33 33 33 33 33 33 33 33 33
*/
