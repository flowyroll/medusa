.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1adf2, %r9
nop
nop
nop
nop
dec %rbp
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0xcaf2, %rsi
clflush (%rsi)
mfence
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0xdced, %rsi
lea addresses_UC_ht+0x3472, %rdi
nop
nop
nop
nop
inc %r9
mov $23, %rcx
rep movsl
xor %r15, %r15
lea addresses_A_ht+0xa01e, %rcx
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and $2070, %rsi
lea addresses_WT_ht+0x17f2, %r9
nop
nop
nop
nop
nop
cmp $9459, %rsi
movb (%r9), %cl
nop
nop
dec %r9
lea addresses_UC_ht+0x17f2, %rbp
nop
nop
nop
and $17608, %r9
mov (%rbp), %r15w
nop
nop
nop
nop
nop
sub $54468, %rcx
lea addresses_A_ht+0x49f2, %rbp
nop
and $51361, %r11
movb (%rbp), %r15b
nop
cmp %r11, %r11
lea addresses_D_ht+0x19af2, %rsi
lea addresses_WT_ht+0xfe2a, %rdi
nop
xor $52633, %rdx
mov $45, %rcx
rep movsl
nop
nop
dec %r15
lea addresses_UC_ht+0x132f2, %rsi
dec %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
and $18029, %rdx
lea addresses_WC_ht+0x3cd2, %r9
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r9), %rbp
nop
nop
nop
nop
xor $61484, %r15
lea addresses_D_ht+0x6f2, %r9
nop
nop
nop
nop
inc %r11
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
xor $9421, %rdx
lea addresses_UC_ht+0x52f2, %rbp
nop
nop
nop
nop
and $1452, %rdi
movb (%rbp), %cl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xcaf2, %rsi
nop
nop
nop
nop
nop
inc %r9
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
xor $12597, %rdi
lea addresses_normal_ht+0xdf7e, %rsi
lea addresses_D_ht+0x11ef2, %rdi
nop
nop
nop
sub $57123, %r11
mov $1, %rcx
rep movsq
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x17892, %rbp
nop
nop
nop
add $49389, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbp)
add %r12, %r12

// Load
lea addresses_PSE+0xb372, %r12
nop
nop
add $46288, %rdx
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rbp
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_WC+0x8ef2, %rsi
lea addresses_WC+0x16af2, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $45, %rcx
rep movsq
nop
nop
nop
add %r14, %r14

// Store
lea addresses_RW+0x1e72, %rdi
nop
xor %rbp, %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_normal+0x5af2, %rsi
nop
sub %rbx, %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
