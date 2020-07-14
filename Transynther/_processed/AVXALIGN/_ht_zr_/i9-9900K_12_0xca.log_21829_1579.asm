.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ae92, %rsi
lea addresses_WT_ht+0x17b2e, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $68, %rcx
rep movsw
nop
nop
nop
xor $3168, %r13
lea addresses_WT_ht+0x7292, %rax
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
dec %rdi
lea addresses_normal_ht+0x143e5, %rdi
nop
nop
cmp %r14, %r14
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
xor $12489, %rsi
lea addresses_D_ht+0x185b2, %r14
nop
nop
nop
cmp $61052, %r13
movw $0x6162, (%r14)
xor $2387, %rdx
lea addresses_UC_ht+0xdd92, %r14
nop
nop
cmp %rdi, %rdi
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
cmp $10163, %r14
lea addresses_WC_ht+0x9a92, %rsi
nop
nop
xor $26861, %rcx
mov (%rsi), %r13w
nop
nop
nop
nop
nop
and $16320, %r14
lea addresses_normal_ht+0x7872, %rcx
sub %rdx, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $56297, %rdi
lea addresses_normal_ht+0x9092, %rsi
lea addresses_UC_ht+0x18792, %rdi
nop
nop
nop
nop
xor $38386, %r13
mov $57, %rcx
rep movsq
nop
sub %r13, %r13
lea addresses_UC_ht+0xe292, %rdi
nop
nop
nop
nop
and $6090, %rax
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x141d2, %r14
nop
nop
mfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r14)
nop
add %rcx, %rcx
lea addresses_WT_ht+0xf06a, %rsi
lea addresses_WT_ht+0x1364, %rdi
nop
nop
nop
sub %r12, %r12
mov $33, %rcx
rep movsq
nop
nop
inc %r12
lea addresses_UC_ht+0x1ee92, %r14
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%r14)
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0xe292, %r15
nop
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_WT+0xe292, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
vmovaps (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 26, '49': 3058, '00': 15465, '47': 3280}
00 00 49 00 00 49 49 00 00 00 47 00 00 00 49 49 00 00 49 47 00 00 47 00 00 00 00 00 49 00 47 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 47 00 00 00 49 47 00 00 00 00 00 49 00 47 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 47 00 00 00 00 47 47 49 47 47 00 47 00 00 00 00 00 00 00 47 47 00 49 00 00 00 47 00 00 00 49 00 49 47 49 00 47 00 00 47 49 00 00 00 00 00 00 00 00 49 49 49 47 49 00 00 00 00 00 49 00 00 47 00 00 00 49 00 00 00 00 47 47 00 00 00 00 47 00 00 00 00 00 00 47 49 47 00 00 49 00 47 47 00 00 47 00 47 00 00 00 00 47 00 49 00 00 00 00 00 00 00 00 00 47 00 49 47 00 00 49 00 49 00 00 47 47 00 47 49 00 00 00 00 49 00 00 00 47 00 00 00 00 49 00 49 49 47 00 00 47 49 00 47 47 47 47 47 49 00 00 47 00 00 00 00 00 47 00 00 00 00 49 00 47 47 00 00 00 00 00 00 49 47 00 00 00 47 00 47 00 00 00 00 00 00 00 00 00 00 47 00 00 49 47 49 47 49 47 00 00 47 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 47 00 49 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 47 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 47 00 00 00 49 00 00 00 47 00 49 47 00 00 00 00 00 49 49 00 47 47 00 00 00 00 00 00 00 00 47 00 00 00 00 49 00 49 00 00 00 00 49 47 00 00 00 00 00 00 00 00 00 47 49 00 00 00 00 49 00 00 00 00 00 47 00 00 00 00 49 00 49 49 00 00 49 00 47 00 00 00 00 47 00 00 00 47 00 00 00 00 47 00 00 47 00 00 00 00 00 49 49 47 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 49 00 49 00 00 00 00 00 00 47 00 00 49 49 00 00 00 00 00 00 00 00 47 00 00 00 00 49 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 49 47 00 00 49 47 47 00 00 47 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 47 00 00 00 00 00 00 00 49 00 47 00 47 00 00 00 00 00 00 00 00 47 49 49 00 00 00 00 49 49 47 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 47 00 49 00 47 00 00 00 00 47 00 00 00 47 47 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 47 47 00 00 00 47 00 00 00 49 00 00 49 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 47 49 49 00 00 47 00 49 00 47 00 49 00 00 00 49 00 00 00 00 00 00 00 00 47 00 00 49 00 49 00 00 00 00 00 00 47 49 00 00 00 00 49 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 49 00 49 00 47 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 47 00 49 00 00 49 00 00 47 00 00 00 00 47 00 00 00 47 00 00 49 00 49 47 00 00 00 00 47 00 00 49 00 47 00 00 49 00 47 47 00 00 00 00 00 00 49 00 00 00 49 00 47 00 00 00 00 47 47 00 00 00 00 00 00 47 00 00 49 00 00 00 00 00 47 00 47 00 00 00 00 00 47 00 00 00 00 00 47 49 00 00 00 00 49 49 00 49 00 49 00 00 47 00 00 00 47 00 00 47 49 00 49 00 00 49 00 47 00 47 47 00 00 00 47 00 00 00 00 47 00 00 00 00 49 47 00 00 00 49 00 00 00 49 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 49 00 00 47 00 00 00 00 47 00 00 00 49 00 00 00 47 00 00 49 00 00 49 47 00 47 49 00 00 49 00 00 00 00 00 49 47 00 00 00 49 49 00 47 00 49 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 49 00 00 47 00
*/
