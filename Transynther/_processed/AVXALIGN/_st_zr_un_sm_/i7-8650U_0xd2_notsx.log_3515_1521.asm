.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x169c3, %rsi
lea addresses_WC_ht+0x141c3, %rdi
xor %r13, %r13
mov $94, %rcx
rep movsq
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x59c3, %rdx
nop
xor $28357, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xcec3, %rdx
nop
sub %r14, %r14
movl $0x61626364, (%rdx)
nop
xor $26402, %r14
lea addresses_WT_ht+0x114c3, %rsi
lea addresses_WC_ht+0xbc7, %rdi
nop
add %r9, %r9
mov $96, %rcx
rep movsb
inc %r12
lea addresses_WT_ht+0x54a3, %rsi
lea addresses_normal_ht+0x16243, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $54, %rcx
rep movsl
nop
nop
nop
nop
cmp $4117, %rcx
lea addresses_WC_ht+0x18ec3, %rsi
and %rdi, %rdi
mov (%rsi), %edx
inc %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xb303, %r12
cmp $40990, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x11cc3, %rsi
sub %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
cmp %r10, %r10

// Store
lea addresses_RW+0x6d1b, %r10
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r10)
nop
nop
and %r12, %r12

// Store
lea addresses_WT+0xe8b7, %rcx
nop
nop
nop
xor $3482, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovaps %ymm0, (%rcx)
nop
nop
inc %r12

// Store
lea addresses_D+0x16945, %rcx
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%rcx)
nop
and $49, %r9

// Faulty Load
lea addresses_A+0x11cc3, %r12
nop
nop
nop
nop
and $15624, %rsi
movaps (%r12), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'58': 3214, '00': 205, '24': 96}
58 00 58 58 58 58 00 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 24 58 00 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 24 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 24 58 58 58 58 24 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 24 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 24 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 24 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 24 58 58 58 58 58 58 58 58 00 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 24 00 24 58 58 58 58 58 00 24 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 24 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58
*/
