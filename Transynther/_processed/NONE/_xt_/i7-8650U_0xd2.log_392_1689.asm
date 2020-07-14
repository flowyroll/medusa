.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1abe4, %r12
nop
nop
nop
nop
nop
add $8787, %r15
mov (%r12), %rdx
nop
nop
nop
nop
add $17727, %rsi
lea addresses_A_ht+0x1cb4, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $3096, %rbx
movw $0x6162, (%r10)
sub $14026, %rdx
lea addresses_A_ht+0xd7b4, %rbx
nop
nop
nop
nop
nop
xor $30697, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %rbx
vmovaps %ymm5, (%rbx)
nop
nop
nop
nop
nop
xor $41921, %rdx
lea addresses_UC_ht+0x19576, %rbx
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
dec %r12
lea addresses_UC_ht+0x3c34, %r10
xor $8531, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r10)
inc %rsi
lea addresses_normal_ht+0x176f8, %r12
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x11ef4, %r15
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r15
movntdq %xmm3, (%r15)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x7734, %rbx
nop
nop
nop
nop
cmp $25094, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x1a024, %rsi
lea addresses_A_ht+0x5e0, %rdi
clflush (%rsi)
nop
nop
cmp $3325, %r10
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $53614, %r12
lea addresses_UC_ht+0x1a434, %rsi
lea addresses_D_ht+0x1ebe, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r15, %r15
mov $10, %rcx
rep movsb
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1b374, %rdx
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x7918, %rsi
nop
nop
add $37101, %r12
mov (%rsi), %r13w
nop
nop
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xab34, %rsi
lea addresses_RW+0x9554, %rdi
clflush (%rsi)
nop
nop
add %r8, %r8
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_RW+0x11834, %rcx
nop
sub %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
and $63623, %rax

// Faulty Load
lea addresses_normal+0x2434, %r9
nop
sub $63125, %r15
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'34': 392}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
