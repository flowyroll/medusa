.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15968, %rdi
nop
nop
xor %r10, %r10
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
and $423, %r14
lea addresses_A_ht+0xbc24, %rbp
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x8980, %rsi
lea addresses_D_ht+0x19980, %rdi
nop
sub $47753, %r12
mov $31, %rcx
rep movsl
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0xa980, %rsi
nop
nop
nop
nop
sub $4575, %r10
movb (%rsi), %cl
nop
nop
nop
nop
nop
xor $28529, %r10
lea addresses_WT_ht+0x5788, %r10
nop
nop
nop
dec %rsi
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x17080, %rsi
nop
nop
nop
nop
add $29764, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rsi)
nop
dec %r12
lea addresses_D_ht+0xdd80, %rsi
nop
nop
cmp $44054, %r10
movw $0x6162, (%rsi)
cmp $22486, %r14
lea addresses_normal_ht+0x1bbc0, %rbp
nop
nop
sub %r10, %r10
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xf280, %r14
nop
nop
nop
nop
xor %r12, %r12
movw $0x6162, (%r14)
nop
nop
cmp $44954, %rsi
lea addresses_WC_ht+0xe0e8, %rsi
lea addresses_normal_ht+0x2b2, %rdi
nop
nop
nop
cmp $34225, %r10
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x19780, %rcx
nop
nop
nop
nop
add $45629, %rsi
movb $0x61, (%rcx)
nop
nop
nop
xor $15923, %rdi
lea addresses_normal_ht+0x16380, %rsi
lea addresses_UC_ht+0x6370, %rdi
dec %rbp
mov $73, %rcx
rep movsl
xor $57310, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Load
lea addresses_RW+0x31c2, %r13
nop
nop
xor $58005, %rbp
mov (%r13), %r14d
sub %rcx, %rcx

// Store
lea addresses_WC+0x64a0, %r9
clflush (%r9)
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
cmp $16307, %rdx

// Store
lea addresses_RW+0xae80, %rdx
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_US+0x14a44, %rdx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
and $1168, %rcx

// Store
mov $0x440, %r13
clflush (%r13)
nop
nop
add %rax, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
and $42016, %rbp

// Faulty Load
lea addresses_WT+0x880, %rax
and %r9, %r9
mov (%rax), %r13w
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
