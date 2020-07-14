.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4e3f, %rsi
lea addresses_WC_ht+0x26ff, %rdi
nop
nop
and %rbx, %rbx
mov $103, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1cf98, %r9
nop
nop
nop
add $1754, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x6eff, %r9
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r9
movaps %xmm1, (%r9)
and $1035, %rcx
lea addresses_WC_ht+0x1afdf, %rsi
lea addresses_WC_ht+0xf6ff, %rdi
xor $34491, %r12
mov $32, %rcx
rep movsw
nop
nop
nop
nop
add $50462, %rsi
lea addresses_UC_ht+0x12357, %rsi
lea addresses_D_ht+0xb7fb, %rdi
nop
nop
cmp $45951, %rdx
mov $107, %rcx
rep movsq
add %rdx, %rdx
lea addresses_UC_ht+0x193ff, %rsi
nop
nop
nop
cmp $20971, %rbx
movw $0x6162, (%rsi)
nop
and %r12, %r12
lea addresses_WC_ht+0xa2ff, %r9
nop
nop
nop
nop
xor $14205, %rcx
mov (%r9), %rdx
cmp %rsi, %rsi
lea addresses_D_ht+0x1327f, %rdi
nop
and $7855, %r12
movb $0x61, (%rdi)
and %rbx, %rbx
lea addresses_UC_ht+0x2aff, %r9
nop
nop
nop
nop
nop
sub $28742, %rcx
movb (%r9), %r14b
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x146ff, %rsi
lea addresses_normal_ht+0x1cb3f, %rdi
nop
inc %r14
mov $33, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x2edf, %rdx
nop
nop
nop
nop
nop
inc %rcx
vmovups (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
sub $38156, %rdi
lea addresses_WT_ht+0x3ab, %r12
nop
nop
xor %rdx, %rdx
movups (%r12), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
sub $37658, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_WC+0x1e6ff, %rdi
nop
nop
nop
nop
cmp $35558, %r8
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'38': 119}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
