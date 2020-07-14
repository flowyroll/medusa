.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5a60, %rsi
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rsi
vmovaps %ymm5, (%rsi)
nop
nop
nop
nop
cmp $48568, %r12
lea addresses_D_ht+0x19060, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
nop
nop
and $9814, %rsi
lea addresses_normal_ht+0x1af12, %rsi
lea addresses_UC_ht+0x3260, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $76, %rcx
rep movsq
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1d860, %rsi
lea addresses_D_ht+0x1b660, %rdi
nop
dec %r14
mov $118, %rcx
rep movsl
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x1d7e0, %rsi
nop
nop
nop
nop
nop
inc %rbp
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
inc %rbp
lea addresses_normal_ht+0xaa80, %rsi
nop
nop
nop
nop
nop
dec %rbp
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
xor $55841, %rdi
lea addresses_D_ht+0x15e60, %rbx
nop
nop
nop
nop
and $10997, %r13
mov (%rbx), %r12d
nop
nop
nop
nop
sub $10118, %rdi
lea addresses_UC_ht+0xc860, %rsi
lea addresses_A_ht+0x119a0, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xc460, %rsi
lea addresses_WT_ht+0x3b60, %rdi
nop
nop
nop
nop
cmp $20739, %rbx
mov $70, %rcx
rep movsw
inc %rdi
lea addresses_WT_ht+0x17348, %rcx
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x8860, %rsi
lea addresses_normal_ht+0x13668, %rdi
nop
inc %r12
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rdi

// Store
mov $0x725d180000000860, %r8
nop
cmp $39177, %r14
movl $0x51525354, (%r8)
nop
nop
nop
cmp $19422, %r15

// Store
lea addresses_WT+0x1d660, %r9
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WC+0x4be0, %r8
nop
nop
nop
nop
xor $30681, %r14
movb $0x51, (%r8)
nop
nop
xor %r15, %r15

// Faulty Load
mov $0x725d180000000860, %r14
nop
nop
nop
nop
and %r8, %r8
movntdqa (%r14), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'44': 18462, '45': 1, '00': 3365, '08': 1}
44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 44 44 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 00 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 44 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 44 00 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 00 44 44 00 00 44 44 44 44 44 44 00 44 44
*/
