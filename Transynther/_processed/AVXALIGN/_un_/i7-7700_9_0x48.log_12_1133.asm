.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7dc9, %rsi
lea addresses_WT_ht+0x1e762, %rdi
nop
nop
and $56596, %r14
mov $14, %rcx
rep movsb
inc %rsi
lea addresses_WT_ht+0xc862, %rbp
clflush (%rbp)
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
sub $23284, %rsi
lea addresses_normal_ht+0xd2c2, %r9
nop
lfence
movb (%r9), %cl
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_WC+0x1f162, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
vmovntdqa (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'08': 4, '72': 8}
72 08 08 72 72 72 72 72 72 08 72 08
*/
