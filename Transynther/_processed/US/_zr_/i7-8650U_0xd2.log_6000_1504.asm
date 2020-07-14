.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x11ad8, %rsi
lea addresses_WC_ht+0x16498, %rdi
nop
nop
nop
and %r13, %r13
mov $22, %rcx
rep movsq
nop
nop
sub %r12, %r12
lea addresses_D_ht+0xcc40, %rsi
lea addresses_WT_ht+0x11ad8, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0, %rcx
rep movsq
dec %rsi
lea addresses_WT_ht+0xb6d8, %rbx
nop
nop
nop
cmp $30217, %rcx
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xcad8, %rsi
lea addresses_normal_ht+0x11dd8, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $109, %rcx
rep movsl
nop
nop
nop
nop
add $17063, %rsi
lea addresses_WT_ht+0x1b2d8, %r12
nop
nop
add $42338, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r12)
nop
inc %rdx
lea addresses_WC_ht+0x1b93, %rsi
lea addresses_UC_ht+0x1fd8, %rdi
clflush (%rsi)
clflush (%rdi)
sub $8587, %r10
mov $103, %rcx
rep movsl
and $30058, %r10
lea addresses_D_ht+0x8760, %rsi
lea addresses_WT_ht+0x9f8, %rdi
nop
add %r13, %r13
mov $54, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x25a8, %rdi
nop
xor %r13, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $34521, %rdi
lea addresses_WT_ht+0x6ad8, %r13
nop
and $61086, %rbx
movb (%r13), %r10b
nop
dec %r10
lea addresses_A_ht+0x181c3, %r13
cmp $18867, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
and $50199, %r12
lea addresses_normal_ht+0x1ddd8, %rsi
lea addresses_WC_ht+0xad8, %rdi
clflush (%rsi)
nop
nop
nop
and %r10, %r10
mov $33, %rcx
rep movsl
nop
cmp $48595, %r13
lea addresses_WT_ht+0x27f0, %rdi
nop
nop
nop
cmp %r10, %r10
mov (%rdi), %dx
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x11258, %rsi
lea addresses_WT_ht+0x80d8, %rdi
nop
nop
nop
add $8143, %r10
mov $52, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdx

// Store
lea addresses_RW+0x12e58, %rcx
nop
sub $21587, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rcx)
nop
dec %rdx

// Store
lea addresses_D+0x1d18, %rax
nop
nop
nop
nop
and $31802, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
cmp %r14, %r14

// Store
mov $0x50f38800000004d8, %r12
clflush (%r12)
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
dec %r13

// Store
lea addresses_RW+0x18ed8, %rax
nop
nop
dec %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WC+0x16518, %rax
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
and %rdx, %rdx

// Store
mov $0x618, %rax
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rax)
nop
add %r14, %r14

// Faulty Load
lea addresses_US+0x1dad8, %r10
and $61690, %r14
mov (%r10), %r13d
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'00': 6000}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
