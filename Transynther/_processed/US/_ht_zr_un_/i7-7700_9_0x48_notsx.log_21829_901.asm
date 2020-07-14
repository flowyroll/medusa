.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6e16, %rcx
nop
nop
add $2304, %r10
mov (%rcx), %ebp
nop
nop
nop
nop
sub $55610, %rsi
lea addresses_WC_ht+0x8ca6, %rsi
lea addresses_WT_ht+0xd026, %rdi
clflush (%rdi)
nop
nop
nop
cmp $28486, %r11
mov $7, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x15fa6, %rcx
nop
nop
nop
sub $21631, %r12
mov (%rcx), %rbp
nop
nop
inc %r11
lea addresses_D_ht+0xf0e6, %rsi
lea addresses_WC_ht+0x100a6, %rdi
nop
nop
and $12036, %r13
mov $4, %rcx
rep movsl
and $16096, %r10
lea addresses_WC_ht+0x14526, %rbp
nop
nop
add %r13, %r13
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
inc %r11
lea addresses_normal_ht+0x1aca6, %r10
nop
nop
and $5587, %rbp
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rcx
nop
cmp $39326, %r10
lea addresses_WT_ht+0x44c2, %rbp
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1edee, %rdi
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%rdi)
nop
add $53484, %r13

// Load
mov $0xcda, %r13
nop
nop
and $56868, %rax
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_US+0xf0a6, %r15
nop
nop
nop
add %rdx, %rdx
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'48': 9917, '08': 11, '72': 36, 'a0': 6473, '00': 5392}
00 a0 48 a0 a0 a0 48 48 48 48 a0 48 48 a0 48 48 48 48 00 48 00 48 48 72 48 00 00 00 48 48 48 00 a0 48 a0 a0 48 00 48 48 a0 48 48 48 00 a0 a0 48 a0 48 00 48 00 00 00 48 48 48 48 48 48 a0 00 00 00 00 a0 a0 48 00 00 a0 00 00 00 48 48 00 00 48 48 48 48 00 48 00 a0 a0 00 a0 a0 a0 a0 48 00 48 00 a0 48 72 a0 48 48 a0 48 48 48 48 00 48 48 00 00 00 48 a0 00 a0 a0 48 a0 a0 00 a0 00 48 48 48 48 48 48 a0 48 48 a0 a0 00 48 48 48 48 00 48 00 00 48 00 a0 00 00 a0 00 a0 00 00 a0 00 a0 00 a0 48 48 00 48 00 00 00 48 00 48 a0 a0 a0 00 00 48 a0 48 48 00 48 48 a0 a0 a0 48 00 48 48 a0 48 48 48 00 48 48 48 a0 a0 00 00 48 a0 48 a0 48 a0 a0 00 00 00 48 48 a0 a0 a0 48 a0 48 48 00 48 a0 48 48 00 48 00 48 a0 48 48 a0 a0 a0 48 a0 48 a0 48 48 48 48 48 48 a0 48 48 48 48 48 a0 48 a0 a0 00 00 a0 a0 48 a0 a0 48 00 48 a0 a0 a0 a0 48 00 00 48 a0 a0 a0 48 48 a0 00 a0 48 00 a0 a0 00 48 48 a0 a0 a0 a0 a0 48 a0 a0 a0 00 48 48 00 00 a0 00 48 48 00 48 48 48 48 48 a0 48 a0 00 00 48 00 72 a0 a0 48 48 00 48 00 00 48 00 48 a0 00 48 00 a0 a0 48 48 48 48 48 00 48 00 a0 48 a0 48 00 a0 a0 48 00 a0 48 48 a0 48 48 48 a0 48 a0 48 00 00 48 00 48 a0 a0 48 a0 48 00 a0 a0 48 a0 a0 00 00 00 48 00 48 00 a0 a0 48 48 48 72 00 48 a0 a0 48 a0 a0 48 48 48 a0 a0 a0 48 48 00 00 48 00 00 48 00 00 a0 00 00 a0 00 00 00 a0 48 00 48 a0 48 48 48 48 48 a0 00 00 48 48 00 a0 00 48 00 00 00 a0 a0 a0 00 48 a0 48 a0 48 48 a0 48 48 a0 48 00 48 00 00 48 48 00 00 a0 48 48 48 00 a0 48 48 a0 00 00 00 a0 00 00 00 48 48 48 48 48 48 48 48 a0 a0 a0 a0 48 a0 a0 48 48 48 48 a0 48 a0 00 48 48 a0 00 a0 a0 48 48 48 00 00 00 a0 48 48 48 00 a0 48 a0 00 00 00 48 a0 a0 a0 48 48 00 00 00 a0 00 a0 48 a0 a0 00 00 00 48 a0 a0 00 a0 48 48 48 00 a0 48 48 00 48 48 48 48 48 48 48 a0 a0 48 00 00 a0 a0 48 00 00 00 48 48 a0 00 00 00 48 a0 00 48 48 48 48 00 00 48 a0 48 00 48 a0 48 00 00 00 00 48 a0 00 48 48 a0 00 00 a0 48 00 48 a0 a0 48 00 48 a0 48 00 48 48 00 48 48 a0 00 a0 a0 48 48 48 48 a0 a0 48 00 00 00 00 48 48 00 a0 00 48 a0 48 a0 00 48 a0 00 a0 a0 a0 48 48 48 48 a0 48 48 a0 48 a0 a0 48 a0 48 48 a0 00 48 48 48 a0 a0 a0 48 48 48 08 a0 00 48 a0 00 00 00 00 48 a0 a0 a0 48 a0 48 48 48 48 a0 a0 48 48 48 48 a0 a0 48 48 48 a0 a0 48 48 a0 a0 48 48 a0 a0 a0 00 48 48 48 48 48 48 48 48 48 48 48 a0 00 a0 48 a0 48 a0 00 a0 a0 00 48 a0 a0 a0 48 48 a0 48 a0 48 a0 a0 a0 72 a0 a0 00 a0 00 a0 48 48 a0 48 48 a0 48 48 00 48 48 00 48 a0 a0 00 00 48 00 48 a0 a0 48 a0 48 a0 00 48 a0 a0 a0 48 a0 48 48 48 a0 48 48 a0 48 00 48 48 48 48 a0 00 48 00 48 a0 a0 48 48 00 48 48 a0 48 a0 48 72 48 a0 00 00 48 a0 a0 a0 48 00 48 a0 48 48 a0 48 a0 48 48 48 48 00 00 48 48 a0 a0 48 48 48 a0 48 a0 48 48 48 48 a0 a0 48 a0 48 00 48 48 00 a0 00 a0 a0 48 48 a0 a0 00 48 48 48 00 48 48 a0 a0 48 00 48 48 48 a0 48 48 48 a0 00 00 48 a0 48 00 48 48 00 a0 48 00 00 00 a0 00 a0 00 48 48 48 48 00 48 48 48 00 48 48 a0 48 a0 a0 48 48 a0 00 48 48 a0 48 a0 a0 a0 48 48 00 00 48 00 48 00 48 a0 a0 48 00 a0 00 00 a0 00 48 48 48 00 48 00 48 a0 00 00 48 a0 00 a0 a0 00 00 48 48 48 00 48 a0 48 a0 48 00 48 48 a0
*/
