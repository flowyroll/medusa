.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbx
lea addresses_D_ht+0x14d73, %rbx
nop
nop
nop
nop
add %r9, %r9
mov (%rbx), %r14d
nop
nop
nop
nop
nop
add $23259, %r12
pop %rbx
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdx

// Load
lea addresses_A+0x6d73, %r8
nop
nop
nop
nop
sub %r9, %r9
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
xor $5729, %r9

// Store
lea addresses_WT+0xed73, %rdx
nop
nop
dec %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
add $37201, %rcx

// Faulty Load
lea addresses_A+0x6d73, %r14
clflush (%r14)
nop
xor $58221, %r9
mov (%r14), %cx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'54': 7}
54 54 54 54 54 54 54
*/
