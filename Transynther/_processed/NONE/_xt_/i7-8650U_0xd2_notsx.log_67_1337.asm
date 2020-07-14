.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x37a6, %rsi
lea addresses_D_ht+0x1ea6, %rdi
nop
nop
nop
add %r13, %r13
mov $13, %rcx
rep movsw
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x5f2a, %r12
nop
nop
nop
nop
nop
add $6803, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r12)
nop
nop
and %r13, %r13
lea addresses_normal_ht+0xdd0a, %rsi
lea addresses_normal_ht+0x13a3c, %rdi
add $49702, %r13
mov $63, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x176d6, %r14
nop
nop
add $22733, %rdx
mov (%r14), %r12
nop
nop
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x1bba6, %rbx
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_normal+0x1eea6, %rdi
nop
nop
nop
nop
nop
add $9811, %rbx
movw $0x5152, (%rdi)
and %r10, %r10

// Store
mov $0x1c6, %rbx
nop
xor $54999, %r13
movb $0x51, (%rbx)
cmp %r14, %r14

// Load
lea addresses_D+0xa596, %r13
nop
and %rdi, %rdi
mov (%r13), %r14w
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x7396, %r13
nop
nop
nop
and $8621, %r14
movb $0x51, (%r13)
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x249b6d000000093e, %rdi
nop
dec %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movaps %xmm2, (%rdi)
nop
nop
add $24216, %rcx

// Store
lea addresses_A+0x1cda6, %r13
xor $59560, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r13)
nop
cmp $1314, %r13

// Store
lea addresses_D+0x17dbe, %r13
nop
cmp $33588, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
inc %rcx

// Faulty Load
lea addresses_D+0xcfa6, %rbx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rbx), %r10w
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'36': 67}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
