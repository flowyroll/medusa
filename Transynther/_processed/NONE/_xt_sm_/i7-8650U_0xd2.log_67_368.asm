.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx
push %rsi
lea addresses_WC_ht+0x90f5, %r8
nop
xor $33848, %r14
mov (%r8), %rax
nop
add %r8, %r8
lea addresses_WC_ht+0x15a35, %r13
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x5225, %rsi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rsi), %r15w
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1d9f5, %r13
nop
nop
inc %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r13)
nop
nop
and $49945, %rdx
lea addresses_UC_ht+0x7bd0, %r14
inc %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
add %r8, %r8
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_WT+0xf71d, %r9
nop
xor %rbp, %rbp
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
add %r15, %r15

// Load
lea addresses_PSE+0x14ef5, %rbp
nop
nop
and %r8, %r8
mov (%rbp), %rax
xor $8506, %r12

// Store
lea addresses_WC+0x12019, %rax
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rax)
nop
add $44418, %rbp

// Store
lea addresses_UC+0x10f45, %rbp
nop
nop
dec %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
add %rbp, %rbp

// Store
lea addresses_D+0x1110d, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub $13589, %r15

// Store
lea addresses_US+0x58f5, %rax
clflush (%rax)
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_D+0x30f5, %r12
xor $39792, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
xor %r15, %r15

// Faulty Load
lea addresses_D+0x30f5, %rbp
nop
cmp $32496, %r12
mov (%rbp), %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 67}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
