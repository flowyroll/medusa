.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x810f, %rbp
sub %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
sub $50080, %rdi
lea addresses_UC_ht+0x13a4f, %rsi
lea addresses_D_ht+0x970f, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $1, %rcx
rep movsw
nop
nop
nop
nop
cmp $57555, %rbp
lea addresses_D_ht+0x13ae7, %rsi
lea addresses_D_ht+0x2c97, %rdi
nop
nop
nop
nop
nop
mfence
mov $83, %rcx
rep movsq
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x19a1, %rsi
lea addresses_A_ht+0x1130f, %rdi
clflush (%rdi)
nop
xor $37450, %rbx
mov $76, %rcx
rep movsq
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Load
lea addresses_A+0x19d25, %rdx
and $41171, %rcx
mov (%rdx), %r10
cmp %rdx, %rdx

// Load
mov $0x223eae0000000f0f, %r10
xor $61875, %rdx
mov (%r10), %r14d
nop
nop
nop
xor $28184, %r9

// Store
lea addresses_A+0x1ef0f, %rdx
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rdx)
add %r12, %r12

// Store
lea addresses_RW+0x4883, %r10
nop
sub %r9, %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
inc %rbp

// Store
lea addresses_WC+0x1900f, %rdx
nop
nop
nop
nop
and $14988, %r10
movl $0x51525354, (%rdx)
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0x19b0f, %r12
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r12)
nop
nop
and $15653, %r10

// Store
lea addresses_RW+0x12a23, %rcx
nop
nop
nop
nop
nop
xor $25810, %r12
movl $0x51525354, (%rcx)
cmp %rcx, %rcx

// Store
lea addresses_US+0xb8ef, %rdx
nop
nop
nop
nop
xor $54935, %rcx
movb $0x51, (%rdx)
nop
nop
and %r10, %r10

// Store
lea addresses_D+0x6a8f, %r14
nop
and $32319, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r14)
nop
dec %r14

// Store
lea addresses_RW+0xc24f, %rcx
nop
nop
nop
nop
xor $14709, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
and $11029, %rbp

// Store
lea addresses_WT+0xb60f, %rcx
nop
nop
nop
nop
nop
xor $3448, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rcx)
inc %r9

// Store
mov $0x4f90b50000000bb7, %r12
nop
sub $36652, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r12)
cmp %r9, %r9

// Faulty Load
lea addresses_D+0x1030f, %r10
nop
dec %r12
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'36': 5}
36 36 36 36 36
*/
