.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xa59, %rsi
lea addresses_D_ht+0x8519, %rdi
nop
nop
nop
nop
add $15115, %r10
mov $20, %rcx
rep movsl
add $28646, %rcx
lea addresses_WC_ht+0x13bf1, %rsi
lea addresses_A_ht+0x12a19, %rdi
nop
nop
nop
nop
xor $47529, %r14
mov $27, %rcx
rep movsw
cmp %r10, %r10
lea addresses_A_ht+0x13819, %rsi
nop
nop
nop
sub %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
and $40393, %rcx
lea addresses_WC_ht+0xc119, %r14
nop
nop
sub %r12, %r12
mov (%r14), %ecx
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x11119, %r10
mfence
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
add $33760, %r12
lea addresses_UC_ht+0x9771, %rsi
lea addresses_WT_ht+0x719, %rdi
nop
nop
sub $20935, %r12
mov $93, %rcx
rep movsw
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x73e9, %rsi
lea addresses_UC_ht+0x1ad19, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r12, %r12
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x10519, %r12
clflush (%r12)
nop
nop
nop
nop
sub $50167, %rdx
mov (%r12), %r10
nop
sub $65485, %rdi
lea addresses_UC_ht+0x3919, %r10
add $33678, %r14
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rcx
nop
cmp %r10, %r10
lea addresses_D_ht+0x1a2c5, %rsi
lea addresses_WC_ht+0x16b19, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $103, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_D_ht+0x6099, %rdi
nop
nop
xor %rsi, %rsi
movb $0x61, (%rdi)
nop
dec %rdx
lea addresses_WC_ht+0x165f9, %rdx
nop
nop
nop
add %r14, %r14
mov (%rdx), %rdi
dec %rdi
lea addresses_WC_ht+0x17519, %rsi
lea addresses_D_ht+0x18301, %rdi
nop
nop
nop
nop
add $58921, %rbp
mov $17, %rcx
rep movsl
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1c119, %r14
nop
add $60246, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_RW+0x6519, %r10
nop
nop
nop
dec %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_WT+0xb519, %rbx
nop
and %rax, %rax
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'2a': 2, '4c': 14, 'ee': 4, 'ed': 2, '4e': 4, 'c8': 2, '03': 3, '3a': 5, '94': 1, 'e2': 1, '1a': 3, '4b': 9, '52': 2, '72': 7, '3b': 2, '00': 9304, 'dc': 1, '38': 2, 'c6': 1, 'a6': 4, '18': 3, 'f8': 1, 'df': 1, 'c2': 3, '26': 1, '8a': 6, 'ea': 2, '16': 12, 'cc': 3, 'a8': 1, '58': 4, '46': 3879, 'e8': 2, 'b2': 2, 'f2': 1, '39': 1, '45': 8518, 'da': 3, '28': 1, 'e0': 12}
00 46 46 00 46 46 45 45 45 45 45 45 00 46 46 46 00 00 00 00 00 00 00 00 45 00 46 46 00 45 00 00 00 45 45 45 46 00 46 00 45 45 45 45 00 00 00 00 46 46 46 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 46 46 00 45 45 45 00 45 00 45 46 46 00 00 45 45 45 00 45 45 45 45 46 46 45 45 45 00 45 45 45 45 00 45 45 45 46 46 00 00 45 45 00 00 45 00 45 46 00 00 45 45 45 00 45 45 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 46 46 00 00 00 00 00 00 00 00 45 46 00 46 00 46 00 45 00 45 46 46 00 00 45 45 45 00 45 45 45 00 45 00 00 00 00 00 00 00 00 45 46 46 45 00 00 45 00 00 45 45 45 00 45 46 46 46 45 00 45 45 00 00 45 45 46 00 00 45 45 45 45 45 45 45 46 00 45 00 45 00 00 45 45 45 45 46 46 46 00 00 45 45 45 45 45 46 46 46 45 00 45 00 45 00 00 00 00 45 45 45 00 45 45 45 45 46 00 00 00 00 00 45 45 45 00 45 46 46 45 45 45 00 45 00 45 45 45 45 45 00 46 46 45 00 45 45 00 45 45 00 45 46 46 46 45 45 45 45 45 45 45 45 00 46 00 00 00 00 45 45 45 00 00 46 00 46 46 00 45 45 45 45 45 45 46 00 00 46 46 45 00 45 45 00 45 00 46 00 45 45 45 00 45 00 45 45 00 45 00 00 00 45 45 45 45 00 46 00 00 45 00 00 45 00 45 45 00 46 46 00 00 00 00 45 45 45 46 00 00 46 46 46 00 00 00 00 00 00 45 46 46 00 45 45 45 00 00 45 00 45 45 00 00 00 72 00 00 72 00 00 00 00 00 45 45 45 45 00 00 46 00 00 45 00 45 45 00 45 45 45 45 00 00 46 46 00 45 45 00 00 45 45 46 00 00 46 00 00 46 46 00 00 46 00 00 00 00 46 46 00 46 45 46 46 00 46 45 45 45 00 00 00 00 46 46 45 45 00 45 45 00 00 45 00 00 46 46 46 00 46 46 00 46 46 46 46 00 45 45 00 45 45 45 45 00 00 46 00 46 45 45 00 45 00 45 45 00 00 46 46 00 00 45 00 45 45 45 45 45 46 46 46 46 00 00 46 00 46 46 00 46 46 46 00 46 00 45 00 45 00 45 00 45 45 45 45 45 00 00 45 45 45 00 45 45 00 45 00 45 45 45 00 46 46 00 45 45 00 45 45 45 00 45 00 45 46 39 00 45 45 45 00 00 45 45 45 00 45 00 45 00 45 45 45 00 00 00 45 46 46 45 00 45 45 45 45 00 00 45 00 00 00 45 45 00 45 00 00 00 00 46 46 00 45 00 45 45 00 45 00 46 00 46 00 46 00 46 46 45 46 46 46 46 45 00 45 00 45 00 45 45 45 00 45 45 00 00 00 45 45 00 00 45 00 45 46 46 46 00 46 46 46 46 46 46 45 00 00 45 45 45 00 45 00 45 00 46 00 45 45 00 00 45 00 00 00 00 46 46 00 45 45 00 00 00 00 00 00 46 00 46 46 00 00 45 00 45 45 00 00 45 45 46 46 46 00 00 46 46 46 46 46 00 00 46 46 45 45 00 45 45 00 45 00 45 00 46 46 00 45 00 45 00 00 00 00 00 46 46 45 45 45 45 45 45 46 46 46 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 45 45 00 45 45 45 45 00 00 46 46 45 45 00 45 00 45 45 45 45 00 45 45 00 00 46 00 46 45 45 45 00 00 00 45 45 45 00 00 00 46 00 00 00 45 00 45 00 00 ed 00 00 ed 00 46 46 45 00 00 00 45 45 45 00 00 46 00 46 46 00 45 45 45 45 45 45 00 45 00 46 00 46 46 46 46 46 46 46 00 46 46 46 00 00 45 45 00 45 45 00 46 46 45 45 00 00 45 00 00 00 00 45 45 00 00 45 00 00 45 45 00 00 45 00 00 46 46 00 45 45 45 00 45 00 00 00 00 00 00 00 45 45 45 45 45 00 00 46 00 46 46 45 45 00 45 45 45 45 00 00 45 00 00 46 45 00 00 00 00 00 46 00 00 45 45 00 45 00 00 00 45 00 45 45 00 45 00 45 45 00 00 00 45 45 45 45 00
*/
