.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x18f27, %rbx
nop
inc %r13
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0xdb27, %rsi
nop
nop
xor $38019, %rbp
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
and %r13, %r13
lea addresses_normal_ht+0x16967, %rsi
lea addresses_WT_ht+0x19327, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $14, %rcx
rep movsw
sub $29195, %r13
lea addresses_UC_ht+0x19e53, %rsi
lea addresses_normal_ht+0x118e7, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $18, %rcx
rep movsw
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xd327, %rcx
nop
nop
inc %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rcx)
nop
nop
dec %rcx
lea addresses_WC_ht+0xc083, %rbx
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp $55872, %r13
lea addresses_WT_ht+0x13b27, %rcx
clflush (%rcx)
xor $62802, %rbx
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x10327, %rbx
nop
nop
cmp %rbp, %rbp
mov (%rbx), %di
nop
add $43650, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x13b27, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp $11727, %r9
movl $0x51525354, (%r10)
nop
nop
nop
xor %r9, %r9

// Faulty Load
mov $0x15b8490000000b27, %rsi
nop
add %rbx, %rbx
movb (%rsi), %r10b
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'54': 2571, '00': 110, '6d': 19148}
54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 54 54 54 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 54 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 54 54 54 54 54 54 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 00 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 54 54 54 54 54 54 54 54 54 6d 6d 54 6d 6d 6d 54 54 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 00 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d
*/
