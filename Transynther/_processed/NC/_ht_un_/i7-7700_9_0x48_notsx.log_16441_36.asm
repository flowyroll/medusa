.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d981, %rsi
lea addresses_D_ht+0xb943, %rdi
clflush (%rdi)
nop
nop
cmp $57023, %rbp
mov $124, %rcx
rep movsq
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x9d73, %r14
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%r14)
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xfc3, %r14
add $61707, %rbx
mov (%r14), %edi
nop
xor $51172, %rbx
lea addresses_normal_ht+0x4f43, %rbp
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
add $11321, %rbx
lea addresses_WC_ht+0xd743, %rbx
nop
nop
nop
sub $92, %rcx
movl $0x61626364, (%rbx)
nop
sub %r12, %r12
lea addresses_normal_ht+0xb243, %r14
nop
nop
nop
nop
cmp $58075, %rbx
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
sub $8705, %rbx
lea addresses_WC_ht+0x843, %rsi
nop
sub $45718, %rbx
mov (%rsi), %di
xor $24553, %rcx
lea addresses_D_ht+0x18ec3, %rcx
nop
nop
nop
xor $1561, %rbx
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %r12
sub $44823, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Faulty Load
mov $0x70d5120000000143, %rax
nop
cmp %rdx, %rdx
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}}
{'44': 1925, 'd6': 1, '46': 14515}
46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 44 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 44 44 44 46 44 46 46 44 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 44 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 44 46 46 44 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 44 46 46 44 44 44 44 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 44 46 44 44 46 46 46 46 46 46 44 44 46 46 46 44 46 46 44 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 44 46 46 46 44 46 46 46 46 46 44 44 44 44 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46
*/
