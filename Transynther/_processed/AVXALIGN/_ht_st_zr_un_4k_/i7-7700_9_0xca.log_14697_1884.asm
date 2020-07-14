.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bc39, %r8
nop
nop
nop
and %r13, %r13
mov (%r8), %edi
nop
add %r15, %r15
lea addresses_UC_ht+0x19cad, %rsi
lea addresses_WC_ht+0xcd79, %rdi
nop
nop
nop
lfence
mov $23, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_UC_ht+0x73b9, %rcx
nop
xor $35985, %rdi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
dec %r13
lea addresses_WC_ht+0x5e6b, %rsi
lea addresses_UC_ht+0x1cbb9, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $21, %rcx
rep movsw
and %rsi, %rsi
lea addresses_UC_ht+0x1a8b9, %r8
dec %r11
mov (%r8), %r15
nop
nop
nop
mfence
lea addresses_WT_ht+0xec09, %r13
nop
nop
nop
nop
lfence
mov (%r13), %r12w
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1de8d, %rsi
lea addresses_normal_ht+0xacb9, %rdi
nop
sub %r11, %r11
mov $9, %rcx
rep movsb
cmp $13868, %rcx
lea addresses_WC_ht+0x100d9, %r8
nop
nop
nop
inc %rsi
mov (%r8), %r15w
nop
nop
sub $61940, %rdi
lea addresses_WT_ht+0x1ee7, %rsi
lea addresses_D_ht+0x7659, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $38, %rcx
rep movsq
nop
nop
nop
nop
sub $63015, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rdi

// Store
lea addresses_US+0x137b9, %r9
clflush (%r9)
nop
nop
and $26846, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
xor %r10, %r10

// Store
lea addresses_D+0x171b9, %r10
clflush (%r10)
nop
nop
xor $60958, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
xor $50001, %rdi

// Store
lea addresses_WC+0xaa59, %r11
nop
nop
nop
xor $14872, %r15
movb $0x51, (%r11)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_A+0x163b9, %r10
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovntdq %ymm0, (%r10)
nop
nop
nop
nop
nop
sub $46916, %r12

// Faulty Load
lea addresses_WC+0x3bb9, %r10
nop
nop
nop
nop
dec %rdi
mov (%r10), %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}}
{'48': 760, '47': 727, '00': 3582, 'ff': 9295, '53': 238, '49': 95}
00 00 ff 00 ff ff ff ff 00 ff ff ff 48 ff ff ff ff ff 00 00 00 00 00 00 ff ff ff 00 ff ff 48 00 ff 53 48 ff ff ff 00 48 ff ff ff ff ff ff ff 53 00 00 53 ff 00 ff 00 ff 47 ff ff ff 47 00 ff ff ff ff ff 47 47 ff 47 ff ff ff ff 00 ff 00 ff ff ff ff ff 47 ff ff 00 00 ff ff ff ff ff ff ff 00 00 00 49 ff ff ff 00 ff 00 00 00 ff 00 00 00 ff 53 00 ff ff ff ff ff ff ff ff ff ff ff 53 ff ff ff 00 00 00 00 00 00 ff ff 00 ff ff ff ff 00 47 ff 00 00 00 ff 00 ff ff ff 00 00 ff ff ff ff 47 ff ff ff ff ff ff 00 ff 47 ff ff ff ff 00 47 48 ff ff 00 ff ff ff ff ff ff ff 00 ff ff ff 00 ff ff ff 00 00 ff ff 00 ff ff 00 00 ff 48 ff ff ff 00 00 00 53 00 00 00 47 ff ff ff ff 48 00 ff 00 ff ff ff ff 00 ff 00 49 ff ff ff ff ff 00 ff 00 ff 00 ff 48 48 48 00 47 ff ff 00 00 ff ff ff ff 48 ff ff ff ff ff 00 00 ff ff ff 00 ff ff 00 ff ff ff ff ff 00 ff ff ff 53 ff ff 47 00 ff ff 00 ff ff ff 00 00 ff ff ff ff 00 ff 47 ff 00 00 48 ff 00 ff ff 48 ff ff 00 47 ff ff ff ff ff ff 49 00 00 48 00 ff ff ff 00 ff ff ff ff ff 00 ff ff ff ff 47 00 ff ff ff ff 48 00 00 00 ff ff 00 48 ff ff 48 47 00 ff ff 47 ff ff ff ff 00 00 ff ff ff ff ff ff ff 48 ff ff ff 53 ff ff 00 ff 48 00 48 00 00 00 00 ff ff ff ff ff ff ff ff 48 00 00 ff ff 48 ff ff ff 00 48 ff 00 ff ff ff ff 00 00 ff 00 ff ff ff 00 00 ff 00 47 00 ff ff ff 00 ff ff ff ff 48 00 ff 00 ff 00 48 ff ff ff ff ff ff ff ff ff ff ff 00 00 ff ff ff ff ff ff 48 00 00 47 ff 48 ff 00 ff 47 ff ff ff ff ff 00 ff ff ff ff 00 ff 00 00 ff ff ff 00 ff 00 ff ff 48 ff ff 00 00 ff ff ff ff 00 ff ff ff ff ff ff ff 00 ff ff 48 ff ff ff 00 ff ff 00 ff 48 ff ff 00 00 ff ff 00 00 ff 48 ff ff 48 ff ff 00 00 00 ff ff ff ff 00 ff ff ff ff ff 00 00 00 ff ff ff 00 00 ff ff 00 47 ff ff ff ff 00 ff ff 00 ff 00 00 ff 00 ff ff ff ff ff 00 ff 00 ff 00 ff 47 ff ff ff 00 ff ff 00 ff ff 00 ff ff ff ff ff 48 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 ff ff 00 47 ff ff ff 00 ff 00 48 ff ff ff ff ff ff 00 00 49 ff ff ff ff 00 00 ff ff 48 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff 47 ff 47 ff ff 00 48 48 47 ff 00 00 ff ff 00 ff 47 ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff 00 ff 47 ff 00 00 ff 47 ff 00 ff ff 00 ff 00 ff 00 ff ff ff ff ff ff 47 ff 47 ff ff ff ff ff ff 48 ff ff ff 00 ff 47 00 ff 48 ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff 00 ff ff 00 ff ff 00 ff 00 53 ff ff ff ff ff 00 ff 00 00 ff 00 ff 00 00 00 53 00 ff ff 00 00 ff ff ff 00 48 00 ff 00 ff ff 47 00 00 ff ff 00 ff ff ff 47 00 ff 00 00 ff ff ff ff ff 47 ff 00 00 00 ff 00 ff ff ff 00 ff 00 ff ff ff ff 00 ff ff ff ff ff ff 00 00 ff ff 47 00 00 ff 53 ff 47 00 ff 00 ff ff ff ff 00 ff ff 00 ff ff ff 48 ff ff 00 48 ff ff 00 47 ff ff 00 47 00 00 00 ff 00 ff ff ff 47 00 ff 00 00 00 00 ff 00 00 ff ff 53 ff 00 ff ff ff 53 00 00 ff 00 47 00 ff ff ff 47 ff ff ff ff ff ff ff 00 00 53 ff ff 00 ff ff ff 00 ff ff ff ff 48 ff ff 47 53 ff ff ff ff 00 48 ff ff ff 53 ff ff ff ff ff ff 48 ff ff 53 00 ff ff ff ff 48 ff ff ff ff ff ff 47 48 00 ff ff ff ff ff ff ff 00 ff 48 ff 00 ff ff ff ff ff ff ff ff ff 48 48 ff
*/
