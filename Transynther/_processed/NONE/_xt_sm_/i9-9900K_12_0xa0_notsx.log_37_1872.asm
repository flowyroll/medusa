.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
lea addresses_WC_ht+0xd13d, %rbx
nop
nop
nop
nop
sub %r15, %r15
mov (%rbx), %r9
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x2bfd, %r13
nop
sub $53132, %r10
movl $0x61626364, (%r13)
nop
nop
sub $63531, %r13
lea addresses_UC_ht+0xffd, %r13
nop
nop
nop
nop
cmp $22214, %r12
mov (%r13), %rbx
nop
nop
nop
nop
nop
cmp $12706, %rbx
lea addresses_D_ht+0x62a9, %r13
nop
nop
nop
cmp $31557, %rax
movb $0x61, (%r13)
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x49e3, %r13
nop
nop
nop
nop
and $25034, %rbx
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x1a3fd, %r9
nop
nop
nop
and $48876, %r15
movl $0x61626364, (%r9)
cmp $16585, %rbx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_UC+0xb1e0, %rbx
inc %r8
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_normal+0x1e3a1, %rbx
nop
nop
nop
nop
nop
inc %r11
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_RW+0x185d5, %rax
add %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rax)
nop
nop
sub $52432, %r11

// Store
lea addresses_A+0x18ffd, %r10
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r10)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x193fd, %r11
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r11)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
and $61875, %r10

// Faulty Load
lea addresses_A+0x18ffd, %rbx
nop
nop
nop
add $55011, %r10
mov (%rbx), %r8d
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'58': 37}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
