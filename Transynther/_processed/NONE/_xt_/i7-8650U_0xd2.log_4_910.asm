.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x805b, %rsi
nop
nop
nop
nop
inc %rdi
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xe6c7, %rsi
lea addresses_WT_ht+0xc847, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $50, %rcx
rep movsw
nop
nop
nop
nop
xor $6648, %r12
lea addresses_A_ht+0x11047, %rsi
lea addresses_D_ht+0x14f97, %rdi
nop
nop
nop
cmp $16424, %r14
mov $75, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x42d5, %r14
nop
nop
sub %rcx, %rcx
movb (%r14), %r12b
nop
nop
nop
xor $45642, %rdi
lea addresses_A_ht+0x5847, %r14
sub $32413, %rsi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
dec %r12
lea addresses_D_ht+0x1b0e7, %rsi
lea addresses_WC_ht+0xcc2f, %rdi
clflush (%rdi)
nop
add $12147, %r14
mov $30, %rcx
rep movsb
nop
nop
xor $58123, %rbp
lea addresses_UC_ht+0x14c47, %rdi
add %r9, %r9
movw $0x6162, (%rdi)
xor $34691, %rbp
lea addresses_UC_ht+0x2047, %rsi
lea addresses_normal_ht+0x18ec7, %rdi
nop
dec %r15
mov $28, %rcx
rep movsb
nop
nop
add $60527, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x847, %rax
nop
xor %r8, %r8
mov (%rax), %r12
nop
nop
add $16813, %rbx

// Store
lea addresses_PSE+0xcbc7, %r12
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r12)
nop
dec %rax

// REPMOV
lea addresses_UC+0x1d347, %rsi
lea addresses_UC+0x19047, %rdi
xor $41115, %r12
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_RW+0x847, %r15
nop
nop
nop
dec %r12
mov (%r15), %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'32': 4}
32 32 32 32
*/
