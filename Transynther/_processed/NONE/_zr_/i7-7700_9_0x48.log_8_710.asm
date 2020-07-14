.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
lea addresses_D_ht+0xbc1, %rbx
nop
nop
nop
nop
sub %r14, %r14
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1369, %r14
nop
xor $11661, %r12
movl $0x61626364, (%r14)
nop
nop
nop
nop
and $4339, %rcx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0x19209, %r13
nop
nop
nop
nop
nop
and $14998, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
nop
nop
inc %r10

// Store
lea addresses_RW+0x1b889, %rbx
nop
nop
nop
and $18263, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbx)
add $53326, %r13

// Store
lea addresses_PSE+0xd24d, %r8
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r13
movq %r13, (%r8)
sub $26337, %r8

// Store
mov $0xf09, %rdx
nop
nop
sub $65370, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_WT+0x13089, %r13
nop
nop
nop
and %rsi, %rsi
movups (%r13), %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
