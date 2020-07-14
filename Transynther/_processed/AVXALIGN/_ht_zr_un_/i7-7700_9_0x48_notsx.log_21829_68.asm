.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x102e, %r15
nop
nop
nop
xor $31689, %rsi
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rdi
nop
add $16620, %r14
lea addresses_D_ht+0x172da, %r14
nop
and $46258, %rcx
movb $0x61, (%r14)
nop
nop
nop
nop
add $48081, %r14
lea addresses_normal_ht+0x1e2da, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rcx), %r14
nop
sub %r14, %r14
lea addresses_WC_ht+0x1039a, %rcx
add $61211, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
sub $10267, %r15
lea addresses_A_ht+0x1789c, %r15
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x11eda, %rdi
nop
nop
nop
nop
add $59669, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
cmp $43573, %rdi
lea addresses_WC_ht+0x1dada, %r15
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
add $7530, %rbp
lea addresses_normal_ht+0x1eda, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rbp)
sub $49287, %r10
lea addresses_A_ht+0x1c6da, %r14
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r14
movntdq %xmm3, (%r14)
nop
nop
dec %r14
lea addresses_D_ht+0xdd62, %rsi
lea addresses_D_ht+0xed46, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r12
mov $6, %rcx
rep movsq
nop
and $41428, %r14
lea addresses_UC_ht+0x134da, %rsi
lea addresses_WT_ht+0x1055a, %rdi
nop
nop
add %rbp, %rbp
mov $111, %rcx
rep movsl
and %rsi, %rsi
lea addresses_WT_ht+0xfcba, %r12
nop
sub %r10, %r10
movb $0x61, (%r12)
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x6bda, %r15
nop
nop
nop
nop
sub $3164, %rcx
movw $0x6162, (%r15)
nop
nop
nop
nop
sub $4300, %r15
lea addresses_WC_ht+0x182ea, %r15
nop
add %r10, %r10
mov (%r15), %edi
nop
nop
nop
nop
nop
sub $64607, %rdi
lea addresses_D_ht+0x1dada, %rsi
lea addresses_WT_ht+0x7db6, %rdi
and $44526, %rbp
mov $65, %rcx
rep movsb
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Store
mov $0xd1e, %r9
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WT+0x17ada, %r13
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r13)
add $15453, %r9

// Faulty Load
mov $0xeda, %rsi
nop
nop
nop
nop
dec %r13
vmovntdqa (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'c0': 1, '46': 20313, '49': 1399, '1a': 1, '08': 6, '00': 109}
46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 49 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 49 46 46 46 46 46 49 46 46 49 46 49 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 49 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 49 46 49 46 46 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
