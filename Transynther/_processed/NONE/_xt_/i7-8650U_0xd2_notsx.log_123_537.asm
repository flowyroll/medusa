.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdx
lea addresses_A_ht+0x18075, %r10
nop
nop
nop
cmp %r14, %r14
mov (%r10), %r8
nop
xor $39994, %rbx
lea addresses_A_ht+0xde, %r12
nop
nop
nop
xor $49045, %rdx
mov (%r12), %r15
nop
nop
nop
xor %rdx, %rdx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xd495, %r10
nop
nop
nop
nop
nop
xor $49761, %rax
movb $0x51, (%r10)
nop
nop
and $59426, %rax

// Load
lea addresses_WC+0xd8d5, %r8
nop
nop
nop
nop
sub %rdi, %rdi
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
and %rbx, %rbx

// REPMOV
lea addresses_A+0x1899, %rsi
lea addresses_WC+0xc251, %rdi
clflush (%rsi)
cmp %r8, %r8
mov $54, %rcx
rep movsb
nop
nop
nop
nop
nop
add $62803, %rbx

// Store
mov $0xce5, %rax
nop
nop
xor $40917, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
xor $16011, %r10

// Store
lea addresses_WT+0xe43, %rbx
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
cmp $58237, %rdi

// Store
lea addresses_US+0x135df, %r15
clflush (%r15)
nop
nop
nop
sub $21916, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x1db95, %rax
clflush (%rax)
nop
nop
dec %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovntdq %ymm2, (%rax)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_D+0x15615, %r8
nop
nop
xor $4102, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_normal+0x19495, %r15
nop
nop
nop
nop
xor $8145, %rcx
mov (%r15), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'34': 123}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
