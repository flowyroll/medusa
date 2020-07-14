.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xce7e, %rsi
lea addresses_UC_ht+0x88fe, %rdi
clflush (%rdi)
xor $11997, %r9
mov $1, %rcx
rep movsq
add %r14, %r14
lea addresses_WC_ht+0x1757e, %rsi
lea addresses_WT_ht+0x195a2, %rdi
nop
nop
and $20467, %r13
mov $6, %rcx
rep movsq
nop
nop
dec %rsi
lea addresses_A_ht+0x18c5e, %rsi
nop
nop
nop
nop
xor $35128, %rax
movw $0x6162, (%rsi)
nop
nop
nop
nop
and $4106, %rsi
lea addresses_UC_ht+0x17906, %r14
nop
cmp %rdi, %rdi
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
mov $0x4f858e0000000c6e, %r8
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x2d6f890000000d7e, %rbx
nop
nop
nop
nop
and $34465, %r8
movb $0x51, (%rbx)
nop
nop
nop
add $43881, %rdi

// Faulty Load
mov $0x2d6f890000000d7e, %r8
add $4048, %r13
mov (%r8), %r9d
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'6d': 9860, '00': 234, '51': 11735}
51 6d 6d 6d 6d 6d 51 51 6d 6d 51 6d 51 6d 6d 6d 51 6d 51 6d 6d 6d 51 6d 51 6d 51 6d 6d 6d 51 51 51 51 6d 51 6d 51 6d 51 51 51 51 51 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 51 51 6d 6d 51 6d 6d 6d 6d 51 6d 51 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 51 6d 51 51 00 51 6d 6d 6d 6d 51 6d 51 6d 6d 51 51 51 51 51 6d 6d 6d 6d 6d 51 51 6d 51 51 6d 51 51 51 51 51 51 51 51 6d 6d 51 51 51 6d 6d 6d 51 6d 6d 6d 51 51 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 51 51 6d 51 6d 6d 51 6d 6d 51 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 51 51 51 6d 6d 6d 6d 51 6d 51 6d 51 6d 6d 51 6d 6d 6d 51 6d 51 6d 6d 6d 6d 51 51 51 51 00 6d 6d 6d 6d 51 51 51 51 51 6d 51 51 51 51 6d 6d 6d 51 51 51 51 6d 6d 6d 6d 6d 6d 6d 51 51 6d 00 51 6d 6d 6d 6d 51 51 6d 51 6d 6d 51 6d 6d 6d 51 51 51 51 51 51 6d 51 6d 6d 6d 51 00 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 51 51 51 51 6d 6d 51 51 51 6d 51 51 51 6d 51 51 51 51 51 51 51 6d 51 6d 6d 51 51 51 51 6d 51 6d 6d 51 51 6d 51 51 51 51 6d 51 6d 6d 00 6d 51 51 51 51 6d 51 51 51 51 51 6d 51 51 6d 6d 51 6d 51 51 51 51 6d 51 51 51 6d 51 51 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 51 51 51 51 51 51 6d 51 6d 6d 6d 51 6d 51 6d 51 51 6d 6d 6d 6d 51 51 6d 6d 6d 51 51 6d 6d 51 6d 51 51 51 6d 51 6d 51 51 6d 51 6d 6d 6d 6d 51 51 51 6d 51 00 6d 6d 6d 51 6d 51 6d 6d 6d 51 51 51 51 6d 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 6d 6d 51 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 51 6d 51 51 51 51 51 51 51 51 6d 51 6d 6d 6d 6d 6d 51 51 51 51 51 51 51 51 51 51 51 51 6d 6d 51 6d 6d 51 6d 6d 51 51 51 00 51 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 51 6d 51 51 51 51 51 51 6d 6d 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 6d 51 6d 6d 6d 6d 6d 51 6d 51 51 6d 6d 51 51 51 6d 51 51 6d 6d 6d 51 51 51 51 6d 6d 6d 51 51 6d 6d 51 51 51 51 6d 51 6d 51 6d 6d 6d 51 51 51 6d 51 6d 51 6d 51 6d 51 51 51 51 6d 51 6d 51 6d 6d 51 51 51 51 6d 51 6d 6d 6d 51 6d 6d 51 00 6d 51 51 51 6d 51 6d 6d 51 6d 51 51 6d 6d 6d 6d 51 6d 51 6d 51 51 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 51 51 6d 51 6d 6d 51 6d 51 51 6d 6d 51 51 51 6d 51 6d 51 51 51 51 6d 51 6d 6d 6d 6d 51 6d 6d 51 51 6d 51 51 6d 51 6d 51 6d 51 6d 6d 51 6d 6d 51 6d 6d 51 6d 6d 6d 51 6d 6d 6d 51 6d 6d 51 6d 6d 6d 51 51 6d 51 51 51 6d 51 51 51 51 51 51 6d 6d 6d 6d 51 6d 51 51 51 6d 6d 51 6d 51 6d 51 51 6d 51 51 6d 51 6d 6d 51 6d 6d 6d 51 6d 6d 51 6d 6d 51 51 6d 6d 51 6d 6d 51 51 6d 51 51 6d 6d 51 6d 51 51 51 51 6d 51 6d 6d 51 51 51 51 51 6d 51 51 51 51 51 6d 6d 51 6d 6d 51 6d 6d 6d 51 6d 6d 51 51 6d 51 51 51 6d 51 6d 6d 51 6d 51 51 51 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 51 51 6d 6d 51 51 51 51 6d 51 51 6d 6d 6d 51 51 51 6d 51 51 6d 51 51 6d 51 51 51 6d 51 51 6d 6d 51 6d 51 51 51 51 51 6d 6d 51 6d 51 51 51 51 6d 51 6d 51 51 51 51 51 51 6d 51 6d 51 51 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 51 6d 51 51 6d 51 6d 51 51 6d 51 51 51 51 6d 6d 51 51 51 51 51 51 6d 51 51 51 6d 51 51 51 6d 51 51 51 6d 51 6d 51 51 6d 51 6d 6d 6d 51 51 6d 51 6d 51 6d 51 51
*/
