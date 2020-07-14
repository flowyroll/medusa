.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3f70, %rcx
nop
nop
nop
nop
and $3738, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x18170, %r13
nop
nop
nop
cmp %r15, %r15
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r14
add %rax, %rax
lea addresses_UC_ht+0xc570, %rax
nop
nop
add %rbx, %rbx
mov (%rax), %ecx
xor %rbx, %rbx
lea addresses_WC_ht+0x1bf88, %rsi
lea addresses_WT_ht+0x1b70, %rdi
nop
sub $45721, %r14
mov $116, %rcx
rep movsl
sub %r15, %r15
lea addresses_WT_ht+0x1338, %rsi
lea addresses_WC_ht+0x1e890, %rdi
sub %r14, %r14
mov $74, %rcx
rep movsb
nop
nop
nop
nop
sub $56219, %r15
lea addresses_D_ht+0x3e30, %rsi
lea addresses_A_ht+0x12b0, %rdi
add %rax, %rax
mov $49, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1ddbc, %r13
nop
xor $30849, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r13
vmovntdq %ymm3, (%r13)
nop
cmp %r14, %r14
lea addresses_A_ht+0xd390, %r13
nop
sub $30781, %rax
movw $0x6162, (%r13)
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x3670, %rdi
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r15d
and $40661, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xa70, %rsi
mov $0xcae, %rdi
nop
nop
cmp $56435, %rbp
mov $21, %rcx
rep movsw
nop
nop
nop
xor $4, %rbp

// Load
mov $0x3113c700000001b0, %rcx
nop
nop
nop
nop
nop
cmp $56834, %r13
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
nop
cmp $989, %r10

// Store
lea addresses_RW+0x990, %r13
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
xor $3921, %rcx

// Store
lea addresses_WC+0x1b270, %rbp
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_RW+0x3770, %r10
nop
nop
dec %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovntdq %ymm2, (%r10)
nop
and $51649, %rcx

// Store
lea addresses_RW+0x1af70, %rsi
xor %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_RW+0x1af70, %r10
add $47732, %rdi
mov (%r10), %cx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_P', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_P', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'58': 209}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
