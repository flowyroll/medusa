.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c643, %r10
xor %r12, %r12
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
sub $8990, %rbx
lea addresses_D_ht+0x11963, %rcx
inc %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%rcx)
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xd8c3, %rsi
lea addresses_WC_ht+0x7e43, %rdi
nop
inc %r13
mov $120, %rcx
rep movsw
nop
nop
dec %rdx
lea addresses_WT_ht+0x1a013, %rsi
nop
nop
add $60851, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x7143, %rsi
lea addresses_A_ht+0x9efb, %rdi
nop
nop
nop
add %r10, %r10
mov $42, %rcx
rep movsw
nop
cmp $42700, %rbx
lea addresses_A_ht+0x16e13, %rdx
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm1
and $0xffffffffffffffc0, %rdx
movntdq %xmm1, (%rdx)
nop
nop
cmp $23457, %r12
lea addresses_A_ht+0x4743, %rsi
nop
and %rcx, %rcx
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
nop
add $27907, %rdi
lea addresses_normal_ht+0x1e653, %rsi
lea addresses_WT_ht+0x1371f, %rdi
nop
nop
nop
cmp %r13, %r13
mov $37, %rcx
rep movsl
nop
nop
xor $48620, %r12
lea addresses_WT_ht+0x1008b, %rdi
nop
nop
and $60956, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
xor $24901, %rdx
lea addresses_normal_ht+0xbfcd, %rdx
and %rsi, %rsi
mov (%rdx), %r12d
nop
nop
nop
mfence
lea addresses_WC_ht+0x1883b, %rsi
lea addresses_WT_ht+0x12443, %rdi
nop
nop
nop
nop
nop
cmp $51570, %rbx
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x4083, %r12
nop
nop
and $28746, %rcx
mov (%r12), %r10d
nop
nop
nop
nop
cmp $32136, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_A+0x193df, %rbx
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_US+0xc3, %rsi
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movntdq %xmm4, (%rsi)
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_WT+0x15f43, %rsi
clflush (%rsi)
nop
sub $45134, %r10
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'39': 67}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
