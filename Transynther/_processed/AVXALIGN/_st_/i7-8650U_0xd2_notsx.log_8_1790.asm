.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x285b, %r12
nop
nop
nop
add %r9, %r9
mov (%r12), %r15d
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x518b, %rax
nop
nop
inc %r9
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
xor $46380, %r10
lea addresses_WT_ht+0x947d, %rsi
lea addresses_D_ht+0xb65b, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $116, %rcx
rep movsb
nop
nop
nop
nop
nop
and $51504, %rsi
lea addresses_WT_ht+0x1185b, %r9
nop
dec %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r9)
sub %r9, %r9
lea addresses_WC_ht+0x9a5b, %r15
nop
nop
nop
cmp $31970, %rcx
movw $0x6162, (%r15)
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x41a4, %rsi
lea addresses_normal_ht+0xec1b, %rdi
nop
nop
add %r10, %r10
mov $23, %rcx
rep movsq
nop
nop
inc %rdx
lea addresses_normal_ht+0x126df, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %r10, %r10
mov (%r12), %ecx
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x1c4fb, %rsi
lea addresses_UC_ht+0x1b81b, %rdi
nop
cmp $17261, %r9
mov $122, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0x1ceb, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%rax)
nop
sub $56887, %r10

// Faulty Load
lea addresses_WT+0x1c45b, %r12
cmp %rbx, %rbx
mov (%r12), %ax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'39': 8}
39 39 39 39 39 39 39 39
*/
