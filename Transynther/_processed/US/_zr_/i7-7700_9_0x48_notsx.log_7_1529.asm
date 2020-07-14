.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a35, %rbp
sub %r8, %r8
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x19235, %rsi
lea addresses_UC_ht+0x161b5, %rdi
nop
sub %r13, %r13
mov $42, %rcx
rep movsq
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1e635, %r13
clflush (%r13)
nop
nop
add %rbp, %rbp
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rsi
nop
add %r8, %r8
lea addresses_WT_ht+0xeab5, %r8
nop
sub %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
and $4743, %rsi
lea addresses_normal_ht+0x7535, %rbp
nop
nop
nop
nop
nop
lfence
mov (%rbp), %r8
nop
nop
nop
xor $6465, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0xd635, %rdi
nop
add %rcx, %rcx
mov (%rdi), %bx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'00': 7}
00 00 00 00 00 00 00
*/
