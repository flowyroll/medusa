.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x31b5, %rsi
lea addresses_WC_ht+0xad29, %rdi
nop
cmp $34601, %r14
mov $55, %rcx
rep movsb
nop
nop
add $49833, %r8
lea addresses_D_ht+0x181c1, %rsi
nop
nop
xor $1719, %rdi
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1aeb5, %rsi
lea addresses_WT_ht+0x142b5, %rdi
nop
nop
nop
nop
nop
cmp $20260, %r8
mov $92, %rcx
rep movsw
nop
sub $24837, %rdi
lea addresses_UC_ht+0x18835, %rax
nop
sub %rdx, %rdx
mov (%rax), %rcx
nop
nop
dec %rcx
lea addresses_A_ht+0x7b19, %rsi
lea addresses_UC_ht+0x9fb5, %rdi
nop
and $1646, %rbp
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x7005, %rdx
nop
nop
nop
and %r14, %r14
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
and $26062, %rdx
lea addresses_UC_ht+0xb8b5, %rdi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rdi), %r8d
xor %r14, %r14
lea addresses_UC_ht+0x7ab5, %r14
nop
nop
nop
nop
sub $63599, %rax
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0xc0b5, %rsi
lea addresses_WT_ht+0x188b5, %rdi
nop
nop
nop
sub $39120, %rdx
mov $105, %rcx
rep movsb
nop
nop
nop
and $60924, %rbp
lea addresses_normal_ht+0xd1b5, %rax
nop
nop
sub $46056, %rdx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r8
sub %rcx, %rcx
lea addresses_D_ht+0x4e7d, %r14
nop
cmp $21027, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x20b5, %r15
nop
add %r12, %r12
mov (%r15), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
