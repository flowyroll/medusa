.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8c66, %r9
nop
nop
nop
nop
sub $32374, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x17236, %rsi
lea addresses_WT_ht+0x2d36, %rdi
nop
nop
add $48219, %r13
mov $47, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0x19316, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r13), %r15w
nop
nop
nop
nop
cmp %r11, %r11

// REPMOV
lea addresses_A+0xb391, %rsi
lea addresses_WC+0x14136, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x8db6, %rcx
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
xor %r9, %r9

// Store
mov $0x3d86ee00000003b2, %r14
nop
add $9259, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r14)
nop
add %r11, %r11

// Store
mov $0x3182ba0000000af6, %r11
nop
nop
nop
nop
xor $38273, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r11)
cmp $63770, %r15

// Store
lea addresses_normal+0x15c8e, %rdi
nop
dec %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
add $54386, %r9

// Store
lea addresses_RW+0x1bd36, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $12325, %r15
movw $0x5152, (%rcx)
nop
nop
inc %r13

// Store
lea addresses_normal+0x1136, %r13
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_PSE+0x9536, %r11
nop
nop
nop
nop
add %rdi, %rdi
movups (%r11), %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'33': 3}
33 33 33
*/
