.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x1476, %r15
nop
xor $43671, %rbp
movw $0x5152, (%r15)
nop
nop
nop
nop
add $6084, %rdx

// Store
mov $0x65cdf00000000c16, %r10
add $23540, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
xor %r13, %r13

// Store
mov $0xc16, %rbx
nop
nop
dec %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rbx)
nop
nop
xor $57682, %r10

// Store
mov $0xc16, %r8
inc %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r8)
nop
sub %r13, %r13

// Store
lea addresses_UC+0xd32, %r8
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
cmp $4955, %r8

// Faulty Load
mov $0x65cdf00000000c16, %rdx
nop
add $16739, %r13
mov (%rdx), %bx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 2, '58': 28}
58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58
*/
