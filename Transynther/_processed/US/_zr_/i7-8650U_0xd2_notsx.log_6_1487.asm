.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x40de, %rbx
nop
nop
nop
nop
nop
dec %r12
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
nop
sub $64063, %r8
lea addresses_UC_ht+0x1d27e, %rsi
lea addresses_WC_ht+0xe07e, %rdi
nop
nop
nop
cmp $11975, %rbx
mov $44, %rcx
rep movsl
nop
sub %r8, %r8
lea addresses_WC_ht+0x1ec7e, %r8
sub %rdx, %rdx
mov (%r8), %rcx
and $19373, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Load
lea addresses_D+0x1ed7e, %rax
nop
nop
and %rsi, %rsi
mov (%rax), %edi
nop
cmp %r13, %r13

// Store
lea addresses_US+0x907e, %r9
nop
nop
add $32191, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovntdq %ymm3, (%r9)
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x6a2cde0000000eae, %r9
nop
nop
dec %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_US+0x907e, %rbp
nop
nop
and $36775, %rsi
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
