.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rdi
push %rdx
lea addresses_D_ht+0x1c301, %r13
nop
nop
nop
nop
add $21692, %r8
mov (%r13), %edx
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x5b01, %r12
cmp $57535, %r15
mov (%r12), %di
nop
nop
nop
nop
nop
and $25163, %rdx
pop %rdx
pop %rdi
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
push %rdi
push %rdx

// Store
lea addresses_US+0x11876, %r10
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovaps %ymm6, (%r10)
and $30615, %rdx

// Store
mov $0x7a64600000000b01, %r15
nop
nop
xor $45827, %r10
movb $0x51, (%r15)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_A+0x18b01, %r12
nop
and %r11, %r11
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 1}
00
*/
