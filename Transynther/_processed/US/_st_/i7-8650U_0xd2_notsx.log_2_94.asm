.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaca3, %rsi
lea addresses_A_ht+0x3fb3, %rdi
nop
cmp $52388, %r13
mov $98, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_WT_ht+0x11ea3, %rsi
lea addresses_normal_ht+0x144a3, %rdi
nop
nop
nop
and $6996, %r14
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $24962, %r12
lea addresses_UC_ht+0x4161, %rsi
nop
nop
nop
add $29868, %rbx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx

// Store
mov $0x2a8c0000000ca3, %rax
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_US+0x7ca3, %r14
clflush (%r14)
nop
nop
nop
nop
nop
inc %rax
mov (%r14), %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 2}
58 58
*/
