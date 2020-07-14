.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ab87, %r15
nop
nop
and $19229, %r9
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
xor %rax, %rax
lea addresses_A_ht+0xcdad, %r12
clflush (%r12)
nop
nop
and %r15, %r15
mov (%r12), %rdi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1a7ce, %rsi
lea addresses_UC_ht+0x1b187, %rdi
nop
nop
inc %r8
mov $73, %rcx
rep movsw
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1e411, %rsi
lea addresses_WC_ht+0x83b3, %rdi
nop
add $64677, %r12
mov $97, %rcx
rep movsq
nop
nop
nop
cmp $23534, %r8
lea addresses_WT_ht+0x6e41, %rsi
lea addresses_UC_ht+0x31c7, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $99, %rcx
rep movsq
nop
nop
add $15266, %r8
lea addresses_normal_ht+0x12787, %r9
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x1d667, %rdi
nop
nop
nop
nop
dec %r9
mov (%rdi), %r8w
nop
nop
and $51758, %rsi
lea addresses_normal_ht+0x18407, %rdi
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
inc %r9
lea addresses_WT_ht+0x8387, %rcx
nop
nop
nop
nop
sub %r15, %r15
movw $0x6162, (%rcx)
nop
nop
xor $46278, %r8
lea addresses_A_ht+0x2047, %rsi
lea addresses_WC_ht+0x1b37, %rdi
nop
nop
cmp %rax, %rax
mov $74, %rcx
rep movsl
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x17a07, %r12
nop
and $1869, %r8
mov (%r12), %rcx
nop
nop
add $56450, %r8
lea addresses_normal_ht+0x7c87, %rsi
lea addresses_D_ht+0x19787, %rdi
clflush (%rdi)
nop
nop
nop
add %rax, %rax
mov $127, %rcx
rep movsb
nop
sub %r15, %r15
lea addresses_WC_ht+0x15b11, %r12
nop
nop
nop
and $56288, %rdi
mov (%r12), %r8d
nop
nop
sub $5223, %rdi
lea addresses_WC_ht+0x40b7, %rax
clflush (%rax)
inc %r15
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x48a7, %rdi
nop
nop
nop
nop
nop
inc %r8
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add $25748, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0x1e087, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0x1d187, %r12
nop
nop
nop
nop
sub $43417, %rax
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
add $57526, %r8

// Store
lea addresses_PSE+0x1af87, %r8
xor %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x17f87, %r14
nop
nop
nop
add $1586, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r14)
nop
and %rsi, %rsi

// Store
lea addresses_US+0x1eb87, %rax
nop
nop
nop
nop
add $56764, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_WT+0xeb87, %r8
inc %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
cmp $20002, %rcx

// Faulty Load
lea addresses_normal+0x17f87, %rsi
nop
sub %r8, %r8
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'58': 27}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
