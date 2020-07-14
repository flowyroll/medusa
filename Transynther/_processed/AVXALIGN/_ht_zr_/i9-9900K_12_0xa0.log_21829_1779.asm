.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x131b, %rdi
cmp $48082, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
nop
sub $16583, %r14
lea addresses_WC_ht+0x1ac1b, %r10
nop
nop
nop
nop
nop
sub $7245, %rsi
mov (%r10), %rdx
cmp %r10, %r10
lea addresses_D_ht+0x7a03, %r10
xor %rdi, %rdi
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
and $20972, %rsi
lea addresses_WT_ht+0x10c1b, %r8
nop
nop
nop
sub %r14, %r14
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
xor $17300, %rsi
lea addresses_WT_ht+0x52ee, %rdx
nop
add %r8, %r8
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x981b, %rdi
nop
add %rbx, %rbx
movb (%rdi), %r10b
lfence
lea addresses_WC_ht+0x4ac5, %rsi
lea addresses_UC_ht+0x231b, %rdi
nop
nop
nop
nop
and $42668, %r10
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1332, %rsi
lea addresses_WC_ht+0x1781b, %rdi
clflush (%rdi)
nop
and %r8, %r8
mov $99, %rcx
rep movsw
nop
dec %rsi
lea addresses_UC_ht+0x6757, %rdx
nop
nop
add %rdi, %rdi
movb (%rdx), %r8b
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x1391b, %rdi
inc %r8
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
add $61255, %r8
lea addresses_A_ht+0x579b, %rsi
lea addresses_A_ht+0x1833b, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $122, %rcx
rep movsq
nop
nop
nop
cmp $49966, %rdi
lea addresses_A_ht+0x9561, %rsi
lea addresses_WT_ht+0x1af93, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $62865, %rdx
mov $90, %rcx
rep movsq
nop
nop
nop
add $17078, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rsi

// Store
mov $0xcf9ef0000000a1b, %rsi
and %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
add $49792, %r13

// Store
lea addresses_WC+0x2eeb, %rax
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_WT+0x4c1b, %r11
nop
nop
nop
nop
nop
add %rbp, %rbp
movntdqa (%r11), %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'45': 12668, '49': 1326, '00': 7835}
45 00 45 00 45 45 00 45 45 49 00 45 49 00 45 49 00 45 49 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 45 45 00 45 45 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 00 45 49 00 45 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 00 45 49 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 45 45 00 45 45 49 00 45 49 00 45 45 00 45 49 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 00 45 00 00 45 00 45 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 45 45 00 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 49 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 49 00 45 49 00 00 45 49 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 49 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 00 45 49 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 49 00 45 49 00 45 49 00 45 45 00 45 45 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 00 45 00 00 45 49 00 45 00 00 45 49 45 49 00 45 49 45 00 45 45 00 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 45 49 00 45 49 00 45 49 00 45 49 00 45 49 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 00 00 45 00 45 45 00 00 45 49 00 45 45 00 45 45 00 45 45 00 45 49 00 45 45 00 45 45 00 45 45 00 45 45 00 45 45 49 00 45 49 00 45 49 00 45 49 00 45 45 00 45 49 00 45 49 00 45 45 00 45 45 00
*/
