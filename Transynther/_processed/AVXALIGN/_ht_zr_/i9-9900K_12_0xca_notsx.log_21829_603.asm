.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x136b4, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor $10584, %r15
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1e584, %r8
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r8)
nop
sub $58593, %rbp
lea addresses_A_ht+0xf284, %r8
nop
nop
nop
nop
nop
dec %rdx
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
sub $7885, %r10
lea addresses_WT_ht+0xe054, %rbp
nop
nop
nop
nop
sub %r15, %r15
mov (%rbp), %r8w
add $11857, %r15
lea addresses_WC_ht+0x18184, %rdx
nop
xor $65491, %r8
movb $0x61, (%rdx)
nop
add %r10, %r10
lea addresses_D_ht+0x3144, %r10
clflush (%r10)
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%r10)
and $35161, %r15
lea addresses_normal_ht+0x5dfc, %rsi
lea addresses_WC_ht+0x13604, %rdi
nop
nop
sub %rax, %rax
mov $104, %rcx
rep movsl
add %rdx, %rdx
lea addresses_WC_ht+0x1bfd0, %rsi
lea addresses_D_ht+0x16604, %rdi
nop
nop
nop
and %r10, %r10
mov $114, %rcx
rep movsw
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1734c, %rsi
nop
add $65477, %rax
mov (%rsi), %cx
nop
nop
xor $41870, %r10
lea addresses_A_ht+0x13708, %rsi
lea addresses_WC_ht+0x181c2, %rdi
and $29244, %rdx
mov $94, %rcx
rep movsb
dec %rbp
lea addresses_WC_ht+0x6b04, %rsi
lea addresses_WT_ht+0x104, %rdi
nop
nop
and $28480, %rax
mov $17, %rcx
rep movsw
nop
nop
nop
and $33771, %rcx
lea addresses_D_ht+0x7a04, %rsi
nop
nop
nop
nop
nop
lfence
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add $16039, %r8
lea addresses_UC_ht+0x7184, %rsi
lea addresses_D_ht+0xe704, %rdi
nop
nop
xor %rdx, %rdx
mov $80, %rcx
rep movsq
nop
cmp $22971, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
lea addresses_WT+0x1cb1e, %r14
and %r9, %r9
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x1bd84, %r14
clflush (%r14)
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
sub $56706, %r8

// Faulty Load
lea addresses_US+0x1e984, %r15
nop
nop
nop
nop
sub $659, %r8
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'49': 2326, '00': 17770, '45': 371, '48': 1126, '44': 236}
00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 49 00 00 48 00 00 00 00 49 00 00 49 00 00 49 00 00 48 00 00 00 00 49 00 00 00 00 00 45 00 00 00 00 49 00 00 44 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 45 00 48 00 00 00 00 49 00 00 00 00 49 00 00 48 00 48 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 48 00 00 00 00 00 45 00 00 00 00 00 00 00 48 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 48 00 49 00 00 00 00 49 00 00 00 00 49 00 00 45 00 48 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 49 00 00 48 00 00 49 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 48 00 00 00 00 45 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 45 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 49 00 00 00 00 00 00 00 49 00 00 48 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 00 48 00 00 00 00 44 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 49 00 00 00 00 00 45 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 49 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 49 00 00 49 00 00 48 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 00 48 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 45 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 48 00 00 00 00 49 00 00 00 00 49 00 00 44 00 00 00 00 49 00 00 48 00 49 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 45 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 48 00 49 00 00 49 00 00 45 00 00 00 00 00 48 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 48 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49
*/
