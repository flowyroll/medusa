.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x7a7a, %rdx
nop
xor $14558, %r10
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
nop
cmp $4908, %r15
lea addresses_A_ht+0x9fba, %r12
nop
add $22873, %r13
mov (%r12), %ebx
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x3fda, %r12
nop
nop
nop
nop
nop
and $37338, %r15
mov (%r12), %rbx
nop
and %r12, %r12
lea addresses_UC_ht+0xbcda, %rdx
nop
nop
nop
nop
nop
add $35671, %r10
mov (%rdx), %r13w
sub %r8, %r8
lea addresses_normal_ht+0x1199e, %r13
nop
nop
nop
nop
and %r8, %r8
movw $0x6162, (%r13)
sub $34943, %r12
lea addresses_WC_ht+0xcd40, %rsi
lea addresses_A_ht+0xca7a, %rdi
nop
nop
nop
nop
and $10313, %r8
mov $80, %rcx
rep movsq
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x4986, %rsi
lea addresses_UC_ht+0x6824, %rdi
nop
nop
nop
dec %r13
mov $105, %rcx
rep movsb
inc %rsi
lea addresses_normal_ht+0x18ada, %rsi
lea addresses_WT_ht+0xaaaa, %rdi
nop
nop
sub $4278, %rbx
mov $105, %rcx
rep movsl
nop
nop
nop
nop
xor $39239, %rbx
lea addresses_WC_ht+0x36da, %rdx
nop
nop
nop
cmp $31475, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rdx
vmovaps %ymm3, (%rdx)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x2958, %r8
nop
nop
nop
nop
cmp %r15, %r15
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0xcb1a, %rsi
lea addresses_D_ht+0x2f76, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $106, %rcx
rep movsq
nop
add %r10, %r10
lea addresses_UC_ht+0x1195a, %rdi
cmp $22371, %r13
movw $0x6162, (%rdi)
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x152da, %rsi
lea addresses_D_ht+0x1beda, %rdi
nop
nop
add $38929, %rdx
mov $6, %rcx
rep movsw
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x186da, %r9
cmp $14310, %rcx
mov (%r9), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
