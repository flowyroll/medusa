.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x559d, %rdi
inc %r13
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
sub $12185, %rax
lea addresses_WT_ht+0x13a5, %rsi
lea addresses_normal_ht+0x103ad, %rdi
nop
nop
nop
nop
nop
xor $16770, %rdx
mov $62, %rcx
rep movsw
nop
nop
nop
nop
cmp $17193, %rax
lea addresses_D_ht+0x1c3e5, %rcx
nop
nop
nop
and $48445, %rdx
mov (%rcx), %r13
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x14896, %r13
nop
nop
nop
nop
nop
xor $53280, %rdx
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
and %rcx, %rcx
lea addresses_normal_ht+0x1b3e5, %rsi
lea addresses_WT_ht+0x7665, %rdi
nop
nop
sub $49969, %r13
mov $110, %rcx
rep movsb
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0xb235, %r13
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
sub $52598, %rax
lea addresses_D_ht+0x9be5, %rdi
nop
lfence
movb (%rdi), %r8b
cmp $8237, %rcx
lea addresses_normal_ht+0xfe5, %rsi
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x95af, %rsi
lea addresses_UC_ht+0x13d1, %rdi
nop
nop
and %rbp, %rbp
mov $126, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_D_ht+0x52c5, %rsi
lea addresses_D_ht+0x155e5, %rdi
nop
nop
nop
nop
nop
cmp $2833, %rax
mov $17, %rcx
rep movsl
add $31373, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x17675, %r9
xor %rbx, %rbx
mov (%r9), %rdx
nop
nop
nop
cmp $53010, %rdx

// Store
lea addresses_RW+0x91d5, %rcx
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
xor $9150, %r9

// Faulty Load
lea addresses_RW+0x10be5, %rdx
nop
nop
sub $6284, %rax
vmovntdqa (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'48': 4782, '49': 15753, '72': 19, '45': 2, '08': 10, '44': 1262, '00': 1}
49 49 49 49 48 49 48 49 49 49 49 49 48 49 44 48 49 49 49 49 48 49 48 49 48 49 49 49 48 49 49 49 48 49 49 48 49 49 49 48 49 49 48 49 49 48 49 49 49 49 49 49 49 48 49 49 49 49 49 49 48 49 44 49 49 48 49 49 49 44 49 49 49 49 49 48 49 49 49 48 49 49 48 49 49 49 44 49 48 48 49 48 49 49 49 48 49 49 49 48 48 48 49 49 49 49 48 49 49 49 49 49 49 49 48 48 48 49 49 49 49 49 49 48 44 49 49 49 49 48 49 44 49 49 48 49 44 48 49 49 44 49 49 48 49 49 49 49 48 49 48 48 49 49 49 48 48 44 48 49 49 48 49 48 49 49 49 49 49 49 49 48 49 49 49 49 48 49 49 49 48 49 49 48 44 48 49 49 49 49 49 49 49 49 48 48 49 48 48 49 48 49 49 48 48 49 49 49 49 44 49 49 48 49 48 48 48 49 48 49 49 49 49 49 49 49 49 49 48 49 49 48 49 49 49 49 49 48 49 49 48 48 49 49 49 49 49 49 48 49 48 44 48 49 49 48 48 49 48 48 49 49 48 49 48 49 49 48 49 48 49 48 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 49 49 48 44 48 49 48 49 49 49 49 49 49 49 48 49 49 49 44 49 49 48 49 49 49 49 49 49 44 49 49 48 49 48 49 49 48 49 49 44 49 48 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 48 49 49 49 48 49 48 49 49 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 44 49 48 49 48 49 49 44 49 48 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 48 44 49 49 49 49 48 49 49 48 49 49 48 44 49 49 49 48 48 49 49 44 49 49 49 48 49 44 44 49 49 49 49 49 49 49 48 49 44 49 49 49 44 48 44 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 48 49 49 49 49 49 48 49 49 44 49 49 49 44 48 49 44 49 49 49 49 48 49 48 49 49 49 49 49 49 49 49 49 48 49 49 48 48 49 49 49 49 48 49 49 48 49 49 49 49 48 49 49 48 49 49 49 49 49 49 48 49 49 49 48 48 48 49 48 49 49 49 49 49 49 49 48 48 49 48 48 49 49 49 48 49 44 48 48 48 48 49 48 49 49 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 49 44 49 44 48 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 48 49 49 49 49 48 49 49 49 49 48 49 49 49 44 49 49 49 49 44 49 49 49 48 49 44 49 49 48 48 48 48 48 49 49 48 49 49 49 49 48 49 49 48 49 49 48 49 49 49 49 48 48 49 49 49 44 44 49 49 49 49 49 48 49 49 48 48 48 49 49 48 49 49 49 49 49 44 49 49 49 49 49 44 49 49 48 44 49 49 44 49 48 48 49 49 48 49 49 49 49 49 48 49 48 44 49 48 48 49 49 49 48 48 49 49 49 49 49 49 49 49 49 44 49 49 49 49 48 49 49 49 48 49 48 48 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 44 48 49 48 49 49 49 49 49 48 49 49 48 49 49 49 49 49 49 49 49 48 44 48 48 49 48 49 49 49 49 44 49 48 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 48 49 48 49 49 49 49 44 48 49 44 49 49 49 49 48 49 44 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 48 44 48 49 49 49 49 49 48 49 49 48 49 49 44 48 48 49 49 49 49 49 48 48 49 44 49 49 48 49 49 48 49 49 48 49 48 49 48 48 49 49 49 49 48 49 49 49 48 49 48 48 49 49 49 48 49 49 48 49 49 49 49 49 48 48 49 49 48 49 48 49 49 49 49 49 49 49 48 49 49 49 48 48 49 49 49 48 48 48 49 49 49 49 49 48 49 48 49 49 44 49 44 49 48 49 48 49 49 49 49 49 48 49 49 49 49 49 49 49 48 44 49 49 49 48 49 48 49 44 48 49 49 49 44 49 49
*/
