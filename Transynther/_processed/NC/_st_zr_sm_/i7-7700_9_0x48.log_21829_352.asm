.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x120f7, %rax
nop
nop
nop
nop
nop
sub $57930, %r15
mov (%rax), %r12
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x119f7, %rsi
lea addresses_D_ht+0xeb8f, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $66, %rcx
rep movsl
dec %r15
lea addresses_D_ht+0x4077, %rsi
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
sub %r8, %r8
lea addresses_UC_ht+0x1e4f7, %r12
nop
nop
nop
nop
xor %r15, %r15
movb (%r12), %cl
nop
nop
nop
dec %r8
lea addresses_WC_ht+0x1bd77, %r15
clflush (%r15)
xor %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1b6f7, %rax
nop
nop
nop
nop
nop
xor $63080, %r15
movb $0x61, (%rax)
nop
dec %r8
lea addresses_D_ht+0x1164f, %rdi
nop
nop
nop
nop
xor $27031, %rcx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
add $23326, %rax
lea addresses_D_ht+0x8869, %rdi
nop
nop
xor $21613, %r8
movb (%rdi), %al
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x11af7, %rsi
lea addresses_normal_ht+0x19c3e, %rdi
nop
cmp $44000, %rdx
mov $33, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_D_ht+0x11ef7, %r15
nop
nop
nop
nop
nop
cmp $46490, %rax
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0x23a91f0000000ef7, %rdx
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
cmp %rdx, %rdx

// Faulty Load
mov $0x23a91f0000000ef7, %r9
nop
add $1845, %rdi
mov (%r9), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'58': 19040, '00': 2789}
58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 58 00 00 00 00 00 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
