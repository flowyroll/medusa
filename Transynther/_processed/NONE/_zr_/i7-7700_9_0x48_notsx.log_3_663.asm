.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x185f3, %rsi
lea addresses_WC_ht+0x14229, %rdi
nop
nop
nop
inc %r9
mov $82, %rcx
rep movsq
nop
nop
add $63795, %rsi
lea addresses_WT_ht+0x1b1bd, %r15
nop
and %r11, %r11
movb $0x61, (%r15)
and $2163, %rcx
lea addresses_WT_ht+0x1e086, %rsi
lea addresses_WT_ht+0xeb4d, %rdi
nop
nop
nop
nop
add $13043, %r12
mov $10, %rcx
rep movsl
nop
dec %rsi
lea addresses_normal_ht+0x4b4d, %rsi
lea addresses_WC_ht+0x961d, %rdi
inc %r11
mov $123, %rcx
rep movsb
nop
nop
nop
cmp $3117, %r9
lea addresses_A_ht+0x53d5, %rdi
nop
nop
nop
nop
nop
and $17304, %rcx
movb $0x61, (%rdi)
nop
nop
nop
inc %r14
lea addresses_D_ht+0x1b88d, %rsi
nop
nop
nop
nop
sub $13686, %r9
movb $0x61, (%rsi)
nop
nop
and $45568, %r12
lea addresses_UC_ht+0x234d, %rcx
nop
nop
sub $22550, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x16999, %rsi
lea addresses_UC_ht+0x17b6d, %rdi
nop
nop
nop
inc %r12
mov $30, %rcx
rep movsb
sub %r11, %r11
lea addresses_D_ht+0x1f68, %rdi
nop
add %r12, %r12
mov (%rdi), %esi
nop
nop
cmp $26285, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Store
mov $0x662666000000084d, %r14
nop
nop
add $1939, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r14)
nop
nop
inc %rdi

// Faulty Load
lea addresses_A+0xaf4d, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 0}}
{'00': 3}
00 00 00
*/
