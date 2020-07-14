.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x879b, %rsi
lea addresses_A_ht+0x46bb, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r12, %r12
mov $94, %rcx
rep movsw
nop
nop
add $7486, %rbp
lea addresses_UC_ht+0x1312b, %rdi
nop
nop
xor %r12, %r12
mov (%rdi), %rsi
nop
add %r12, %r12
lea addresses_UC_ht+0xca3b, %rsi
lea addresses_normal_ht+0x1ca59, %rdi
add $24765, %rbx
mov $107, %rcx
rep movsq
and $39754, %rsi
lea addresses_UC_ht+0x1bfbb, %rsi
nop
dec %rcx
mov (%rsi), %r12w
nop
xor $31859, %rbx
lea addresses_D_ht+0x14716, %rbx
nop
nop
nop
mfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
cmp $6436, %rsi
lea addresses_UC_ht+0x9b9b, %rcx
nop
nop
nop
nop
sub $49462, %rdi
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
nop
cmp $54742, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_normal+0x466b, %r13
nop
nop
nop
nop
sub %rdx, %rdx
vmovntdqa (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_US+0xdf9b, %rbx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'00': 31}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
