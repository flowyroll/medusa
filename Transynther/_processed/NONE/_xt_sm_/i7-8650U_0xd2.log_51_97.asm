.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9f9f, %rcx
nop
and %r10, %r10
mov (%rcx), %r15d
nop
nop
nop
nop
nop
xor $3367, %rdx
lea addresses_UC_ht+0x131df, %r11
nop
dec %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
xor %r9, %r9
lea addresses_A_ht+0x6aff, %r10
cmp $55437, %r8
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x15cdf, %r15
nop
nop
cmp $6402, %r11
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1a89f, %rsi
lea addresses_WC_ht+0x1e9df, %rdi
add %rdx, %rdx
mov $34, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xe15f, %rsi
lea addresses_D_ht+0x1912b, %rdi
nop
nop
nop
add %r9, %r9
mov $93, %rcx
rep movsq
nop
nop
nop
nop
nop
add $5269, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_PSE+0xd1df, %r15
cmp %r8, %r8
mov (%r15), %bx
nop
nop
sub $5944, %r8

// Store
lea addresses_WT+0x205f, %rsi
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
xor %rsi, %rsi

// Store
lea addresses_PSE+0x1f25, %rbp
add $25440, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_PSE+0xd1df, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
add $21767, %r12

// Faulty Load
lea addresses_PSE+0xd1df, %rbp
nop
cmp %rax, %rax
movb (%rbp), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'54': 51}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
