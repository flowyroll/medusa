.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a45c, %rsi
lea addresses_UC_ht+0x15d84, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $118, %rcx
rep movsl
add %rcx, %rcx
lea addresses_UC_ht+0x17d5c, %r12
nop
nop
nop
nop
nop
add $10930, %rbx
mov (%r12), %esi
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1e85c, %rdi
and $27768, %r9
mov (%rdi), %bx
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xcdda, %r12
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xe29c, %r9
nop
and $3165, %r12
movw $0x6162, (%r9)
and %rsi, %rsi
lea addresses_A_ht+0x905c, %rsi
lea addresses_WT_ht+0x1bc5c, %rdi
nop
nop
add %r10, %r10
mov $25, %rcx
rep movsw
nop
nop
nop
cmp $50959, %r9
lea addresses_D_ht+0x65c, %r12
nop
nop
nop
nop
xor $19081, %rsi
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
sub $26448, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x465c, %r10
nop
add $51572, %rcx
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 11}}
{'00': 7}
00 00 00 00 00 00 00
*/
