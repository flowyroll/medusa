.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x148ca, %rcx
nop
nop
nop
nop
sub %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0xb98a, %rsi
lea addresses_D_ht+0x9d4a, %rdi
sub %r14, %r14
mov $67, %rcx
rep movsl
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x90ca, %rdi
nop
nop
nop
add $37635, %rsi
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'00': 1}
00
*/
