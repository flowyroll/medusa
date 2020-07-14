.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4d97, %rsi
lea addresses_A_ht+0x19f97, %rdi
nop
add $12306, %r12
mov $77, %rcx
rep movsq
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_WC+0x4597, %r12
nop
nop
sub %r15, %r15
movw $0x5152, (%r12)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x6197, %r14
inc %r9
movw $0x5152, (%r14)
sub %r9, %r9

// Store
lea addresses_WC+0x4597, %rdx
nop
nop
nop
nop
xor $18162, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdx)
and $2654, %r15

// Faulty Load
lea addresses_WC+0x4597, %r9
nop
nop
nop
nop
nop
cmp $43350, %rdi
movaps (%r9), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'d2': 16, '08': 104, 'ff': 249, '6c': 11, '00': 21230, '8f': 219}
00 00 6c 6c 00 6c 00 00 6c 00 6c 6c 6c 00 6c 6c 6c 6c 00 ff ff ff ff ff ff 00 00 ff 00 00 ff 00 ff ff 00 ff 00 ff 00 ff ff ff 00 ff 00 00 ff 00 ff 00 ff 00 ff ff ff ff ff ff 00 00 ff 00 ff 00 ff ff ff ff ff 00 ff 00 ff ff ff 00 00 ff ff ff 00 00 ff 00 ff 00 ff 00 ff ff 00 00 ff 00 00 ff ff 00 00 ff 00 ff 00 ff ff ff ff 00 ff ff ff 00 ff 00 00 ff 00 ff 00 ff ff ff ff 00 00 00 00 ff 00 ff 00 ff ff ff ff 00 00 ff ff 00 ff ff 00 00 ff 00 ff 00 00 ff 00 ff ff 00 ff ff 00 ff 00 00 ff ff 00 ff ff 00 ff 00 ff ff 00 ff 00 00 ff 00 ff 00 ff ff ff ff ff 00 ff ff 00 00 ff 00 00 ff ff ff ff 00 00 00 ff 00 ff ff ff 00 ff 00 ff ff 00 ff 00 00 ff 00 ff 00 00 ff ff 00 00 ff ff 00 00 ff 00 00 ff ff ff 00 ff 00 ff 00 ff ff 00 ff ff 00 ff 00 ff 00 ff ff ff 00 ff 00 ff 00 00 00 ff ff 00 ff 00 ff ff ff 00 ff 00 ff 00 00 00 ff 00 ff ff 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 00 ff ff ff ff ff 00 ff 00 ff ff ff ff 00 ff ff 00 ff 00 ff 00 ff ff 00 ff 00 ff ff 00 ff 00 ff 00 00 ff 00 ff 00 ff ff 00 ff ff 00 ff ff ff 00 ff 00 ff 00 ff 00 00 ff 00 ff 00 ff ff 00 ff ff 00 ff 00 ff ff ff 00 00 ff ff 00 00 ff ff 00 00 ff 00 ff ff 00 ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff 00 00 00 ff 00 00 00 ff ff 00 ff 00 ff ff 00 ff ff 00 ff ff 00 ff ff ff ff 00 ff 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
