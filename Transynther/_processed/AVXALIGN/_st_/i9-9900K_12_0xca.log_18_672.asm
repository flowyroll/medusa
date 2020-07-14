.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0xe2e, %r8
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %r15

// Load
lea addresses_WC+0x1442e, %rbx
nop
nop
add $60772, %rdi
movb (%rbx), %r8b
add $37423, %r11

// Store
lea addresses_RW+0x19f42, %rdi
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, (%rdi)
nop
xor %r11, %r11

// Store
mov $0x112, %r8
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_A+0x1662e, %rbx
nop
nop
and $30842, %rbp
mov (%rbx), %r11d
nop
nop
nop
nop
cmp $20956, %r8

// Store
lea addresses_PSE+0x728e, %r8
nop
nop
xor $47171, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
and $12945, %r8

// Store
lea addresses_UC+0x126ee, %r11
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovaps %ymm6, (%r11)
cmp $1875, %r15

// Load
lea addresses_A+0xe12e, %r8
clflush (%r8)
cmp $28353, %r11
mov (%r8), %rbx
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0xac15, %r15
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r15)
add $55989, %r11

// Faulty Load
lea addresses_D+0x762e, %rcx
nop
cmp %r15, %r15
movb (%rcx), %r11b
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'36': 18}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
