.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a68a, %r14
nop
nop
nop
nop
nop
sub $31544, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r14
vmovaps %ymm6, (%r14)
nop
nop
sub $47187, %r11
lea addresses_WC_ht+0xc3fa, %rcx
nop
nop
nop
add $51170, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rcx)
and %r11, %r11
lea addresses_D_ht+0x9fba, %rcx
nop
nop
sub $30945, %r8
movb (%rcx), %r10b
nop
cmp %r11, %r11
lea addresses_D_ht+0x1717a, %rsi
lea addresses_A_ht+0x7a3a, %rdi
clflush (%rsi)
nop
nop
sub $38517, %r10
mov $29, %rcx
rep movsb
add %r15, %r15
lea addresses_UC_ht+0xa2ba, %rsi
lea addresses_WC_ht+0x1836a, %rdi
nop
nop
nop
nop
nop
cmp $17211, %r10
mov $74, %rcx
rep movsl
nop
nop
nop
nop
add $62236, %rdi
lea addresses_WC_ht+0x71ba, %rdi
nop
nop
nop
nop
and %r10, %r10
mov (%rdi), %r14
nop
nop
nop
nop
sub $41040, %rdi
lea addresses_WC_ht+0x1eba, %rsi
lea addresses_UC_ht+0x2512, %rdi
xor $43586, %r15
mov $42, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x121ba, %r13
dec %r9
movl $0x51525354, (%r13)
nop
sub %r8, %r8

// Load
lea addresses_US+0x302a, %rdi
nop
nop
and %r15, %r15
mov (%rdi), %bx
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_normal+0xb6ba, %r8
lfence
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x1aa7a, %r9
and %rbx, %rbx
movl $0x51525354, (%r9)

// Exception!!!
mov (0), %rbx
nop
nop
nop
nop
dec %r8

// Store
lea addresses_WC+0xbe3a, %r15
nop
nop
nop
sub $62976, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
sub $45105, %r12

// REPMOV
lea addresses_D+0x15ec2, %rsi
lea addresses_RW+0x165f2, %rdi
nop
nop
nop
nop
nop
add $11795, %r15
mov $126, %rcx
rep movsq
and $19495, %r12

// Store
mov $0x1ba, %rbx
nop
nop
nop
nop
nop
xor $24644, %r13
movw $0x5152, (%rbx)
nop
nop
add $43103, %rbx

// Faulty Load
lea addresses_D+0x121ba, %rcx
cmp %rdi, %rdi
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
