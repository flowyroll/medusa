.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_UC_ht+0x9fb1, %r12
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%r12)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x88d1, %rdx
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
add $64303, %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_A+0x10b1, %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'53': 3, '52': 6, '86': 2, '06': 1, '2d': 1, '91': 2}
06 52 2d 52 52 52 52 52 91 53 91 53 86 86 53
*/
