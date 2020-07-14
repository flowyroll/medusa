.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8656, %rsi
lea addresses_WT_ht+0x596, %rdi
and $40926, %r12
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x78d6, %r8
nop
nop
nop
nop
cmp %r15, %r15
mov (%r8), %si
nop
nop
inc %rdi
lea addresses_UC_ht+0x1801e, %rsi
lea addresses_UC_ht+0x4ad6, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $62, %rcx
rep movsl
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x27d6, %rsi
lea addresses_WT_ht+0x13fae, %rdi
and %rbx, %rbx
mov $39, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x181d6, %rdx
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
add $33504, %r12
lea addresses_UC_ht+0x1908e, %rcx
nop
cmp $38016, %r15
mov (%rcx), %ebx
nop
nop
nop
nop
nop
cmp $39728, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x2fd6, %rbx
cmp $56375, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
cmp %rsi, %rsi

// Store
lea addresses_WC+0x41e6, %rsi
nop
cmp $1356, %rbp
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
add $23794, %rdi

// Store
lea addresses_UC+0xbbd6, %rbp
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
mov $0x4d6, %rbp
nop
and $36179, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovntdq %ymm6, (%rbp)
add $33992, %r12

// Store
lea addresses_PSE+0x9329, %rdi
nop
xor $8437, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movaps %xmm6, (%rdi)
and %rbx, %rbx

// Load
lea addresses_WT+0x986, %rsi
nop
nop
add %rbp, %rbp
mov (%rsi), %r11w
nop
nop
nop
add $24530, %r11

// Store
lea addresses_normal+0x5336, %rdi
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
cmp $37188, %rsi

// Faulty Load
lea addresses_RW+0x2fd6, %r10
nop
nop
xor %rsi, %rsi
movb (%r10), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': True}}
{'58': 76}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
