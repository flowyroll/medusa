.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ed90, %rsi
lea addresses_A_ht+0x1a2f0, %rdi
nop
nop
nop
nop
nop
sub $27519, %r10
mov $53, %rcx
rep movsq
cmp %r14, %r14
lea addresses_normal_ht+0x10400, %rbx
nop
nop
nop
nop
nop
and $46262, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xeb00, %r10
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r10), %cx
sub $56237, %rbx
lea addresses_WT_ht+0x10400, %rsi
xor $21938, %rcx
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
and $24180, %r10
lea addresses_UC_ht+0x1ed30, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x4300, %r14
cmp $61728, %rsi
movb (%r14), %r10b
nop
nop
nop
nop
nop
sub $51860, %r10
lea addresses_WC_ht+0x12300, %rcx
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %rcx
vmovaps %ymm6, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xe280, %rdi
nop
nop
nop
and $60914, %r14
movw $0x6162, (%rdi)
nop
cmp %r14, %r14
lea addresses_WC_ht+0x6ec0, %rsi
lea addresses_WC_ht+0x76a6, %rdi
nop
nop
nop
nop
nop
sub $53702, %rbx
mov $0, %rcx
rep movsq
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x16180, %r8
add %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1a8e5, %rcx
nop
nop
nop
inc %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x17f00, %rcx
inc %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)
nop
cmp $53647, %rcx

// Store
lea addresses_normal+0x13600, %rcx
nop
nop
nop
add $13363, %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0x1000, %rdx
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_PSE+0x1c00, %rsi
lea addresses_PSE+0x2280, %rdi
nop
nop
nop
xor $15893, %rax
mov $28, %rcx
rep movsb
nop
nop
add $29629, %r10

// Store
lea addresses_WT+0x118f4, %rax
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rax)
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_D+0x14400, %rdx
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rdx)
nop
cmp $32338, %rsi

// Store
mov $0xc00, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x51, (%r14)
nop
sub $1855, %rsi

// Store
lea addresses_A+0x1f000, %rdx
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%rdx)
nop
nop
dec %r8

// Store
mov $0x492aee0000000c00, %rbp
nop
nop
xor %rcx, %rcx
movb $0x51, (%rbp)
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_A+0x6400, %r14
nop
nop
nop
nop
nop
sub $24213, %r10
mov (%r14), %r8w
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'58': 18, '00': 2}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58
*/
