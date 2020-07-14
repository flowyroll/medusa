.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x1c652, %rsi
nop
nop
cmp $52610, %rbp
mov (%rsi), %r15w
nop
nop
nop
nop
and $17436, %r10

// Store
lea addresses_PSE+0x5445, %rdx
nop
cmp %r13, %r13
movw $0x5152, (%rdx)
nop
nop
nop
and $37129, %r13

// REPMOV
lea addresses_normal+0x5c45, %rsi
lea addresses_UC+0x19df5, %rdi
clflush (%rsi)
inc %r15
mov $57, %rcx
rep movsw
nop
and %rsi, %rsi

// Store
mov $0x645, %r10
clflush (%r10)
nop
nop
nop
cmp $5982, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
add $1798, %rsi

// Store
lea addresses_A+0x1ae45, %rdx
clflush (%rdx)
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movntdq %xmm7, (%rdx)
nop
nop
nop
nop
add $29946, %rdx

// Store
lea addresses_PSE+0x3f77, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rcx)

// Exception!!!
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_A+0x1ae45, %rdx
cmp $41823, %r15
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'58': 8}
58 58 58 58 58 58 58 58
*/
