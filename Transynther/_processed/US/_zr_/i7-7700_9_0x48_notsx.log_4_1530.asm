.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x12e82, %rdi
nop
nop
cmp $45697, %rbp
mov (%rdi), %rcx
nop
nop
nop
and $23757, %r9
lea addresses_WT_ht+0xad48, %rsi
lea addresses_WT_ht+0xb082, %rdi
nop
nop
nop
sub $6262, %r9
mov $100, %rcx
rep movsw
nop
sub $52157, %rbp
lea addresses_A_ht+0xca02, %rdx
nop
nop
nop
and $57277, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x3402, %rsi
lea addresses_A_ht+0x13c02, %rdi
nop
nop
and $33088, %r14
mov $127, %rcx
rep movsq
xor %r9, %r9
lea addresses_WT_ht+0xc302, %rdx
nop
nop
cmp $45683, %rsi
mov (%rdx), %r9
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x16f12, %rcx
nop
nop
nop
nop
nop
dec %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
and $15989, %rcx
lea addresses_A_ht+0x17c82, %rsi
lea addresses_UC_ht+0x13a02, %rdi
nop
nop
nop
and $45313, %rax
mov $93, %rcx
rep movsl
nop
inc %rsi
lea addresses_WT_ht+0xd002, %rbp
nop
nop
nop
nop
nop
inc %r9
mov (%rbp), %edx
nop
nop
nop
nop
nop
cmp $43921, %r9
lea addresses_A_ht+0x78c2, %r14
sub $602, %rsi
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
add $10671, %rbp
lea addresses_UC_ht+0x1eb52, %rdi
nop
cmp %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x6c34, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rcx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
cmp $41922, %r9
lea addresses_D_ht+0x15268, %rcx
cmp $5983, %rdi
mov (%rcx), %edx
nop
nop
inc %rcx
lea addresses_WT_ht+0x37fe, %rsi
lea addresses_normal_ht+0x8fb2, %rdi
nop
nop
nop
nop
nop
cmp $39987, %r9
mov $64, %rcx
rep movsq
nop
nop
nop
nop
nop
and $19586, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x6202, %rsi
nop
sub $43390, %r13
mov (%rsi), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'00': 4}
00 00 00 00
*/
