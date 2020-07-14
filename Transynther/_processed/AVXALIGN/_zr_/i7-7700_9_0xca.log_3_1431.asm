.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rdi
lea addresses_WC_ht+0x18192, %rdi
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
inc %r14
pop %rdi
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rsi

// Store
lea addresses_A+0x2922, %r12
inc %r15
movb $0x51, (%r12)
nop
nop
and %r9, %r9

// Load
lea addresses_WC+0x151f0, %r12
nop
nop
dec %r15
mov (%r12), %r11d
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_US+0x15d22, %r15
nop
nop
xor $2201, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
and %r10, %r10

// Load
mov $0x14d60c00000001d2, %r11
nop
nop
nop
cmp %rsi, %rsi
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
add $46665, %r15

// Store
lea addresses_A+0x2922, %r9
nop
nop
add $62067, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r9)

// Exception!!!
mov (0), %rcx
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x1503e00000000322, %r9
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_A+0x12922, %r10
add $59071, %r12
movw $0x5152, (%r10)
nop
add $48480, %rcx

// Store
lea addresses_WT+0xff22, %r9
nop
nop
nop
nop
cmp $42808, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
add $37787, %r9

// Store
lea addresses_UC+0x11fc2, %rcx
nop
sub $48340, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movntdq %xmm4, (%rcx)
nop
nop
nop
add $35594, %r15

// Faulty Load
lea addresses_A+0x2922, %r10
nop
xor $48034, %r9
vmovaps (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 3}
00 00 00
*/
