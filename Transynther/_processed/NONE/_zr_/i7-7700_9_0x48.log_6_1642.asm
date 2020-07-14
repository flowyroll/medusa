.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
lea addresses_A_ht+0x19a86, %r12
nop
nop
nop
nop
dec %rax
movw $0x6162, (%r12)
nop
and $47861, %r15
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0xa86, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovntdq %ymm0, (%r10)
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1c286, %rbp
nop
nop
nop
nop
nop
dec %rax
movb (%rbp), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'00': 6}
00 00 00 00 00 00
*/
