.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1849a, %r12
nop
nop
nop
and %rsi, %rsi
mov (%r12), %r8
nop
nop
and $16658, %r15
lea addresses_UC_ht+0x1ebe, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r11), %r10w
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x14da9, %r11
nop
xor $11662, %r9
movw $0x6162, (%r11)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1b4aa, %rsi
lea addresses_WT_ht+0x189a, %rdi
nop
nop
nop
nop
nop
cmp $56520, %r10
mov $62, %rcx
rep movsb
inc %rcx
lea addresses_UC_ht+0x314a, %rcx
dec %r8
movb (%rcx), %r15b
dec %rdi
lea addresses_UC_ht+0x7732, %rcx
nop
nop
nop
nop
xor %r12, %r12
mov (%rcx), %r8
nop
cmp $57743, %r10
lea addresses_WT_ht+0x1ccfa, %r8
nop
nop
nop
nop
xor $7862, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x10dda, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rcx)
inc %r11
lea addresses_WC_ht+0x1b41a, %rsi
clflush (%rsi)
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $51509, %rsi
lea addresses_WC_ht+0x2c9a, %rsi
lea addresses_D_ht+0x1689a, %rdi
nop
nop
cmp $23311, %r12
mov $124, %rcx
rep movsb
nop
and %rsi, %rsi
lea addresses_WC_ht+0x949a, %r10
nop
nop
nop
sub %rcx, %rcx
mov (%r10), %r11w
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x18f9a, %r14
nop
nop
add $25580, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r14)
and $999, %r11

// Store
lea addresses_PSE+0x127e, %rdi
nop
nop
xor %rax, %rax
movb $0x51, (%rdi)
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_US+0x8c9a, %rax
nop
nop
nop
nop
add $2041, %rsi
movups (%rax), %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'00': 3}
00 00 00
*/
