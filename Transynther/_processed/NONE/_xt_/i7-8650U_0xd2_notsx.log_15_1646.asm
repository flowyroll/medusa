.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15ab7, %r10
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
xor $9974, %rsi
lea addresses_A_ht+0x10195, %rsi
nop
nop
and $52811, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rsi)
nop
nop
cmp $50101, %r12
lea addresses_A_ht+0x1b55e, %rsi
lea addresses_D_ht+0x1b1f7, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $117, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x627f, %r12
nop
nop
nop
sub $59626, %r10
movb (%r12), %cl
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1b60f, %rbp
nop
nop
nop
nop
sub $2882, %rsi
mov (%rbp), %r10w
nop
cmp %r12, %r12
lea addresses_A_ht+0x9637, %rsi
nop
nop
cmp $12961, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x1da7f, %rbp
nop
nop
xor $51135, %rdi
mov (%rbp), %r12
nop
nop
nop
add $33231, %rsi
lea addresses_WT_ht+0x7eaf, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x1e47f, %rsi
nop
nop
and $34631, %r12
mov (%rsi), %r10d
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xaa7f, %rsi
lea addresses_WT_ht+0x19bff, %rdi
nop
lfence
mov $22, %rcx
rep movsb
nop
nop
lfence
lea addresses_D_ht+0x32ff, %rsi
nop
nop
nop
add $62052, %rbp
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x1127f, %rdi
nop
nop
xor $39414, %rsi
mov (%rdi), %bp
and %r8, %r8
lea addresses_D_ht+0x17cff, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
mov (%rsi), %cx
add $4032, %rbp
lea addresses_WT_ht+0xdc7f, %rsi
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%rsi)
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rdi
push %rdx

// Store
mov $0x6fd7be0000000bd7, %rdx
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x1127f, %rdx
nop
inc %r9
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'34': 15}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
