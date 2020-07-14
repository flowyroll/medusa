.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x2333, %rbx
cmp %rdx, %rdx
movb $0x51, (%rbx)
nop
nop
xor $21423, %rdx

// Load
lea addresses_PSE+0x16261, %rbp
xor %r11, %r11
mov (%rbp), %rdi
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x3d33, %rdi
cmp %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovaps %ymm6, (%rdi)
nop
xor $49970, %r13

// Store
lea addresses_UC+0x1b133, %rdx
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rdx)
nop
and $43979, %rbx

// Store
lea addresses_D+0x1ed33, %rsi
nop
nop
nop
nop
nop
add $45733, %rbx
movb $0x51, (%rsi)
nop
nop
nop
sub $21697, %rbp

// Load
lea addresses_UC+0x52d3, %rbx
nop
add %rdx, %rdx
mov (%rbx), %r13d
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WC+0x6d9c, %r13
cmp %rbp, %rbp
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_UC+0x10d33, %rdi
nop
nop
nop
add $7681, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
dec %r13

// Store
lea addresses_D+0x3d33, %rdi
nop
nop
xor $61412, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_US+0x15ef5, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rdi)
nop
dec %r11

// Faulty Load
lea addresses_D+0x3d33, %rdi
nop
nop
nop
nop
nop
and $2003, %rbx
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_D'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'54': 14, '00': 1}
00 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
