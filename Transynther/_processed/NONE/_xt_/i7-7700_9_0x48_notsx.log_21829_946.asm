.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa994, %r11
and $28636, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r11)
nop
nop
add $63140, %rdi
lea addresses_A_ht+0x1d666, %r13
nop
and %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
nop
nop
xor $11795, %r9
lea addresses_UC_ht+0x162d2, %r14
nop
nop
cmp $20871, %r15
movw $0x6162, (%r14)
nop
nop
nop
lfence
lea addresses_WC_ht+0x1aed2, %rsi
lea addresses_normal_ht+0x19a4a, %rdi
clflush (%rdi)
and $11857, %r9
mov $40, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x18d32, %r11
nop
nop
nop
nop
nop
and $37986, %rdi
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x122d2, %rsi
lea addresses_WC_ht+0xd4e2, %rdi
nop
nop
add $10796, %r9
mov $49, %rcx
rep movsl
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x430f, %rsi
nop
dec %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1ad52, %r9
nop
nop
nop
nop
cmp $6787, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r9)
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x164d2, %r9
nop
sub $48270, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r9)
nop
cmp $17667, %r15
lea addresses_normal_ht+0x196d2, %rsi
lea addresses_normal_ht+0x12a4e, %rdi
nop
nop
nop
xor $24596, %r11
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x72d2, %rdi
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm7
vpextrq $1, %xmm7, %r11
sub %r15, %r15
lea addresses_WT_ht+0x172d2, %r9
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and $43287, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x11d8, %r12
dec %rax
mov (%r12), %r15
nop
nop
add $35950, %r15

// Store
lea addresses_WC+0x36d2, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp $20568, %rbx

// REPMOV
lea addresses_normal+0x1b0d2, %rsi
lea addresses_normal+0x6cd2, %rdi
nop
nop
nop
nop
cmp $28623, %rbx
mov $122, %rcx
rep movsw
nop
cmp $14962, %rbx

// Load
lea addresses_A+0x12152, %r15
clflush (%r15)
nop
nop
nop
sub %rax, %rax
mov (%r15), %rsi
nop
add %rcx, %rcx

// Store
lea addresses_WT+0x1fe0a, %r11
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
sub $13549, %rsi

// Faulty Load
lea addresses_WT+0xe2d2, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
