.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2f0c, %rcx
nop
and $25327, %r9
mov (%rcx), %ebp
nop
nop
nop
nop
nop
and $14845, %rbx
lea addresses_UC_ht+0x3970, %rsi
lea addresses_A_ht+0x1c12c, %rdi
nop
nop
nop
nop
nop
sub $47862, %r12
mov $31, %rcx
rep movsl
nop
nop
nop
xor $63552, %rcx
lea addresses_WC_ht+0xed6c, %rbp
nop
nop
nop
nop
nop
dec %r9
movl $0x61626364, (%rbp)
nop
nop
add $40837, %rbx
lea addresses_A_ht+0x19546, %rbx
nop
nop
nop
xor $57359, %rsi
movl $0x61626364, (%rbx)
nop
inc %rbx
lea addresses_WC_ht+0x1102c, %rsi
lea addresses_A_ht+0x1ea02, %rdi
nop
inc %r8
mov $56, %rcx
rep movsw
nop
add $46513, %r12
lea addresses_A_ht+0x292c, %rsi
lea addresses_WT_ht+0xc02c, %rdi
clflush (%rsi)
dec %r12
mov $56, %rcx
rep movsl
xor $29584, %r12
lea addresses_A_ht+0x1c528, %rsi
lea addresses_A_ht+0x7f2c, %rdi
nop
nop
and %r8, %r8
mov $36, %rcx
rep movsl
xor $46968, %rdi
lea addresses_WT_ht+0x82c, %r9
nop
nop
nop
dec %rsi
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r8
nop
cmp $15205, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0x442c, %rbp
and %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
add $41257, %rcx

// Load
lea addresses_UC+0x14e2c, %r14
nop
nop
nop
nop
inc %r10
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
and %r14, %r14

// Load
lea addresses_D+0x1a2c, %rsi
inc %r10
mov (%rsi), %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
mov $0x485ea0000000082c, %rcx
nop
nop
nop
nop
nop
xor $15509, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x4c80, %r15
clflush (%r15)
nop
nop
nop
xor $7744, %r14
movl $0x51525354, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
dec %rbp

// Store
mov $0xf13, %rcx
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%rcx)
xor %r10, %r10

// Load
lea addresses_RW+0x118ac, %r14
nop
sub %rcx, %rcx
movb (%r14), %r10b
nop
nop
nop
nop
nop
and %r10, %r10

// Store
mov $0x15ab7c000000082c, %r10
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r10)
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_UC+0x1702c, %rcx
nop
nop
and %rbp, %rbp
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'94': 1}
94
*/
