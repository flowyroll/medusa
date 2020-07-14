.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa6eb, %rsi
lea addresses_D_ht+0x705b, %rdi
nop
nop
nop
nop
add $42320, %r10
mov $4, %rcx
rep movsw
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x4663, %r11
cmp %r15, %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
cmp $35558, %rdi
lea addresses_D_ht+0x12099, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %edi
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x1a09b, %r10
nop
nop
nop
nop
cmp $33991, %rsi
movb $0x61, (%r10)
nop
nop
inc %r15
lea addresses_WC_ht+0x366b, %r15
clflush (%r15)
nop
nop
dec %rdi
movb $0x61, (%r15)
nop
nop
sub $15373, %rcx
lea addresses_UC_ht+0x177db, %r11
nop
nop
inc %rcx
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
cmp $61446, %r10
lea addresses_A_ht+0x1a6bb, %r13
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1579b, %rsi
lea addresses_WT_ht+0x12cbb, %rdi
clflush (%rsi)
nop
sub $64675, %rbx
mov $80, %rcx
rep movsq
nop
nop
nop
nop
sub $26638, %r11
lea addresses_normal_ht+0xc97b, %rsi
lea addresses_WC_ht+0x6c9b, %rdi
inc %r11
mov $61, %rcx
rep movsq
nop
nop
add $17065, %r11
lea addresses_normal_ht+0x1b123, %rsi
lea addresses_A_ht+0x1749b, %rdi
dec %rbx
mov $73, %rcx
rep movsl
xor $59149, %r13
lea addresses_A_ht+0x1ec9b, %r10
nop
nop
dec %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi

// Store
lea addresses_PSE+0x19d9b, %rcx
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
xor $40645, %r10

// Store
lea addresses_UC+0xa9b, %rax
and %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0x1889b, %r11
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
