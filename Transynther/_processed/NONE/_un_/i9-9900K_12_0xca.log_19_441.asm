.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x171e9, %rsi
lea addresses_A_ht+0x6c95, %rdi
nop
add %r12, %r12
mov $9, %rcx
rep movsl
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x16c59, %rdx
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
mov $0xa49, %rsi
nop
nop
nop
nop
nop
xor $29039, %rax
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
add $61873, %rbx

// Store
lea addresses_PSE+0x2649, %rdx
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovntdq %ymm4, (%rdx)
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_A+0xfe49, %rbx
nop
nop
xor %r13, %r13
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'2f': 19}
2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f
*/
