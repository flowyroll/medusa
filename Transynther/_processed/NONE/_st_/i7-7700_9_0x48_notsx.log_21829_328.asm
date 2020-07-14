.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc6cf, %r12
clflush (%r12)
nop
nop
nop
nop
dec %r10
movups (%r12), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
add $62142, %rbp
lea addresses_normal_ht+0x1771f, %rbp
nop
nop
nop
nop
nop
inc %r15
movw $0x6162, (%rbp)
nop
nop
nop
and $5577, %r13
lea addresses_D_ht+0x1a1ef, %rsi
lea addresses_WC_ht+0x1c231, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0xf84f, %r13
nop
nop
and $51857, %r15
movl $0x61626364, (%r13)
sub %rdi, %rdi
lea addresses_D_ht+0xf64f, %rsi
lea addresses_D_ht+0x1ef0f, %rdi
clflush (%rdi)
nop
nop
cmp $64085, %r13
mov $10, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0xa54f, %rsi
lea addresses_D_ht+0x1144f, %rdi
nop
add %r10, %r10
mov $87, %rcx
rep movsq
nop
nop
nop
nop
cmp $41481, %rsi
lea addresses_WT_ht+0x304f, %rsi
lea addresses_WT_ht+0xb28f, %rdi
nop
nop
nop
nop
nop
mfence
mov $28, %rcx
rep movsb
nop
cmp $49339, %r10
lea addresses_normal_ht+0x284f, %r11
clflush (%r11)
nop
nop
xor $57480, %rdi
mov (%r11), %si
nop
and $17867, %r13
lea addresses_WC_ht+0xef, %rcx
clflush (%rcx)
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
add $64259, %rsi
lea addresses_D_ht+0x1024f, %rcx
nop
nop
nop
nop
and $56198, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
sub $32549, %rdi
lea addresses_A_ht+0x1c487, %r13
cmp $11874, %r12
movb (%r13), %r10b
nop
nop
nop
and $2547, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
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
push %rsi

// REPMOV
lea addresses_WT+0x1527f, %rsi
lea addresses_PSE+0x1f04f, %rdi
sub $41195, %rax
mov $28, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0x17c4f, %rcx
nop
nop
nop
cmp $25398, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
dec %r14

// REPMOV
lea addresses_RW+0x1238b, %rsi
lea addresses_D+0x12deb, %rdi
nop
nop
add $8630, %r10
mov $45, %rcx
rep movsq
nop
nop
sub %r8, %r8

// Store
lea addresses_RW+0xad37, %r10
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
xor $50276, %r10

// Store
lea addresses_WC+0x1b123, %r8
nop
nop
xor %rcx, %rcx
movb $0x51, (%r8)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_D+0x16b35, %r8
nop
nop
nop
nop
nop
cmp $10649, %rcx
movw $0x5152, (%r8)
nop
nop
nop
add $35446, %rsi

// Store
lea addresses_PSE+0x620f, %rcx
nop
nop
sub %r14, %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x1f04f, %rcx
nop
xor $4768, %r10
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
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
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 3}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
