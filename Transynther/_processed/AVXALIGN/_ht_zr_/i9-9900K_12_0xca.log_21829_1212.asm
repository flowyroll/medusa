.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1dcfe, %rdx
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
nop
cmp $26971, %r13
lea addresses_WC_ht+0x1d97e, %r15
add %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
and $16373, %r13
lea addresses_D_ht+0xc98e, %r15
nop
nop
nop
nop
and $60679, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_D_ht+0xe0fe, %r15
and %rdx, %rdx
mov (%r15), %di
nop
nop
nop
nop
xor $39298, %r15
lea addresses_WT_ht+0xa77e, %rdi
nop
nop
nop
sub %r12, %r12
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
xor $13573, %rdi
lea addresses_WT_ht+0x2aba, %r9
nop
nop
and %rdi, %rdi
mov (%r9), %r13
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x12b6a, %r9
nop
nop
and $30923, %r12
mov (%r9), %r15
nop
nop
nop
and $16995, %r13
lea addresses_A_ht+0xfefe, %r15
nop
and %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
dec %rdi
lea addresses_A_ht+0x1a7be, %r12
nop
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
add %r8, %r8
lea addresses_A_ht+0xa75a, %rsi
lea addresses_UC_ht+0x1bafe, %rdi
nop
nop
nop
dec %rdx
mov $47, %rcx
rep movsl
inc %r13
lea addresses_WC_ht+0x61fe, %rsi
lea addresses_D_ht+0x64fe, %rdi
nop
and $46456, %r13
mov $110, %rcx
rep movsq
nop
nop
nop
xor $61236, %r8
lea addresses_normal_ht+0xe4fe, %r13
nop
nop
nop
inc %r8
movl $0x61626364, (%r13)
nop
nop
inc %r8
lea addresses_A_ht+0xb23e, %rdx
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
add $16970, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0xdfe, %rsi
nop
nop
nop
cmp $44473, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
add %r8, %r8

// Faulty Load
mov $0x4fe, %r9
nop
nop
nop
nop
nop
inc %rdi
vmovaps (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'45': 4932, '00': 9184, '48': 7713}
48 00 00 48 48 48 45 48 48 00 00 00 00 00 45 00 00 48 48 48 48 45 00 48 48 00 00 00 48 00 45 45 48 48 45 00 00 45 48 00 48 48 48 48 45 48 48 45 45 48 48 45 48 00 00 45 48 00 48 00 48 00 48 00 45 00 48 48 48 00 48 48 45 45 00 48 45 00 00 48 00 48 45 00 48 48 45 45 00 48 45 48 00 45 00 48 48 45 00 00 45 00 00 48 00 48 48 45 48 48 45 45 00 48 00 45 45 00 48 48 45 45 48 48 00 48 45 00 48 45 00 45 45 00 48 00 00 48 48 48 45 48 00 00 45 00 00 48 00 48 48 00 00 00 00 00 00 00 00 45 00 00 48 48 48 45 48 48 00 48 45 45 00 48 45 00 45 45 00 48 45 00 48 48 45 45 48 48 45 00 00 00 45 00 00 00 00 00 48 00 45 00 48 00 45 00 00 45 00 00 45 00 00 45 00 00 48 00 48 45 00 00 48 48 45 48 00 00 45 00 00 48 00 00 48 45 48 48 45 45 48 48 45 00 00 00 45 00 00 48 48 00 48 00 45 00 48 45 45 00 00 45 00 00 48 00 00 00 45 48 48 00 00 00 45 48 00 45 00 00 48 00 48 48 00 00 00 48 45 48 00 00 45 48 00 48 00 00 48 00 45 45 48 48 48 00 00 48 48 45 45 00 00 45 00 48 48 00 48 48 45 48 48 48 45 48 48 45 00 00 00 45 00 00 45 00 00 00 00 00 48 48 45 00 48 48 45 00 48 45 00 00 48 48 00 48 00 45 00 48 48 45 00 48 48 45 45 48 48 48 45 00 48 48 45 45 00 00 45 00 45 45 00 48 00 00 00 48 48 45 45 48 48 48 45 48 00 00 45 00 00 48 00 48 48 48 00 45 00 48 00 45 00 00 45 00 48 48 00 00 48 45 48 48 45 45 00 48 00 45 48 45 45 00 45 45 00 48 00 48 00 45 45 48 48 45 00 00 45 00 00 48 00 00 48 45 45 48 00 00 00 45 00 00 45 00 00 48 48 48 45 48 48 48 45 00 00 00 45 00 45 45 48 48 45 00 00 48 00 48 48 00 00 48 00 00 00 00 00 45 48 00 48 00 00 48 48 45 45 48 48 45 00 00 45 00 48 48 00 48 48 00 45 00 48 48 45 00 48 45 00 00 48 48 00 48 00 45 00 48 45 45 00 00 45 00 45 45 00 48 00 00 48 48 45 45 48 48 45 48 00 00 45 00 00 48 00 48 48 00 00 48 48 48 00 45 00 00 48 45 48 00 00 45 48 00 48 45 45 00 48 00 00 00 00 48 45 48 00 00 45 00 00 48 00 00 48 00 00 00 00 00 00 00 48 48 45 45 00 00 45 48 00 48 00 48 48 45 00 00 48 45 48 00 00 45 00 45 45 00 48 45 00 00 48 48 45 45 00 00 45 00 00 48 48 48 48 00 00 48 00 00 00 00 00 45 00 48 48 45 48 00 00 45 00 00 00 00 00 48 00 45 45 00 48 48 45 48 00 00 45 00 00 48 00 48 00 45 45 00 00 45 00 00 45 00 00 00 00 00 48 00 45 00 48 00 45 00 00 45 00 00 48 48 48 48 45 48 48 45 45 00 48 48 45 00 48 45 00 00 48 00 48 48 48 48 45 45 48 00 45 00 00 45 00 00 48 00 00 00 45 45 00 48 48 48 48 48 45 48 48 48 45 48 00 00 45 48 00 48 00 48 48 00 00 48 48 45 00 00 00 45 00 00 48 00 00 48 00 00 48 48 45 45 00 00 45 00 48 48 00 48 48 45 48 48 45 45 48 48 45 00 00 00 45 00 00 48 00 48 48 45 48 48 45 45 48 48 45 48 00 00 45 00 00 48 48 48 45 48 48 00 00 48 00 45 00 48 48 48 00 48 48 45 45 48 48 48 45 48 48 48 00 48 48 45 48 00 48 45 00 00 48 48 48 48 00 00 00 00 00 00 45 48 00 48 48 45 45 48 48 48 00 00 48 48 45 45 00 00 45 48 00 48 48 48 48 45 48 48 45 45 48 48 45 48 00 00 45 00 48 48 00 48 48 45 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 48 00 45 45 48 00 45 00 00 45 00 00 48 00 48 00 45 00 48 00 45 00 48 48 45 45 00 48 00 00 48 48 48 45 00 00 00 45 48 00 48 00 48 00 00 00
*/
