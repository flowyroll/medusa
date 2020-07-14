.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rsi
lea addresses_normal_ht+0xd159, %r13
nop
nop
nop
and $38108, %rbx
movw $0x6162, (%r13)
nop
nop
nop
add $809, %r14
lea addresses_WC_ht+0xa756, %rsi
nop
nop
cmp %r15, %r15
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x9156, %rsi
nop
sub $52572, %r14
movb (%rsi), %r13b
nop
sub $49059, %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x4800ae0000000356, %rax
nop
sub $33094, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x356, %rdx
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x4800ae0000000356, %rdi
nop
nop
and %rbp, %rbp
movb (%rdi), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'00': 86, '58': 7, 'e0': 2}
00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 58 00 00 00 58 00 00 00 00
*/
