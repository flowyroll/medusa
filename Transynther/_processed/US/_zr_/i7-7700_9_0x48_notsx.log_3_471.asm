.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x45c4, %rcx
and $33755, %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $41798, %rdx
lea addresses_D_ht+0x47c4, %rsi
lea addresses_normal_ht+0x103f4, %rdi
clflush (%rsi)
nop
sub %r10, %r10
mov $64, %rcx
rep movsq
nop
nop
nop
nop
add $59291, %rdx
lea addresses_WT_ht+0x1c3c4, %r14
cmp %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
xor $1178, %r14
lea addresses_WC_ht+0x8bc4, %r14
nop
nop
nop
nop
nop
sub $7658, %rbp
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
cmp $39176, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x1b5c4, %rax
nop
nop
nop
nop
nop
add $18117, %r12
mov (%rax), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'00': 3}
00 00 00
*/
