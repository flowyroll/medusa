.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3c11, %r9
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r9
movntdq %xmm2, (%r9)
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1c9d1, %r8
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor $30807, %r13
lea addresses_WT_ht+0xded1, %rdx
and %rax, %rax
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1cbc9, %r10
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r10)
add %r13, %r13
lea addresses_UC_ht+0x39d9, %rsi
nop
nop
dec %r13
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
sub $30300, %rdx
lea addresses_WC_ht+0x11191, %rsi
dec %rax
movl $0x61626364, (%rsi)
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1a2d1, %r10
nop
mfence
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
cmp %r8, %r8
lea addresses_WT_ht+0xc6b1, %rsi
nop
nop
nop
nop
nop
and %r10, %r10
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x182d1, %rsi
lea addresses_A_ht+0x151, %rdi
nop
nop
nop
nop
dec %r10
mov $67, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xced1, %rsi
lea addresses_UC_ht+0x15471, %rdi
xor $23614, %r10
mov $36, %rcx
rep movsl
nop
nop
nop
nop
sub $50242, %rsi
lea addresses_WT_ht+0x8ad1, %rsi
lea addresses_UC_ht+0x10251, %rdi
lfence
mov $96, %rcx
rep movsw
nop
nop
and $57461, %rdi
lea addresses_UC_ht+0xf6d1, %rsi
lea addresses_WT_ht+0x106d1, %rdi
dec %rdx
mov $13, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1c581, %r9
nop
nop
nop
nop
cmp $58768, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x15dd, %rdi
nop
xor $38326, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
add $13558, %rdx
lea addresses_WT_ht+0x15ad1, %rax
nop
nop
nop
xor $20252, %r10
movb $0x61, (%rax)
nop
nop
cmp $28563, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0xead1, %r8
nop
nop
xor $40291, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor $41568, %r8

// Store
lea addresses_WC+0x9ed1, %r14
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
sub %rbp, %rbp

// Store
mov $0x281b1c00000002d1, %rdx
clflush (%rdx)
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
dec %rsi

// Load
mov $0x7466890000000849, %r8
nop
add $43641, %rbx
movb (%r8), %r14b
dec %rsi

// Faulty Load
lea addresses_WC+0xead1, %r14
inc %rbx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
