.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5718, %r14
and %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x8e18, %rax
nop
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x5618, %rsi
lea addresses_D_ht+0x18298, %rdi
nop
nop
lfence
mov $76, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1b7bc, %rdi
nop
nop
nop
sub $48695, %r15
movb $0x61, (%rdi)
nop
nop
xor $16591, %rsi
lea addresses_A_ht+0x1db50, %rsi
nop
inc %rdx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r14
dec %rax
lea addresses_A_ht+0x6d18, %rsi
lea addresses_A_ht+0x16bf4, %rdi
nop
inc %r14
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x14418, %r14
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r14
vmovntdq %ymm7, (%r14)
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x18398, %rsi
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
xor $35282, %rax
lea addresses_UC_ht+0x1d258, %rsi
lea addresses_UC_ht+0x8d18, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $58, %rcx
rep movsb
nop
add %rdi, %rdi
lea addresses_WC_ht+0xbae0, %r14
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
cmp %rcx, %rcx
lea addresses_normal_ht+0x1c118, %r8
nop
nop
add %rsi, %rsi
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rdi
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rcx
push %rdi

// Faulty Load
mov $0x4d21a70000000218, %rax
nop
nop
dec %rdi
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'00': 3588, '45': 482, '47': 761}
00 45 45 45 45 00 00 00 47 00 47 00 00 00 45 45 47 00 47 47 00 47 00 00 00 47 47 00 00 00 45 45 45 45 00 00 00 45 47 00 47 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 47 00 47 00 47 47 00 00 00 45 00 00 00 45 00 00 00 00 47 00 00 45 47 00 45 47 00 00 00 47 00 00 45 00 00 00 47 00 00 00 00 00 47 00 47 00 00 47 00 00 00 47 00 00 45 45 00 45 47 00 00 47 00 47 00 45 00 00 45 45 47 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 47 00 00 00 00 00 45 47 47 47 00 00 00 00 00 00 00 00 00 00 47 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 47 00 00 00 47 00 00 47 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 47 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 47 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 47 47 47 00 45 00 00 47 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 47 45 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 45 00 00 00 00 00 00 00 45 00 47 00 00 45 00 00 45 45 00 47 47 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 47 00 00 00 47 00 45 45 45 00 00 00 00 47 00 00 00 00 47 00 47 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 47 47 00 00 47 00 45 00 47 45 00 00 47 00 00 47 00 00 00 00 00 00 45 45 00 00 00 00 00 47 00 47 00 45 47 00 00 00 47 00 47 00 47 47 00 47 00 00 00 45 00 00 47 47 00 00 00 00 45 00 00 00 47 00 45 00 00 00 47 00 45 47 00 00 00 00 00 00 00 47 00 00 47 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 47 47 00 00 00 47 47 00 00 00 00 00 47 00 45 45 45 47 00 00 00 00 00 00 00 00 47 00 00 45 00 00 00 00 47 00 00 00 00 00 00 00 45 00 00 47 00 47 00 00 47 47 00 00 00 00 47 00 00 45 00 00 00 00 47 00 00 47 00 47 00 00 00 00 00 00 00 00 47 00 47 00 00 00 00 00 00 00 00 47 00 00 00 47 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 47 00 45 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 47 00 00 47 00 00 00 00 00 45 00 47 00 47 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 45 00 00 00 00 47 47 00 00 00 00 47 00 00 00 00 00 47 00 47 00 00 00 00 47 00 00 00 00 00 45 00 00 47 00 00 00 45 00 00 00 00 45 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 45 47 00 47 00 00 00 45 45 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 47 00 00 00 00 47 00 00 47 00 45 00 47 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 47 00 47 00 47 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 45 00 00 00 45 45 00 00 47 00 00 00 00 45 00 00 00 45 45 45 00 00 45 00 47 45 00 00 00 45 47 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 45 00 47 00 45 45 00 00 00 00 47 47 00 00 00 00 00 00 45 45 45 00 00 00 47 00 00 00 47 00 47 47 47 00 00 45 00 00 00 00 00 00 47 00 00 00 00 00 00 47 47 45 45 45 45 45 47 00 00 00 00
*/
