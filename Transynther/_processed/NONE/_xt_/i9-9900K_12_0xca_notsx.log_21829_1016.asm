.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a967, %rsi
lea addresses_WC_ht+0x1b24b, %rdi
add $37272, %r15
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $9663, %r9
lea addresses_normal_ht+0x9d67, %r12
nop
nop
nop
nop
nop
cmp $22396, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
cmp $31758, %rcx
lea addresses_WT_ht+0x34a7, %rsi
lea addresses_D_ht+0xb4af, %rdi
clflush (%rdi)
nop
nop
nop
xor $42251, %r14
mov $41, %rcx
rep movsq
nop
nop
nop
add $35876, %rdi
lea addresses_UC_ht+0x11287, %r9
nop
nop
nop
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
nop
xor $12053, %r9
lea addresses_D_ht+0x14cf7, %rsi
lea addresses_D_ht+0x7567, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $32520, %r15
mov $62, %rcx
rep movsw
nop
and $40208, %rsi
lea addresses_D_ht+0x669, %rsi
lea addresses_WT_ht+0x12467, %rdi
clflush (%rdi)
nop
nop
nop
cmp $39790, %r15
mov $29, %rcx
rep movsw
nop
add $44467, %r12
lea addresses_A_ht+0x9d67, %r15
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1a5d7, %rsi
lea addresses_normal_ht+0xc967, %rdi
nop
add %r14, %r14
mov $10, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x3c67, %rsi
lea addresses_UC_ht+0x8f67, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $15, %rcx
rep movsw
nop
nop
nop
add $53410, %rcx
lea addresses_UC_ht+0xad67, %rdi
nop
nop
nop
nop
inc %r8
mov (%rdi), %r9w
nop
nop
nop
nop
cmp $13999, %r9
lea addresses_UC_ht+0x1797, %rsi
lea addresses_WC_ht+0x17c67, %rdi
nop
and $38643, %r15
mov $92, %rcx
rep movsw
and %r12, %r12
lea addresses_A_ht+0x3b43, %rsi
nop
nop
nop
sub $19607, %rcx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r8
nop
sub %r9, %r9
lea addresses_normal_ht+0x3967, %r15
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rcx
push %rdx

// Faulty Load
lea addresses_normal+0x2d67, %rcx
nop
nop
nop
nop
add %r15, %r15
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
