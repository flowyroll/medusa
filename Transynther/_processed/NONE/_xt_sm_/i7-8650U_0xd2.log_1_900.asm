.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rdi
lea addresses_D_ht+0xa453, %rdi
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
and %rax, %rax
pop %rdi
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1050b, %rdi
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_US+0x143, %r14
nop
nop
nop
nop
nop
inc %r15
movb $0x51, (%r14)
nop
xor %rdx, %rdx

// Store
mov $0x2c1f590000000f4b, %rcx
nop
nop
and $38162, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
add %r15, %r15

// Load
mov $0x7d25bc000000090b, %r9
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r9), %rcx
add %rdx, %rdx

// Faulty Load
lea addresses_RW+0x1050b, %rcx
dec %r9
mov (%rcx), %dx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 1}
58
*/
