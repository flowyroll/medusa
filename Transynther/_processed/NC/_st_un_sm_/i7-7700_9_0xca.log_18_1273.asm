.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16f40, %rsi
lea addresses_A_ht+0x19a8c, %rdi
nop
nop
nop
nop
nop
and $46553, %rbx
mov $28, %rcx
rep movsw
nop
nop
cmp $59843, %rbx
lea addresses_normal_ht+0x1b690, %r15
clflush (%r15)
nop
nop
nop
add $8427, %rbx
mov (%r15), %r9w
nop
cmp $11360, %rsi
lea addresses_UC_ht+0x1df94, %rsi
lea addresses_UC_ht+0x10634, %rdi
nop
and $32547, %r8
mov $53, %rcx
rep movsw
and %r9, %r9
lea addresses_A_ht+0x3b40, %rsi
lea addresses_A_ht+0x13160, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $4, %rcx
rep movsq
nop
add $5991, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xb340, %rsi
lea addresses_UC+0x11b40, %rdi
xor %r9, %r9
mov $37, %rcx
rep movsw
nop
nop
xor $58570, %r10

// Store
mov $0x44ccd30000000b40, %r10
inc %rsi
movl $0x51525354, (%r10)
nop
nop
add %r9, %r9

// Store
lea addresses_WC+0xaf40, %r8
xor %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
nop
sub $41494, %rsi

// Store
mov $0x44ccd30000000b40, %r8
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
nop
add $56639, %r10

// Faulty Load
mov $0x44ccd30000000b40, %r9
nop
nop
nop
add $26845, %r10
mov (%r9), %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'54': 3, '6d': 1, '58': 14}
58 58 58 58 6d 54 58 58 58 58 54 58 54 58 58 58 58 58
*/
