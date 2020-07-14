.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
lea addresses_A_ht+0x1bc02, %r10
inc %rbx
mov (%r10), %ebp
nop
nop
and %r14, %r14
lea addresses_UC_ht+0xe2fa, %r12
and $56965, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1aefa, %rbx
nop
nop
xor %r10, %r10
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm0
vpextrq $1, %xmm0, %r13
cmp %r8, %r8
lea addresses_A_ht+0x163fa, %r14
nop
nop
nop
nop
nop
dec %r10
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
dec %r14
lea addresses_D_ht+0x183fa, %rbx
cmp $7716, %r10
movw $0x6162, (%rbx)
nop
nop
nop
lfence
lea addresses_WT_ht+0x1dffa, %r13
xor $32724, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
dec %r8
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x62c8, %r9
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
nop
nop
nop
and $12287, %r14

// REPMOV
lea addresses_WT+0x4e50, %rsi
lea addresses_WC+0xf7a, %rdi
nop
sub %r13, %r13
mov $75, %rcx
rep movsw
nop
nop
xor %r8, %r8

// Load
lea addresses_RW+0x1527a, %r8
inc %r10
movb (%r8), %cl
nop
and $19138, %r9

// Faulty Load
mov $0x27aea70000000ffa, %rdi
nop
nop
nop
nop
sub $15254, %rax
mov (%rdi), %r14w
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'00': 19801, '39': 2028}
00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 39 00 00 00 00 39 00 00 00 00 00 39 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 39 00 00 00 00 00 00 00 39 39 39 00 00 00 00 00 00 00 00 39 00 00 00 00 39 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 39 00 00 00 00 00 39 00 00 00 00 00 00 00 39 00 39 00 00 00 00 39 00 39 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 39 00 39 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 39 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 39 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 39 00 00 00 00 00 00 39 00 00 00 00 00 00 39 39 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 39 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 39 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 39 00 39 00 00 00 39 00 00 39 00 00 00 39 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 39 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 00 00 00 00 39 00 00 00
*/
