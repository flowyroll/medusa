.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1df36, %rsi
lea addresses_D_ht+0x15d16, %rdi
nop
nop
and %rdx, %rdx
mov $20, %rcx
rep movsb
nop
nop
inc %r12
lea addresses_A_ht+0x8d7a, %r9
cmp $42967, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x162b6, %r13
nop
nop
nop
dec %r10
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'46': 4}
46 46 46 46
*/
