.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x99f1, %rsi
lea addresses_normal+0x1a9f1, %rdi
nop
nop
nop
nop
nop
cmp $35612, %rbp
mov $29, %rcx
rep movsl
nop
inc %rcx

// Store
lea addresses_D+0x99f1, %r13
nop
nop
nop
nop
nop
cmp $373, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
inc %r13

// Load
lea addresses_D+0x99f1, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_D+0x99f1, %rbp
nop
nop
nop
nop
nop
and $41584, %r13
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'58': 19}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
