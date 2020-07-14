.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rbx
push %rsi
lea addresses_D_ht+0x80a5, %r10
nop
nop
nop
nop
and %r12, %r12
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
sub $4710, %rbx
pop %rsi
pop %rbx
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x14afd, %rcx
clflush (%rcx)
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_US+0x4efd, %rsi
cmp $49248, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
and $36185, %rcx

// Faulty Load
lea addresses_A+0x116fd, %rdx
nop
nop
nop
add $23474, %rbx
mov (%rdx), %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 1844, '53': 3, '00': 3, 'ff': 1879}
46 46 ff 46 ff ff ff 46 ff ff ff 46 ff ff 46 ff 46 ff ff ff 46 46 ff ff ff 46 ff ff 46 ff 46 ff ff 46 ff 46 ff 46 46 ff 46 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 46 46 ff ff 46 ff 46 46 46 46 46 ff ff 46 46 ff ff 46 46 46 46 46 ff ff 46 ff 46 46 46 ff 46 46 ff ff 46 46 ff ff 46 46 46 ff ff ff 46 46 ff 46 ff 46 46 ff ff ff 46 46 46 ff ff 46 ff ff 46 46 ff 46 46 ff 46 ff ff ff 46 46 ff 46 ff 46 ff 46 46 ff 46 46 46 46 ff ff 46 ff ff ff ff 46 46 46 ff ff ff ff 46 46 ff ff 46 ff ff 46 ff 46 ff ff 46 46 ff ff ff ff 46 ff ff ff ff 46 ff ff 46 ff ff ff 46 ff 46 ff 46 46 ff ff 46 46 46 46 46 ff 46 ff 46 ff ff 46 46 46 46 46 ff 46 ff 46 ff ff 46 ff ff ff ff 46 46 ff 46 ff 46 46 ff ff 46 46 46 53 ff 46 ff ff ff 46 ff 46 ff ff ff 46 ff 46 ff ff ff ff 46 46 46 ff 46 46 46 46 46 ff 46 ff ff ff 46 46 ff 46 ff ff 46 46 ff ff 46 ff ff ff 46 ff 46 46 ff ff ff 46 ff ff 46 ff 46 46 46 ff ff ff ff ff 46 46 46 46 46 46 46 46 46 ff 46 ff 46 ff 46 46 46 ff 46 ff 46 ff ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 ff 53 46 46 ff ff 46 ff 46 ff ff ff 46 46 ff 46 ff ff 46 ff ff 46 46 46 ff ff ff 46 ff 46 ff 46 46 46 46 ff ff ff 46 ff ff 46 ff ff ff ff 46 ff 46 46 46 46 46 46 46 46 ff 46 46 ff ff ff ff 46 ff ff ff ff ff 46 46 ff 46 ff ff 46 46 ff 46 46 ff 46 ff ff ff 46 46 46 ff ff 46 ff ff 46 46 46 46 46 ff 46 ff 46 46 46 46 46 46 46 ff 46 ff ff 46 46 ff 46 46 ff ff 46 ff 46 ff ff ff ff ff 46 ff 46 46 46 46 ff ff ff 46 46 46 46 ff 46 ff ff ff 46 46 46 ff 46 46 ff ff ff 46 ff 46 46 46 46 ff 46 ff ff ff ff 46 ff ff ff 46 46 ff 46 ff ff 46 46 ff 46 46 ff 46 46 46 ff 46 46 46 ff 46 ff 46 46 ff ff ff 46 ff ff 46 ff ff ff 46 ff ff 46 ff 46 46 ff ff 46 46 46 46 ff 46 46 46 46 ff 46 46 46 46 46 46 46 46 46 ff 46 ff ff 46 ff 46 ff 46 46 ff 46 ff 46 46 ff 46 ff 46 ff 46 ff 46 ff 46 46 46 46 ff ff 46 46 ff 46 ff 46 ff ff ff 46 46 46 ff ff 46 46 ff 46 ff ff 46 46 46 ff 46 ff ff ff ff 46 46 ff 46 46 ff 46 ff 46 ff ff 46 ff ff 46 ff ff 46 ff ff 46 ff 46 ff 46 46 46 ff ff 46 ff 46 ff 46 46 ff ff 46 ff ff ff ff ff ff ff ff 46 ff 46 46 46 ff 46 46 ff 46 ff ff ff ff ff ff ff ff 46 46 ff 46 ff 46 ff 46 46 ff ff ff ff ff 46 ff ff ff ff 46 46 ff 46 46 46 ff ff ff 46 46 46 ff 46 ff ff ff 46 ff 46 46 ff 46 ff ff 46 46 46 ff 46 ff ff 46 46 ff ff 46 46 46 00 46 46 46 46 ff ff 46 ff ff ff 46 ff ff 46 ff ff 46 46 46 ff ff 46 ff ff 46 ff 46 ff ff 46 46 ff ff ff 46 ff 46 46 46 ff ff ff 46 ff 46 ff ff ff 46 ff ff ff ff ff 46 ff 46 46 46 ff 46 46 ff ff 46 ff ff 46 46 46 46 46 ff ff 46 46 46 ff 46 ff ff 46 ff 46 46 46 46 ff 46 46 ff 46 ff 46 ff ff ff 46 46 ff ff ff 46 ff 46 46 46 ff ff ff 46 46 46 ff 46 46 46 ff 46 ff 46 ff 46 ff 46 46 ff ff 46 ff ff ff ff ff ff 46 46 46 ff ff ff 46 ff 46 46 46 46 ff ff ff ff ff ff ff ff 46 46 46 ff 46 46 ff ff ff ff ff 46 ff ff 46 46 46 46 ff ff 46 46 46 46 ff 46 ff ff 46 46 ff 46 46 46 ff 46 46 46 46 ff ff 46 ff ff ff 46 ff 46 ff 46 46 ff ff 46 ff ff 46 46 46 ff 46 ff ff ff ff ff 46 46 46 46 46 46 ff ff 46 ff 46 ff ff ff 46 ff ff 46 46 ff 46 46 46 ff ff ff ff 46 46
*/
