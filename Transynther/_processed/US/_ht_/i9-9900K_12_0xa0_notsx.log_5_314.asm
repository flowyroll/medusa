.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1139a, %rbp
nop
nop
dec %r9
mov (%rbp), %rbx
nop
nop
and $20632, %r9
lea addresses_normal_ht+0x121fa, %rsi
lea addresses_A_ht+0x171fa, %rdi
nop
and $34303, %r10
mov $66, %rcx
rep movsw
nop
nop
nop
nop
add $22612, %rsi
lea addresses_WC_ht+0x25fa, %r9
clflush (%r9)
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r9)
sub %rsi, %rsi
lea addresses_D_ht+0x129fa, %rbp
nop
nop
nop
nop
nop
add $14503, %rcx
mov (%rbp), %r9
xor $63051, %rdi
lea addresses_D_ht+0x3afa, %rsi
lea addresses_A_ht+0x647a, %rdi
nop
add $2972, %r14
mov $49, %rcx
rep movsq
add %r9, %r9
lea addresses_UC_ht+0xb7a2, %rsi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%rsi), %bp
and %rsi, %rsi
lea addresses_normal_ht+0xb9fa, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x18dfa, %rsi
lea addresses_WT_ht+0x903a, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $0, %rcx
rep movsb
and %rsi, %rsi
lea addresses_D_ht+0x1731a, %rsi
nop
nop
nop
cmp %r14, %r14
movb $0x61, (%rsi)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x12e2a, %rsi
lea addresses_UC_ht+0x79fa, %rdi
clflush (%rsi)
cmp $41318, %r10
mov $103, %rcx
rep movsq
nop
sub $54792, %r10
lea addresses_A_ht+0x3a4a, %rsi
lea addresses_A_ht+0x9eba, %rdi
nop
add $12052, %rbp
mov $102, %rcx
rep movsl
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x8896, %rsi
lea addresses_WT_ht+0xfefa, %rdi
nop
nop
nop
xor $7114, %rbp
mov $61, %rcx
rep movsl
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rax
push %rdi

// Faulty Load
lea addresses_US+0x61fa, %r12
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'45': 5}
45 45 45 45 45
*/
