.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x124d6, %r12
nop
nop
nop
cmp $8631, %r9
movb $0x61, (%r12)
nop
nop
nop
nop
nop
cmp $44363, %rax
lea addresses_WC_ht+0xae0e, %r12
nop
nop
nop
nop
nop
and %rbx, %rbx
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xae96, %r11
nop
nop
nop
add $59714, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r11)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x63fe, %rsi
lea addresses_WT_ht+0x13796, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rbx, %rbx
mov $25, %rcx
rep movsw
nop
nop
dec %rax
lea addresses_UC_ht+0xcf1e, %rsi
lea addresses_A_ht+0x1296, %rdi
clflush (%rsi)
nop
nop
dec %rbx
mov $10, %rcx
rep movsq
nop
nop
nop
add $10693, %r11
lea addresses_normal_ht+0xb396, %r11
nop
nop
nop
nop
nop
sub $36265, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
cmp $55555, %rbx
lea addresses_A_ht+0x11696, %rcx
dec %rax
mov (%rcx), %esi
nop
cmp $5963, %r9
lea addresses_WC_ht+0x19e96, %r9
nop
nop
nop
nop
nop
and $30022, %r11
mov (%r9), %r10
nop
nop
inc %rbx
lea addresses_A_ht+0xefd6, %rsi
lea addresses_D_ht+0x4695, %rdi
add $43380, %rax
mov $102, %rcx
rep movsw
nop
nop
nop
xor $19020, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
mov $0x65208d0000000e30, %rdx
nop
inc %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdx)
nop
sub %r10, %r10

// Store
lea addresses_WC+0x4296, %rbp
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rbp)
cmp %rbp, %rbp

// Load
lea addresses_WT+0x85d6, %r10
nop
nop
nop
nop
cmp %r13, %r13
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
mov $0x2c05ad0000000296, %r10
and $4503, %rax
movb $0x51, (%r10)
inc %rbx

// Faulty Load
lea addresses_US+0x1f696, %rbx
nop
nop
and %rbp, %rbp
mov (%rbx), %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'00': 237}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
