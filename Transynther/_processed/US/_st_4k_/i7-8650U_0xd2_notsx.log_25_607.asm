.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x18b72, %rax
nop
nop
nop
cmp $12716, %rsi
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
xor $50459, %rcx
lea addresses_A_ht+0x8cc6, %rdx
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rdx)
cmp %rbx, %rbx
lea addresses_UC_ht+0x13422, %rdx
nop
nop
nop
nop
nop
cmp $64324, %r12
mov (%rdx), %rsi
add $18935, %rbx
lea addresses_WC_ht+0x66f2, %rdi
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rdi)
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x2072, %rsi
lea addresses_WT_ht+0xc06f, %rdi
nop
nop
nop
inc %r13
mov $113, %rcx
rep movsw
cmp $6020, %rdx
lea addresses_A_ht+0x120f2, %rsi
lea addresses_normal_ht+0x6aea, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $81, %rcx
rep movsw
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x79f2, %rdx
and $60118, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x1acf2, %rbx
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rbx)
dec %r12
lea addresses_normal_ht+0x7bf2, %rsi
lea addresses_normal_ht+0x108b2, %rdi
nop
sub $8248, %rax
mov $105, %rcx
rep movsl
nop
nop
add $57162, %r13
lea addresses_normal_ht+0x15af2, %rsi
lea addresses_A_ht+0x5df2, %rdi
nop
nop
nop
add %rax, %rax
mov $84, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x73f2, %r12
nop
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi

// Load
lea addresses_normal+0x934e, %r10
nop
nop
nop
sub $52383, %r11
mov (%r10), %r14w
nop
cmp $61390, %r10

// Store
lea addresses_A+0x118f2, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rdi)
nop
add $3597, %r10

// Load
lea addresses_UC+0x6832, %r10
nop
nop
nop
and $52174, %rcx
movaps (%r10), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
add $36938, %rbp

// Faulty Load
lea addresses_US+0x78f2, %r11
nop
sub $39761, %r14
movups (%r11), %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
