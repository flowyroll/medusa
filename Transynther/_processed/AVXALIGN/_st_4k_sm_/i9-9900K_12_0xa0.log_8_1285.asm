.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rdx
lea addresses_D_ht+0xd4a0, %r14
nop
and $6774, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r14
movaps %xmm7, (%r14)
inc %rbx
pop %rdx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_PSE+0x4cc4, %r11
clflush (%r11)
nop
sub $35545, %r8
movb (%r11), %r10b
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x1bac2, %rbx
xor %rcx, %rcx
movb $0x51, (%rbx)
sub %r8, %r8

// Store
lea addresses_normal+0x1e7a0, %rbp
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbp)
add $15964, %rbx

// Store
lea addresses_PSE+0x1a7a0, %rbp
nop
nop
nop
sub $62160, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_UC+0x10aee, %r8
sub %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r8)
sub %r10, %r10

// Store
mov $0xfa0, %rbp
cmp $24816, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovaps %ymm5, (%rbp)
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_PSE+0x1231c, %rbp
nop
nop
nop
cmp $22629, %r10
movl $0x51525354, (%rbp)
dec %rbp

// Faulty Load
lea addresses_normal+0x1e7a0, %r10
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%r10), %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
