.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x37b5, %r8
nop
nop
nop
nop
nop
dec %r9
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r12
add %r15, %r15
lea addresses_A_ht+0x16975, %r15
nop
cmp $57564, %rax
mov $0x6162636465666768, %r13
movq %r13, (%r15)
xor %r15, %r15
lea addresses_WC_ht+0x1e83d, %r8
and %rbp, %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x179b5, %rsi
lea addresses_WT_ht+0x5d55, %rdi
nop
nop
nop
dec %r8
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $4138, %r8
lea addresses_normal_ht+0x1d4e5, %rax
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rax)
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x1b7b5, %rsi
lea addresses_A+0x1fc95, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_RW+0x1e9b5, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
