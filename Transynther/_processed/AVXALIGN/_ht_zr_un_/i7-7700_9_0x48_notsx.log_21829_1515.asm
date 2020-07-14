.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd651, %r15
nop
nop
and $57124, %r13
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
nop
add $54321, %rdi
lea addresses_WT_ht+0x8051, %rsi
lea addresses_WT_ht+0x1b749, %rdi
nop
nop
xor $63352, %rdx
mov $111, %rcx
rep movsl
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x4c51, %rdi
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1ad91, %rsi
lea addresses_D_ht+0x1e151, %rdi
clflush (%rdi)
nop
nop
dec %r15
mov $34, %rcx
rep movsl
nop
cmp $1217, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rax
push %rdx

// Store
lea addresses_D+0x1d9a1, %r12
nop
xor $40365, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_RW+0xbe71, %r9
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
xor $28364, %rdx

// Faulty Load
mov $0x3e3cf70000000851, %r10
nop
nop
nop
and $56269, %rdx
vmovntdqa (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'da': 1, '48': 1, '46': 3203, '49': 11073, '00': 28, '45': 1, '59': 2, '5a': 4, '9f': 1, '60': 7515}
00 49 49 60 46 60 60 60 60 46 46 49 46 49 60 49 49 46 60 49 60 60 49 60 60 46 49 60 46 60 60 49 60 46 46 49 60 46 49 49 46 46 60 60 46 60 60 46 60 49 49 49 60 46 49 60 60 46 49 60 46 60 46 46 49 49 49 49 49 49 49 49 49 60 60 46 49 60 49 46 49 46 49 49 49 46 60 49 49 49 46 49 60 60 46 60 60 60 60 60 60 60 60 60 60 46 46 46 49 60 60 49 60 46 60 60 49 49 49 60 60 60 60 46 60 46 46 49 60 49 60 49 46 49 60 46 60 49 60 60 46 49 60 60 46 46 49 60 49 49 60 46 46 49 60 60 60 46 60 60 60 46 60 46 60 46 49 60 60 49 49 60 46 46 46 49 49 49 49 46 60 60 46 49 46 49 49 49 49 60 49 60 60 49 60 60 46 46 46 60 46 60 49 49 49 49 49 49 60 60 46 49 60 49 60 60 46 49 49 49 49 49 60 60 60 60 46 60 60 46 49 60 46 60 49 46 60 60 46 60 49 49 60 49 00 46 46 46 49 49 60 46 46 46 49 49 49 60 46 49 46 60 46 60 60 49 60 46 46 60 46 49 46 60 60 60 60 60 46 46 49 60 60 46 60 60 60 46 60 46 60 60 49 49 49 49 49 49 49 49 49 46 46 60 46 49 49 49 49 49 49 49 60 49 49 49 46 49 60 60 60 60 49 60 60 60 60 60 46 49 49 49 60 49 46 60 49 60 49 60 49 49 49 60 49 60 49 60 60 46 46 60 49 60 60 46 60 46 46 60 46 49 60 46 60 60 49 49 49 60 49 60 46 46 49 49 49 49 49 49 60 49 60 49 49 60 60 46 46 46 60 60 46 49 49 46 49 60 60 60 46 49 60 60 46 46 46 60 60 46 60 49 60 49 60 46 60 60 49 60 46 60 60 46 46 60 46 60 60 49 49 49 49 49 49 49 49 49 49 49 60 46 60 46 49 60 60 60 46 60 60 46 49 46 60 60 46 60 60 60 60 46 60 60 46 60 60 60 60 60 60 60 49 49 60 46 46 60 60 49 60 49 49 49 49 49 49 60 60 49 60 49 49 49 60 60 46 49 49 60 60 46 60 60 60 46 60 49 60 60 46 60 46 60 60 60 46 49 49 60 46 60 60 49 49 49 60 49 46 60 46 60 49 46 60 46 49 49 60 60 59 60 60 60 49 60 46 46 60 60 49 60 60 46 60 49 60 49 60 60 49 49 46 49 49 49 49 60 49 60 49 60 49 46 49 60 49 60 49 60 46 46 49 60 46 49 49 60 46 60 46 46 46 49 49 46 49 49 60 49 46 49 60 60 46 46 46 60 60 46 49 46 49 60 60 46 46 60 49 49 60 46 46 49 46 60 49 60 60 60 60 60 46 46 60 60 49 49 60 49 46 49 49 49 60 46 60 49 46 49 60 60 60 46 49 49 60 60 46 60 46 46 46 60 60 60 46 49 60 60 60 60 49 60 60 49 46 60 60 60 49 49 60 46 60 46 60 60 49 46 49 46 49 49 49 60 49 60 49 49 49 46 49 49 60 46 60 60 60 60 46 49 60 46 49 60 49 46 60 46 46 46 60 60 49 49 49 49 60 60 60 60 60 46 60 46 49 60 60 46 49 46 60 60 46 60 60 60 60 60 60 60 46 60 46 60 60 46 60 49 46 49 60 46 46 46 49 49 49 60 49 60 49 60 60 60 46 60 46 60 46 60 46 60 49 60 60 60 60 49 60 46 49 46 49 49 49 49 60 49 46 49 49 49 49 46 49 60 46 46 60 49 46 46 60 46 60 49 60 46 49 49 60 49 60 46 60 60 49 60 49 49 60 49 60 46 60 46 49 49 60 49 60 49 60 49 46 49 60 60 49 49 49 49 49 49 60 49 60 46 46 49 60 46 46 60 46 46 46 60 46 46 46 46 60 60 46 60 60 60 46 49 46 60 49 46 60 49 49 60 60 46 49 46 46 49 60 46 46 49 60 60 49 49 49 60 60 49 49 49 60 49 49 49 49 46 60 49 49 60 60 46 60 60 60 60 46 46 46 60 60 60 60 46 60 46 49 49 60 60 60 60 60 60 46 46 60 49 60 46 60 46 46 60 49 60 60 49 49 60 46 46 49 60 46 46 60 49 46 49 60 46 60 46 46 60 60 46 49 46 49 49 49 49 60 49 46 49 60 60 60 60 46 46 46 60 49 60 49 49
*/
