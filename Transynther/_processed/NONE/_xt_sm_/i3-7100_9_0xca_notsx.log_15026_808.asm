.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x167f3, %rsi
lea addresses_WC_ht+0xa9f3, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $106, %rcx
rep movsb
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x8353, %rsi
nop
nop
nop
nop
cmp $19740, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
cmp $36490, %rdi
lea addresses_D_ht+0x2e33, %rsi
lea addresses_WC_ht+0x12ee7, %rdi
nop
nop
cmp %r10, %r10
mov $65, %rcx
rep movsl
nop
nop
nop
nop
sub $12892, %r9
lea addresses_D_ht+0x1bc53, %r10
clflush (%r10)
nop
add $45131, %r13
mov (%r10), %rdx
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1653, %rsi
lea addresses_normal_ht+0x5453, %rdi
nop
nop
nop
nop
nop
add $42614, %r15
mov $29, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x1653, %rsi
lea addresses_WC_ht+0x1bed3, %rdi
nop
cmp $63356, %r10
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $61597, %r9
lea addresses_WC_ht+0x9453, %rcx
nop
nop
nop
add %r10, %r10
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
nop
add $56528, %r9
lea addresses_A_ht+0xdc53, %r10
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
cmp $28189, %r15
lea addresses_UC_ht+0x10b53, %rsi
nop
nop
nop
nop
xor $44239, %r13
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
nop
sub $19617, %r15
lea addresses_A_ht+0x3cd3, %rsi
lea addresses_WT_ht+0x99d3, %rdi
nop
add %r13, %r13
mov $34, %rcx
rep movsb
nop
nop
and $34073, %r9
lea addresses_A_ht+0x2c53, %rsi
lea addresses_normal_ht+0x10453, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $61, %rcx
rep movsq
inc %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x80d3, %rsi
lea addresses_UC+0x453, %rdi
clflush (%rsi)
nop
nop
xor $37619, %r12
mov $18, %rcx
rep movsl
nop
nop
nop
nop
cmp $63857, %rbx

// Store
lea addresses_A+0x1e3d3, %rsi
nop
nop
xor $44681, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_RW+0x7c53, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovaps %ymm1, (%rcx)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x1c053, %rdx
nop
nop
nop
nop
sub %r13, %r13
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_RW+0x7c53, %r12
nop
nop
nop
cmp %rbx, %rbx
mov (%r12), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'58': 15026}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
