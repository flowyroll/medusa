.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x199ad, %rsi
lea addresses_WC_ht+0x12dad, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $77, %rcx
rep movsq
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1723d, %rsi
lea addresses_WC_ht+0x14a2d, %rdi
nop
nop
nop
nop
and $35793, %r11
mov $44, %rcx
rep movsw
sub $46448, %rcx
lea addresses_WC_ht+0xd12d, %rsi
lea addresses_A_ht+0x942d, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $124, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x145dd, %rsi
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x6925, %rsi
lea addresses_D_ht+0x17615, %rdi
nop
nop
and $29398, %r13
mov $43, %rcx
rep movsw
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1db01, %rdi
nop
nop
and $35287, %r12
movb (%rdi), %r13b
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xe07d, %r11
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0xc2ad, %rax
nop
nop
nop
nop
xor %r10, %r10
movl $0x61626364, (%rax)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1d0cd, %rsi
nop
add %r8, %r8
mov (%rsi), %r9d
nop
sub $31556, %r9

// Store
lea addresses_WC+0xc56b, %rsi
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rsi)
nop
xor %rdx, %rdx

// Store
lea addresses_RW+0x1463d, %r9
nop
cmp $20018, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
xor $40325, %r9

// Load
lea addresses_US+0x181ad, %rdx
nop
cmp %rsi, %rsi
mov (%rdx), %r9d
nop
nop
xor %rax, %rax

// Store
lea addresses_normal+0x1a0ab, %rdi
nop
nop
and %r14, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
cmp $42941, %rdi

// Faulty Load
lea addresses_RW+0x149ad, %rax
nop
sub $35989, %r8
vmovntdqa (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'00': 18122, '48': 3707}
00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 48 48 00 00 00 00 48 00 48 00 48 00 48 00 00 00 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00
*/
