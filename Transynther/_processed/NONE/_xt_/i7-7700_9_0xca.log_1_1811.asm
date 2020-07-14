.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbx
push %rsi
lea addresses_A_ht+0x1cf5f, %r14
nop
nop
xor %rax, %rax
mov (%r14), %rsi
nop
nop
nop
nop
nop
and $44025, %rbx
pop %rsi
pop %rbx
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x44bf, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %rbp
movl $0x51525354, (%rcx)
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xecbf, %r14
clflush (%r14)
nop
and %r13, %r13
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'33': 1}
33
*/
