.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16ad4, %rsi
lea addresses_WC_ht+0xf1d4, %rdi
clflush (%rsi)
nop
nop
inc %r14
mov $112, %rcx
rep movsw
cmp $42692, %r9
lea addresses_normal_ht+0x11d54, %r14
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
cmp $25982, %rcx
lea addresses_WT_ht+0x76d4, %rsi
lea addresses_WT_ht+0xa0fc, %rdi
nop
nop
nop
nop
inc %r9
mov $13, %rcx
rep movsq
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0xfad4, %rsi
lea addresses_A_ht+0x108d4, %rdi
nop
cmp $45825, %r8
mov $3, %rcx
rep movsl
nop
add $43841, %r9
lea addresses_UC_ht+0x11ad4, %rdi
clflush (%rdi)
add $44873, %r13
movb (%rdi), %r9b
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0xe2d4, %rcx
sub $14972, %rbx
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'00': 3}
00 00 00
*/
