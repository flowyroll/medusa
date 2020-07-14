.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x117de, %r12
cmp %rax, %rax
movw $0x6162, (%r12)
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0xecca, %r12
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x19a3a, %rcx
nop
nop
nop
nop
dec %r8
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
sub $59728, %rax
lea addresses_A_ht+0x1d4c2, %rbx
nop
nop
sub %r12, %r12
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r13
add %rax, %rax
lea addresses_D_ht+0x151ba, %r13
nop
nop
nop
nop
nop
xor $25419, %rbx
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
and $49142, %r8
lea addresses_WT_ht+0x1ee2, %rbx
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x67fa, %r10
nop
nop
inc %r8
movl $0x61626364, (%r10)
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0xd1ba, %rsi
lea addresses_UC_ht+0xe5a, %rdi
and $35223, %r13
mov $106, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x16e1a, %r10
nop
nop
nop
inc %rbx
movb $0x61, (%r10)
nop
nop
nop
and $26565, %r8
lea addresses_WC_ht+0x1e452, %rbx
nop
nop
nop
nop
nop
xor $31136, %rsi
mov (%rbx), %rdi
nop
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x18efa, %rcx
nop
nop
nop
nop
nop
sub $8961, %r8
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
add $11406, %rcx
lea addresses_UC_ht+0x154ba, %rsi
lea addresses_WC_ht+0x7742, %rdi
and %rbx, %rbx
mov $76, %rcx
rep movsl
nop
nop
nop
nop
cmp $46404, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x191a3, %rdi
nop
nop
nop
nop
nop
cmp $4909, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x105ba, %r14
nop
nop
nop
add %rbp, %rbp
mov (%r14), %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'00': 138, '48': 9, '1a': 3, 'a2': 5, 'e0': 1, '47': 5}
00 00 00 00 00 00 00 00 00 00 a2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 47 48 00 48 00 47 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a2 47 00 1a 47 00 a2 00 00 00 e0 00 1a 48 00 00 a2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a2 00 00 00 00 00 48 00 00 00 00
*/
