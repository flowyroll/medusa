.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xe65c, %rsi
lea addresses_normal_ht+0x1a782, %rdi
nop
nop
nop
nop
and $61877, %rdx
mov $39, %rcx
rep movsl
nop
sub $40659, %rdx
lea addresses_UC_ht+0xbf2c, %rdx
clflush (%rdx)
nop
nop
cmp %r10, %r10
mov (%rdx), %r11d
nop
cmp %r11, %r11
lea addresses_WC_ht+0xf52c, %rsi
lea addresses_D_ht+0x1132c, %rdi
and $33893, %r11
mov $23, %rcx
rep movsb
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x16c8c, %r14
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
and $18354, %rbp

// Store
lea addresses_PSE+0x1562c, %rbp
nop
nop
nop
nop
add %r12, %r12
movw $0x5152, (%rbp)
xor %rbp, %rbp

// Store
lea addresses_PSE+0x332c, %r13
nop
cmp $28170, %r12
movw $0x5152, (%r13)
nop
nop
inc %rbx

// Store
lea addresses_WT+0x1eb2c, %rbp
nop
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%rbp)
nop
cmp %r14, %r14

// Store
lea addresses_UC+0xf9ea, %r13
nop
nop
cmp $31844, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_normal+0x7cd5, %r13
xor %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r13)
nop
nop
sub $31997, %rcx

// Load
lea addresses_PSE+0x4fa7, %r13
clflush (%r13)
nop
nop
nop
nop
add %rdx, %rdx
movb (%r13), %cl
nop
nop
inc %rbx

// Store
mov $0xab2ee000000032c, %rbx
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
dec %r13

// Store
mov $0xab2ee000000032c, %r14
cmp $48876, %rbp
movl $0x51525354, (%r14)
nop
and $2516, %rcx

// Store
lea addresses_UC+0x142c, %r12
nop
nop
add $26798, %rbx
movl $0x51525354, (%r12)
nop
nop
and $47581, %rcx

// Load
lea addresses_WT+0x1e2ec, %rcx
clflush (%rcx)
nop
nop
nop
xor %r12, %r12
movb (%rcx), %r14b
nop
add $12481, %rbx

// Store
mov $0xab2ee000000032c, %r12
nop
inc %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
xor $27876, %r13

// Store
mov $0xab2ee000000032c, %rbp
nop
nop
nop
sub $31225, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rbp)
nop
dec %rdx

// Store
lea addresses_normal+0x1832c, %r13
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r13)
add $7173, %r12

// Load
lea addresses_D+0x1c92c, %r13
clflush (%r13)
nop
nop
xor %r14, %r14
mov (%r13), %rbx
nop
nop
nop
dec %r12

// Faulty Load
mov $0xab2ee000000032c, %rbx
nop
nop
nop
nop
nop
add %r14, %r14
mov (%rbx), %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'58': 21770, '00': 59}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
