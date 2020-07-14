.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12a2c, %rsi
lea addresses_WC_ht+0x8b2c, %rdi
add %rax, %rax
mov $15, %rcx
rep movsb
xor $28314, %r11
lea addresses_D_ht+0x10e2c, %rsi
lea addresses_A_ht+0x882c, %rdi
nop
lfence
mov $20, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x1662c, %rdi
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
add $54783, %r14
lea addresses_WT_ht+0xcf44, %rsi
lea addresses_D_ht+0x1e1c2, %rdi
inc %r12
mov $110, %rcx
rep movsw
add %r14, %r14
lea addresses_normal_ht+0x10e2c, %rsi
lea addresses_WT_ht+0x16704, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $111, %rcx
rep movsb
xor $25048, %rdx
lea addresses_normal_ht+0x15e2c, %rdi
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x9ee2, %rsi
cmp %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
add $43535, %rdx
lea addresses_WT_ht+0x682c, %rsi
lea addresses_A_ht+0x17b2c, %rdi
nop
sub $23425, %rax
mov $39, %rcx
rep movsq
nop
nop
nop
nop
sub $31809, %r11
lea addresses_D_ht+0x1cc2c, %rdx
nop
nop
nop
nop
cmp $37476, %r14
movl $0x61626364, (%rdx)
nop
nop
nop
cmp $21276, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_A+0xaf28, %r15
nop
nop
add %r14, %r14
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $59590, %rdi

// Load
lea addresses_WT+0x1aa2c, %r8
nop
and $37256, %r10
mov (%r8), %edx
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_A+0x262c, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%rdi)
and %r10, %r10

// Store
lea addresses_UC+0xd7bc, %r8
and %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r8)
nop
add %r9, %r9

// Faulty Load
lea addresses_US+0x4a2c, %r9
and %r15, %r15
vmovntdqa (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'44': 3399, '49': 4709, '00': 13721}
49 00 44 49 49 44 00 00 00 00 00 49 00 00 00 00 00 00 49 44 00 00 00 00 00 00 49 44 00 00 49 00 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 49 44 49 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 00 49 44 49 49 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 49 49 44 00 00 00 00 00 00 00 49 00 49 44 49 44 49 44 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 44 00 00 00 49 44 49 44 00 49 00 00 00 00 00 49 00 49 00 49 44 49 44 00 49 49 44 49 00 49 49 44 00 00 00 00 00 00 00 49 44 00 00 49 44 00 44 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 49 44 00 00 00 00 49 44 00 00 00 00 49 00 00 00 00 00 00 49 49 44 49 44 00 00 49 44 00 00 00 00 49 44 49 44 49 44 49 44 49 44 00 00 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 00 00 49 44 49 44 00 00 00 00 00 00 49 44 49 44 49 44 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 44 00 00 00 49 44 49 44 49 44 49 44 00 00 00 00 00 00 49 44 49 44 00 49 44 00 00 00 00 00 49 49 44 00 00 00 00 00 49 00 00 00 49 49 44 00 00 00 00 49 44 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 49 44 00 00 00 00 00 00 00 00 00 49 49 44 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 49 44 00 49 00 49 49 44 00 49 00 49 44 00 49 49 44 00 00 00 49 44 00 49 44 00 00 00 44 49 44 00 00 00 00 00 00 49 44 00 00 49 49 44 00 00 00 49 44 00 00 49 49 44 00 00 00 00 00 00 00 44 00 49 44 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 49 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 44 00 00 00 49 49 44 49 44 00 00 49 49 44 49 44 49 00 00 00 49 49 44 49 44 00 00 00 00 00 00 49 49 44 00 00 00 00 49 44 49 44 00 00 00 00 00 00 00 49 44 00 00 00 49 44 00 49 00 49 44 00 00 00 00 00 49 44 00 00 49 44 00 00 00 49 49 44 00 44 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 49 44 00 00 00 00 00 00 49 44 49 44 00 00 00 00 00 00 00 49 49 44 00 00 00 49 49 44 00 00 00 00 00 00 49 44 00 49 44 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 44 49 00 00 00 00 00 00 00 44 00 00 00 00 49 44 49 44 00 00 49 44 49 44 49 44 00 00 00 00 00 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 49 44 49 44 00 00 00 00 00 00 00 00 49 44 49 49 44 00 49 49 44 00 00 49 44 00 00 00 00 00 49 44 49 44 49 44 44 49 00 00 00 49 44 00 49 49 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 44 49 44 44 00 00 00 00 00 00 00 00 49 44 49 44 49 44 49 44 00 00 00 00 49 49 44 00 00 00 49 00 49 49 44 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 44 00 00 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 44 49 44 00 00 49 44 49 00 49 49 44 49 44 00 00 00 00 00 00 00 49 49 44 00 00 49 44 00 00 00 00 00 00 00 00 00 00 49 44 00 00 00 49 44 00 00 00 00 49 44 49 44 00 00 00 00 00 49 44 00 00 00 00 00 49 44 00 00 00 00 49 44 49 00 49 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 49 44 49 44 00 00 00 00 00 00 00 00 49 49 44 00 00 00 00 00 49 44
*/
