.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d026, %r13
nop
nop
cmp $43282, %r9
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
nop
nop
add $33339, %rbp
lea addresses_WT_ht+0x8142, %rbp
nop
nop
nop
nop
nop
sub $11788, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x14afa, %r8
nop
nop
nop
nop
nop
inc %r15
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
sub $24499, %r10
lea addresses_WT_ht+0x1eb1a, %rbp
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%rbp)
cmp %r10, %r10
lea addresses_normal_ht+0x1bd9a, %rdx
nop
add $52011, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x1ea30, %rdx
nop
nop
nop
nop
nop
cmp $18932, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rdx
movntdq %xmm4, (%rdx)
nop
xor $28149, %rbp
lea addresses_A_ht+0x1a962, %rsi
lea addresses_UC_ht+0x1913a, %rdi
nop
nop
add $25213, %rdx
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x932e, %rsi
lea addresses_WT_ht+0x142, %rdi
nop
nop
nop
nop
nop
sub $27858, %rbp
mov $105, %rcx
rep movsq
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x19b1a, %rsi
lea addresses_UC_ht+0x94da, %rdi
nop
nop
nop
sub $39064, %rbp
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
and $35517, %rdx
lea addresses_normal_ht+0xcb7b, %rbp
inc %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rbp)
nop
add $27048, %rdx
lea addresses_D_ht+0x1184e, %rdx
nop
and $60733, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x153c6, %r8
nop
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%r8)
cmp $45971, %rcx

// Store
lea addresses_RW+0x1f1a, %rbp
inc %r9
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
add $19429, %rsi

// Load
lea addresses_UC+0xb852, %r12
nop
nop
nop
nop
nop
and $14372, %rdi
mov (%r12), %bp
xor $23463, %r12

// Faulty Load
lea addresses_RW+0x1f1a, %rsi
nop
add $58299, %r12
movb (%rsi), %r8b
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'54': 66}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
