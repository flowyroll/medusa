.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rcx
lea addresses_D_ht+0x1d748, %r13
nop
sub %rcx, %rcx
movb $0x61, (%r13)
nop
nop
nop
nop
add %r14, %r14
pop %rcx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x18748, %rdx
nop
nop
and %r14, %r14
movl $0x51525354, (%rdx)
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_WT+0x18748, %rbx
nop
nop
nop
nop
inc %r8
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
and $26863, %r14

// Faulty Load
lea addresses_WT+0x18748, %rcx
nop
nop
nop
nop
add $41521, %rax
movaps (%rcx), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'54': 8}
54 54 54 54 54 54 54 54
*/
