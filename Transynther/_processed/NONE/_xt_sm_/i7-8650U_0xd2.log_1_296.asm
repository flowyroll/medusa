.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a6c7, %rsi
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
and $38138, %r13
lea addresses_A_ht+0xb3ed, %rsi
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rsi), %r11
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xefc7, %rsi
lea addresses_WC_ht+0x5947, %rdi
nop
nop
and %r12, %r12
mov $109, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0xea7f, %r15
xor %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0xc547, %rdx
sub %rbx, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x8747, %rcx
inc %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x7147, %rdx
add $309, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
cmp %r11, %r11

// Store
mov $0x307, %r12
and $26948, %r11
movl $0x51525354, (%r12)
nop
add %r15, %r15

// Load
lea addresses_WC+0x61ab, %rbx
nop
nop
nop
nop
nop
sub $61341, %r11
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
add $36537, %r15

// Store
lea addresses_normal+0x1ffef, %r12
clflush (%r12)
nop
add %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
sub $45500, %r12

// Store
lea addresses_US+0xf4a7, %r11
nop
nop
nop
sub $7205, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
nop
and $3475, %r12

// Store
lea addresses_WT+0xd063, %r12
nop
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_UC+0x2c87, %rdx
nop
nop
dec %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rdx)
add %rdx, %rdx

// Faulty Load
lea addresses_normal+0x7147, %rcx
nop
nop
nop
cmp $25522, %r12
mov (%rcx), %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'58': 1}
58
*/
