.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_D+0x1f034, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
nop
and $31041, %r14

// Store
lea addresses_normal+0x1f154, %r9
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
sub $38638, %rcx

// Store
lea addresses_A+0xbf38, %r14
cmp $60951, %r15
movb $0x51, (%r14)
nop
nop
nop
inc %r12

// Store
lea addresses_US+0xc52c, %rcx
nop
nop
nop
nop
nop
cmp $27079, %r12
movl $0x51525354, (%rcx)
nop
xor $53949, %rsi

// Faulty Load
mov $0x17242900000004a4, %rcx
nop
dec %r15
movb (%rcx), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
