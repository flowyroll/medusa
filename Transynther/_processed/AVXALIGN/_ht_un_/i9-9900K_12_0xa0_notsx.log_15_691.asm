.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rdx
lea addresses_WT_ht+0xd97a, %rdx
nop
nop
dec %r9
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp $47597, %r15
pop %rdx
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x4bb, %rcx
nop
nop
nop
nop
xor $8868, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0xed4d, %r12
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r12)
nop
cmp $41966, %r11

// Faulty Load
mov $0x60175200000003d3, %r12
nop
nop
nop
nop
sub $3228, %rdx
vmovaps (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'06': 7, '40': 8}
40 06 40 06 40 40 06 40 40 40 06 06 06 06 40
*/
