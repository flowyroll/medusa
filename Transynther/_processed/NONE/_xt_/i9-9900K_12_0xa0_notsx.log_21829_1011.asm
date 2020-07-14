.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d069, %r12
nop
add $25622, %r15
movb (%r12), %cl
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0xdb59, %rsi
lea addresses_WC_ht+0x1cc29, %rdi
nop
nop
nop
sub $50775, %rdx
mov $81, %rcx
rep movsq
nop
nop
and $63752, %rsi
lea addresses_D_ht+0x1e729, %rcx
nop
nop
dec %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rcx)
nop
xor $16452, %r15
lea addresses_WT_ht+0x1bf29, %rdx
nop
nop
xor $10118, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rdx)
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x16539, %rsi
add $42403, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1b909, %r15
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r15)
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x8929, %rcx
nop
cmp $50960, %rsi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
and %rsi, %rsi
lea addresses_A_ht+0xd09, %rdi
nop
and $60097, %rbp
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x1d8c9, %rdx
nop
nop
nop
nop
sub %r15, %r15
mov (%rdx), %r12
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x124d9, %rdx
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1c4f9, %rsi
lea addresses_D_ht+0xfa39, %rdi
nop
nop
nop
nop
sub $40728, %r8
mov $124, %rcx
rep movsw
nop
nop
nop
nop
and $51830, %rbp
lea addresses_A_ht+0x4da9, %rbp
clflush (%rbp)
nop
nop
and $15211, %rdx
mov (%rbp), %r12w
nop
nop
cmp $19975, %rsi
lea addresses_D_ht+0x110e9, %rsi
lea addresses_A_ht+0x1c49, %rdi
nop
nop
nop
and $23549, %r8
mov $107, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_normal_ht+0x193a9, %rsi
lea addresses_A_ht+0x1b0a9, %rdi
nop
sub $29808, %rdx
mov $4, %rcx
rep movsb
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x10b29, %rax
nop
nop
nop
nop
nop
add $27530, %r9
movl $0x51525354, (%rax)
nop
nop
nop
add %r15, %r15

// Load
lea addresses_A+0x7ac9, %r12
nop
nop
sub $33753, %rdi
mov (%r12), %r15
and $43426, %rax

// REPMOV
lea addresses_D+0xd0a9, %rsi
lea addresses_UC+0x10ab9, %rdi
nop
nop
nop
nop
nop
sub $34847, %rbp
mov $24, %rcx
rep movsq
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WC+0x5729, %rcx
nop
dec %r15
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
