.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10211, %r15
nop
sub %rsi, %rsi
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x15bc1, %rsi
lea addresses_WC_ht+0x1d841, %rdi
nop
nop
add $31278, %r8
mov $96, %rcx
rep movsq
add %r15, %r15
lea addresses_normal_ht+0x1810d, %rsi
lea addresses_UC_ht+0xd841, %rdi
nop
nop
nop
xor $19259, %r14
mov $80, %rcx
rep movsq
nop
nop
cmp $32419, %rcx
lea addresses_UC_ht+0x15e11, %rsi
lea addresses_WC_ht+0xc5a, %rdi
cmp %r15, %r15
mov $75, %rcx
rep movsw
nop
nop
nop
and $28991, %r8
lea addresses_WT_ht+0x18c41, %r8
clflush (%r8)
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
and %r14, %r14
lea addresses_A_ht+0x10187, %rax
nop
nop
nop
sub $44948, %rdi
movl $0x61626364, (%rax)
add %r15, %r15
lea addresses_UC_ht+0x14041, %rax
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
xor %rax, %rax
lea addresses_WC_ht+0x3211, %r8
nop
nop
nop
inc %rax
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add $25666, %rbp
lea addresses_WT_ht+0x1041, %r8
nop
nop
nop
lfence
mov (%r8), %r15w
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xf041, %rsi
lea addresses_UC_ht+0x15441, %rdi
clflush (%rdi)
nop
dec %rbp
mov $50, %rcx
rep movsq
and %rbp, %rbp
lea addresses_WC_ht+0x12f01, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r8), %edi
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x17b71, %rsi
lea addresses_WC_ht+0x12b69, %rdi
nop
nop
nop
nop
nop
xor $48096, %rbp
mov $53, %rcx
rep movsb
nop
nop
and $38805, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x41, %rsi
nop
and $53584, %rdx
movb $0x51, (%rsi)
nop
nop
nop
nop
cmp $40155, %r13

// REPMOV
lea addresses_WC+0xe721, %rsi
lea addresses_WT+0x13aa1, %rdi
nop
sub $21630, %rdx
mov $42, %rcx
rep movsb
inc %rdx

// Load
lea addresses_WC+0x41, %rdi
nop
xor $61400, %rbp
movb (%rdi), %cl
nop
cmp $33090, %rsi

// Faulty Load
lea addresses_WC+0x41, %rdx
nop
nop
nop
nop
sub $5595, %r13
mov (%rdx), %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'51': 610}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
