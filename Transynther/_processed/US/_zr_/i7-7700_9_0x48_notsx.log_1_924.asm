.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xf303, %rdx
nop
nop
add $59643, %r13
movw $0x6162, (%rdx)
nop
nop
xor $59603, %rdi
lea addresses_A_ht+0x828b, %rsi
nop
add %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x179c3, %rsi
lea addresses_UC_ht+0xb7d3, %rdi
nop
sub %r15, %r15
mov $72, %rcx
rep movsl
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x127cb, %rsi
add $30436, %rcx
mov (%rsi), %r15d
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x1b7c3, %r12
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdx
pop %rdi
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'00': 1}
00
*/
