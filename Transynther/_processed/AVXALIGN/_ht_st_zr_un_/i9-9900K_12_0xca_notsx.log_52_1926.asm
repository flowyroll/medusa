.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19f5b, %r13
nop
nop
nop
nop
sub $29656, %rdx
mov (%r13), %rcx
nop
xor $21637, %rdx
lea addresses_A_ht+0xdd5b, %r12
nop
nop
nop
cmp $52941, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r12
movaps %xmm7, (%r12)
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x599b, %rsi
lea addresses_normal_ht+0xaf97, %rdi
nop
nop
nop
xor $31317, %r9
mov $50, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x6f1b, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r12)
nop
xor %r9, %r9
lea addresses_normal_ht+0x508b, %rsi
lea addresses_normal_ht+0x127db, %rdi
nop
nop
nop
nop
dec %r15
mov $7, %rcx
rep movsb
nop
nop
nop
nop
xor $44817, %rcx
lea addresses_normal_ht+0xf30f, %rdx
nop
and %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm1
and $0xffffffffffffffc0, %rdx
movntdq %xmm1, (%rdx)
nop
nop
nop
sub $19225, %r9
lea addresses_WC_ht+0xd99b, %r12
nop
nop
nop
nop
lfence
mov (%r12), %rdx
xor $44929, %rdi
lea addresses_UC_ht+0x21bb, %r15
nop
nop
nop
sub $24915, %rdx
movb $0x61, (%r15)
nop
nop
nop
and $62124, %rcx
lea addresses_normal_ht+0x1cd13, %r9
nop
nop
sub $63452, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0xcb36, %rsi
lea addresses_WT_ht+0x12805, %rdi
nop
nop
nop
sub $3116, %rdx
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x601b, %rdi
nop
nop
nop
cmp $1139, %r12
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
cmp $12235, %r15
lea addresses_A_ht+0x1c09b, %r13
nop
nop
nop
dec %rsi
movups (%r13), %xmm1
vpextrq $0, %xmm1, %r9
nop
xor $54591, %r12
lea addresses_A_ht+0x1537b, %rsi
lea addresses_A_ht+0x13d9b, %rdi
xor %rdx, %rdx
mov $64, %rcx
rep movsl
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xdd9b, %rsi
lea addresses_WT+0x17d9b, %rdi
nop
nop
nop
nop
cmp $9679, %rbx
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0x1ed9b, %rbx
clflush (%rbx)
nop
nop
nop
add $4900, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0x59b, %rax
inc %r14
movaps (%rax), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'46': 4, 'ff': 1, '39': 13, '00': 11, '45': 17, '44': 6}
00 45 45 45 00 00 39 00 00 00 45 44 45 39 44 45 39 39 45 45 45 39 45 44 45 45 39 45 00 00 45 44 46 00 ff 44 00 39 46 39 39 45 45 39 44 00 45 39 46 46 39 39
*/
