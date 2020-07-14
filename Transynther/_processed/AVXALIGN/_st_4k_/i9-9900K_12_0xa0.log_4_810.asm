.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdx
lea addresses_UC_ht+0x10c92, %r13
nop
nop
dec %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r13
movntdq %xmm2, (%r13)
nop
nop
xor $52644, %rcx
lea addresses_WT_ht+0xfdd2, %r15
nop
nop
nop
xor %r12, %r12
movb $0x61, (%r15)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xadf2, %rdx
clflush (%rdx)
nop
nop
cmp $49602, %rbx
movb $0x61, (%rdx)
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1ef62, %r15
nop
nop
and %rdx, %rdx
movw $0x6162, (%r15)
nop
and %rdx, %rdx
lea addresses_A_ht+0xc75c, %rax
nop
nop
and %rbx, %rbx
movw $0x6162, (%rax)
and %rax, %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdx

// Store
lea addresses_UC+0x11492, %r11
nop
nop
nop
nop
nop
xor $11070, %rdx
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_normal+0xbc92, %rcx
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
inc %rcx

// Load
lea addresses_RW+0x1506f, %rcx
nop
nop
sub %r8, %r8
mov (%rcx), %r11w
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_A+0x17c92, %rbp
nop
cmp $22656, %rcx
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'58': 4}
58 58 58 58
*/
