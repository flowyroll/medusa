.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e910, %rsi
lea addresses_UC_ht+0x9a10, %rdi
nop
nop
add %r12, %r12
mov $97, %rcx
rep movsb
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0xdd77, %r8
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%r8)
sub $35297, %r12
lea addresses_WT_ht+0x14a3c, %rdx
and %r12, %r12
mov (%rdx), %r8d
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rsi

// Faulty Load
lea addresses_US+0xfa10, %rsi
nop
nop
xor %r9, %r9
mov (%rsi), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
