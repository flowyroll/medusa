.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x886c, %rsi
lea addresses_WT_ht+0x13250, %rdi
clflush (%rsi)
dec %rbp
mov $64, %rcx
rep movsl
nop
nop
nop
nop
xor $50426, %r13
lea addresses_WC_ht+0x1a710, %r13
add $4130, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r13)
nop
inc %rsi
lea addresses_normal_ht+0x6710, %rsi
lea addresses_A_ht+0x1b7d0, %rdi
nop
nop
cmp $29392, %r10
mov $83, %rcx
rep movsl
nop
nop
nop
nop
cmp $57361, %rsi
lea addresses_D_ht+0x176d0, %rsi
lea addresses_normal_ht+0xf790, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $90, %rcx
rep movsw
nop
nop
nop
and $2205, %rsi
lea addresses_WT_ht+0xdb10, %r10
nop
nop
and $18948, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r10)
nop
nop
cmp $64043, %r10
lea addresses_UC_ht+0x1cf10, %rcx
nop
nop
nop
nop
nop
and $50241, %rdi
movb $0x61, (%rcx)
nop
nop
nop
sub $51910, %rbp
lea addresses_WT_ht+0xe710, %r10
clflush (%r10)
nop
nop
nop
add $18893, %rsi
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
sub $32831, %rbp
lea addresses_normal_ht+0x1e410, %r13
nop
nop
nop
nop
and $46296, %rdi
movl $0x61626364, (%r13)
nop
cmp $20437, %r13
lea addresses_normal_ht+0x9e78, %rsi
and $29639, %r13
mov (%rsi), %r10d
and %rsi, %rsi
lea addresses_WC_ht+0xd710, %rsi
lea addresses_A_ht+0xbd10, %rdi
clflush (%rdi)
nop
and $1876, %rbx
mov $37, %rcx
rep movsb
dec %r9
lea addresses_WC_ht+0xaea0, %rsi
nop
nop
and %r9, %r9
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r13
inc %r9
lea addresses_D_ht+0x2310, %rbx
nop
nop
add %rcx, %rcx
mov (%rbx), %edi
nop
nop
nop
nop
nop
and $30572, %rbp
lea addresses_WC_ht+0x5bf0, %rsi
lea addresses_D_ht+0x172e2, %rdi
nop
xor $49916, %rbx
mov $33, %rcx
rep movsb
nop
nop
sub $40145, %r9
lea addresses_A_ht+0x12240, %rsi
lea addresses_WC_ht+0xb4c0, %rdi
nop
add %r9, %r9
mov $73, %rcx
rep movsw
nop
nop
add $21559, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
push %rsi

// Store
lea addresses_UC+0x10d0, %r12
clflush (%r12)
sub %r15, %r15
movl $0x51525354, (%r12)
nop
nop
cmp %r15, %r15

// Load
mov $0x190ecb00000009e4, %r8
xor %r10, %r10
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_WT+0x10310, %r12
dec %r15
movb $0x51, (%r12)
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0x10310, %r10
nop
nop
add %r12, %r12
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'44': 17, '45': 1368, '49': 595, '00': 2692, '46': 17157}
46 46 46 46 46 45 46 46 46 45 46 46 46 00 45 46 00 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 45 46 45 46 46 45 46 45 46 46 46 46 46 00 46 46 46 46 46 46 46 46 45 49 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 00 49 46 46 46 46 46 46 00 46 45 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 00 46 46 00 46 46 46 00 46 45 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 45 46 46 46 46 00 46 00 46 46 46 46 46 00 45 46 46 49 46 45 46 46 46 46 45 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 00 46 46 00 46 45 00 46 46 45 45 46 46 46 00 46 46 46 46 00 46 49 46 46 46 46 46 00 46 46 46 46 45 46 46 46 00 46 00 45 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 45 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 45 46 46 46 46 46 46 46 46 46 00 46 46 45 46 46 46 46 46 46 00 46 00 00 00 46 46 00 46 46 46 46 46 45 46 46 46 46 46 46 46 00 46 45 00 46 46 46 46 46 46 00 46 46 46 00 46 49 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 45 46 00 46 46 46 46 46 00 46 46 49 46 46 00 46 46 00 46 46 45 49 00 46 46 46 46 46 46 00 46 46 46 49 46 00 46 46 46 46 46 46 46 00 46 46 46 45 46 00 46 00 46 46 00 46 45 46 46 46 46 46 45 46 46 45 00 46 46 46 49 46 46 46 00 46 46 46 46 46 00 00 46 46 46 46 46 46 45 49 00 00 46 49 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 45 46 46 46 45 46 46 49 46 46 46 00 46 46 46 49 46 46 00 46 46 45 46 46 46 46 45 46 49 46 46 46 46 46 00 46 46 46 46 46 46 49 46 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 00 46 46 46 00 46 46 46 00 46 46 46 49 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 00 46 46 46 46 45 46 46 46 46 45 46 00 46 46 00 00 00 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 00 00 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 49 46 49 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 45 46 46 46 46 46 46 46 00 46 46 46 46 46 45 45 00 46 46 46 46 46 46 46 46 46 46 49 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 44 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 45 46 46 00 46 45 46 46 46 46 00 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 00 46 46 46 49 00 46 46 46 46 46 00 46 46 46 46 49 46 46 46 00 45 46 46 49 46 46 46 46 46 45 49 45 46 46 46 46 46 46 46 46 49 46 46 45 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
