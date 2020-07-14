.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc9bb, %rsi
lea addresses_normal_ht+0x199eb, %rdi
nop
nop
add %rdx, %rdx
mov $47, %rcx
rep movsq
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x1b93b, %rax
cmp $2793, %rcx
mov (%rax), %r13
nop
sub %rdx, %rdx
lea addresses_normal_ht+0xc0bf, %rax
nop
dec %r10
movl $0x61626364, (%rax)
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xfeb, %rcx
nop
nop
nop
nop
nop
and $25998, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1a32b, %rax
nop
nop
nop
xor $5186, %r13
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
cmp $44537, %rsi
lea addresses_WT_ht+0x1d7eb, %rsi
lea addresses_D_ht+0xc7eb, %rdi
nop
nop
nop
nop
inc %r15
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $50731, %r13
lea addresses_WT_ht+0x19deb, %rcx
nop
and $35000, %r15
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
add $29584, %r13
lea addresses_D_ht+0x1512b, %rsi
nop
and %r15, %r15
mov (%rsi), %edi
and $29306, %r10
lea addresses_A_ht+0xdd0b, %rdx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm4, (%rdx)
nop
nop
sub $41338, %rsi
lea addresses_WC_ht+0x3c74, %rax
nop
inc %r10
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x1d66, %rcx
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rcx)
nop
add $40057, %rdi
lea addresses_D_ht+0x5aab, %rcx
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%rcx), %r13
sub $40714, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xd50b, %r12
clflush (%r12)
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r12)
cmp %r10, %r10

// REPMOV
lea addresses_WC+0xb1eb, %rsi
lea addresses_UC+0x12beb, %rdi
mfence
mov $104, %rcx
rep movsb
nop
cmp $11587, %rsi

// Store
lea addresses_A+0x1bdeb, %rbp
nop
nop
nop
nop
nop
and $50350, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rbp)
nop
add $63269, %r12

// Store
lea addresses_RW+0x87eb, %rax
clflush (%rax)
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rax)
nop
dec %rax

// Store
mov $0x693, %rax
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rax)
nop
sub $10622, %rdi

// Store
mov $0x8eb, %rbx
cmp $22909, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Load
mov $0x5188d90000000f9b, %rax
nop
nop
nop
nop
dec %rbp
mov (%rax), %si
nop
nop
and $42969, %rbp

// Faulty Load
lea addresses_RW+0x87eb, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
movntdqa (%rsi), %xmm0
vpextrq $1, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_NC', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 5}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
