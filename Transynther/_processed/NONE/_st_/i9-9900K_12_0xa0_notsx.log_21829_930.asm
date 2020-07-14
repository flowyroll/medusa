.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbe68, %rsi
lea addresses_WT_ht+0x66a8, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $97, %rcx
rep movsq
add %r14, %r14
lea addresses_UC_ht+0xc422, %rbp
clflush (%rbp)
nop
xor $42747, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x147dc, %rdi
add %rbp, %rbp
mov (%rdi), %r8d
cmp $58670, %r10
lea addresses_WT_ht+0x1c420, %r14
add $13183, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xda17, %r8
clflush (%r8)
nop
dec %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r8)
and $43702, %rbp
lea addresses_A_ht+0x6048, %r10
clflush (%r10)
nop
nop
nop
nop
nop
lfence
movb $0x61, (%r10)
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x4ba8, %rbp
nop
nop
nop
sub $1806, %rdi
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
nop
and $42294, %r10
lea addresses_D_ht+0x782e, %r10
nop
nop
nop
nop
nop
mfence
movb (%r10), %r8b
nop
nop
nop
cmp $5031, %r8
lea addresses_normal_ht+0x139e8, %r8
nop
nop
nop
nop
nop
inc %r14
mov (%r8), %bp
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x9120, %rsi
lea addresses_normal+0x1e268, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $121, %rcx
rep movsb
nop
nop
nop
inc %rcx

// REPMOV
lea addresses_WC+0xd644, %rsi
lea addresses_normal+0x1e268, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $14505, %r13

// Faulty Load
lea addresses_normal+0x1e268, %rdx
nop
nop
nop
and $43457, %rcx
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
