.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
lea addresses_UC_ht+0x22e1, %rcx
nop
nop
dec %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0xe93e, %r11
nop
and $3420, %rdi
mov (%r11), %rbx
nop
nop
nop
xor $43631, %r9
lea addresses_WC_ht+0xbafe, %rbp
nop
nop
xor %r11, %r11
movb $0x61, (%rbp)
nop
add %rbp, %rbp
lea addresses_normal_ht+0x9bfa, %r15
nop
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
inc %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_PSE+0x19a67, %r8
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%r8)
nop
nop
add $23580, %r8

// Store
mov $0xbfe, %r8
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movaps %xmm1, (%r8)
nop
nop
nop
nop
inc %r15

// Faulty Load
mov $0xbfe, %rbp
sub $36406, %r13
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': True, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'58': 18881, '80': 2688, '00': 260}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 80 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 80 58 58 80 58 80 58 58 58 58 58 58 58 58 58 58 58 80 80 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 80 58 58 80 58 80 58 58 58 58 80 58 80 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 80 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 80 80 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 80 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 80 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 80 58 58 58 58 80 58 58 58 80 58 80 00 58 58 80 80 58 80 80 58 80 58 80 58 58 58 58 80 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 80 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 80 80 58 58 80 58 80 58 58 58 80 58 58 58 58 58 58 58 58 80 58 58 58 80 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 80 58 00 80 58 58 80 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 80 58 80 58 80 58 58 58 58 58 80 58 00 58 58 58 58 58 58 58 80 58 80 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 80 58 58 58 58 58 58 80 58 58 58 58 58 58 58 80 58 58 58 58 80 58 58 58 58 58 58 80 58 58 58 80 58 58 58 58 58 58 58 58 80 58 58 58 58 58 80 58 58 58 58 80 80 80 58 58 58 58 80 58 58 58 80 58 80 58 58 58 58 58 58 58 80 80 58 58 80 58 58 58 58 80 58 58 58 80 58 80 58 58 00 80 58 58 58 58 58 58 80 80 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 80 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 80 58 80 58 58 58 80 58 58 58 58 58 58 58 58 80 58 58 80 58 58 80 58 58 58 58 58 58 58 58 58 58 80 58 58 80 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 80 58 58 58 58 00 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 80 58 58 58 58 80 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 80 58 80 58 58 58 58 58 58 58 58 58 80 58 58 58 58 80 80 58 58 58 58 58 58 58 58 58 58 58
*/
