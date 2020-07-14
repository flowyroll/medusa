.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rax
push %rbx
lea addresses_normal_ht+0x11a0, %rbx
nop
nop
nop
xor %r15, %r15
mov (%rbx), %ax
nop
nop
nop
nop
nop
dec %rbx
pop %rbx
pop %rax
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rsi

// Store
mov $0x582, %r8
nop
nop
nop
nop
nop
cmp $26956, %r13
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
xor %r10, %r10

// Store
lea addresses_WC+0x10c82, %r10
clflush (%r10)
nop
nop
nop
nop
and $50894, %rax
movw $0x5152, (%r10)
inc %r13

// Store
lea addresses_RW+0x17682, %r12
xor %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r12)
nop
dec %rax

// Store
mov $0x67d06e0000000c82, %r12
nop
cmp $25444, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WC+0x10c82, %r10
nop
dec %r8
mov (%r10), %r12d
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'52': 2}
52 52
*/
