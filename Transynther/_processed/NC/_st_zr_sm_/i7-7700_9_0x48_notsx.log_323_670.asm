.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xcb6d, %rsi
lea addresses_normal_ht+0xc575, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $28, %rcx
rep movsw
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x12775, %rsi
lea addresses_WT_ht+0x1ca1e, %rdi
nop
nop
nop
nop
nop
add $25499, %r9
mov $89, %rcx
rep movsw
nop
sub $23164, %rcx
lea addresses_A_ht+0x2755, %rsi
lea addresses_WC_ht+0x5f75, %rdi
and $54807, %rbx
mov $110, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xc295, %rdi
nop
nop
nop
nop
nop
inc %r10
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
cmp $33223, %rbx
lea addresses_A_ht+0xe55, %r10
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r10)
mfence
lea addresses_D_ht+0x54b5, %rsi
lea addresses_UC_ht+0x8375, %rdi
nop
dec %r14
mov $119, %rcx
rep movsw
nop
add %r8, %r8
lea addresses_A_ht+0xb75, %rsi
lea addresses_WC_ht+0x9f75, %rdi
nop
nop
nop
nop
nop
cmp $59093, %r14
mov $47, %rcx
rep movsq
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xcb75, %rdi
nop
nop
nop
nop
nop
add $55637, %r14
mov (%rdi), %rsi
nop
nop
nop
cmp $9452, %r10
lea addresses_normal_ht+0x6175, %r9
nop
inc %rdi
movb $0x61, (%r9)
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1b575, %rsi
lea addresses_WC_ht+0x60f5, %rdi
nop
nop
nop
nop
inc %r14
mov $86, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_A_ht+0x1bbf5, %rsi
lea addresses_normal_ht+0x1d775, %rdi
sub %r9, %r9
mov $115, %rcx
rep movsw
nop
nop
nop
and $43191, %rbx
lea addresses_WT_ht+0xd215, %r10
nop
nop
nop
nop
nop
xor $43570, %r8
movups (%r10), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1c9e9, %r9
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0x14675, %rsi
lea addresses_D_ht+0xfe75, %rdi
nop
nop
nop
nop
nop
add $45685, %r10
mov $32, %rcx
rep movsb
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x12375, %rdi
nop
nop
nop
nop
nop
and $60620, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
add $34748, %rbx

// Store
lea addresses_UC+0x17375, %rbx
clflush (%rbx)
nop
nop
nop
inc %rsi
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x1dead30000000775, %rcx
and $20831, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movaps %xmm3, (%rcx)
nop
nop
nop
nop
xor $25291, %rbx

// Store
lea addresses_D+0x129f5, %rsi
cmp $28502, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_US+0x6f89, %rsi
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rsi)
cmp $19286, %r9

// Store
lea addresses_PSE+0x3675, %rbx
and %rsi, %rsi
movb $0x51, (%rbx)
nop
nop
nop
and %rdi, %rdi

// Faulty Load
mov $0x1dead30000000775, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r10), %di
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'58': 321, '00': 2}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
