.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x119e9, %r8
nop
cmp %r10, %r10
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
dec %r13
lea addresses_A_ht+0x1301d, %r13
nop
nop
nop
inc %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x4ec9, %rax
nop
nop
nop
sub $12364, %rbp
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
cmp $7093, %rax
lea addresses_A_ht+0x400d, %r14
nop
nop
xor $62956, %r12
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
and $53851, %r10
lea addresses_WT_ht+0x14939, %rax
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm1
and $0xffffffffffffffc0, %rax
movntdq %xmm1, (%rax)
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0xae09, %r8
nop
nop
nop
nop
and %r13, %r13
mov (%r8), %eax
nop
add $2525, %rbp
lea addresses_WC_ht+0x1a2c9, %rsi
lea addresses_WC_ht+0xfe09, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $124, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_A_ht+0x6989, %rsi
nop
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rsi)
add $35248, %rcx
lea addresses_D_ht+0x1841f, %r10
add $29688, %r8
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $23736, %r10
lea addresses_A_ht+0xb111, %rsi
lea addresses_UC_ht+0xac89, %rdi
nop
nop
nop
nop
add $28881, %rbp
mov $2, %rcx
rep movsl
inc %rax
lea addresses_D_ht+0xf3c9, %rbp
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rbp), %r8b
nop
add $23293, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_WT+0x1eec9, %r15
nop
nop
nop
nop
nop
inc %r12
mov (%r15), %ax
nop
inc %rax

// Store
mov $0x3f90f300000008c9, %rdi
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_WT+0x1eec9, %r12
xor $8068, %rbx
mov (%r12), %r15w
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'39': 8}
39 39 39 39 39 39 39 39
*/
