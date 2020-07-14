.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x651d, %rdx
nop
inc %r12
mov (%rdx), %eax
mfence
lea addresses_UC_ht+0x14ca1, %r12
nop
and $4331, %r11
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x6321, %rax
xor %rcx, %rcx
mov (%rax), %r15d
sub %rdx, %rdx
lea addresses_UC_ht+0x13d51, %rsi
lea addresses_normal_ht+0xd121, %rdi
nop
add %r12, %r12
mov $58, %rcx
rep movsw
nop
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x13881, %rsi
nop
nop
nop
and $31485, %r15
movb (%rsi), %cl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xf21, %r12
nop
dec %rdi
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
xor %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rbx
push %rdx

// Store
mov $0x45785c0000000261, %rbp
xor $7080, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_US+0x17921, %rbp
nop
nop
nop
nop
nop
sub $4401, %r10
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': True}}
{'47': 559, 'ff': 2, '44': 10382, '00': 10886}
00 00 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 47 00 00 00 44 44 44 00 00 00 44 44 47 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 44 00 47 44 00 44 44 44 00 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 47 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 44 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 47 44 00 00 44 44 44 00 47 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 47 44 00 44 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 44 44 00 00 00 00 44 44 47 00 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 47 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 47 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 44 47 44 00 00 44 44 44 00 00 44 44 44 00 47 44 47 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 44 44 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 47 44 44 44 00 00 44 44 47 00 47 44 44 44 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 00 47 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 47 00 00 44 44 44 00 00 44 44 44 00 00 44 44 47 00 00 44 44 44 00 00 00 44 44 47 00 47 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 47 00 00 44 47 44 00 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 47 44 00 00 44 44 44 47 00 47 44 00 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 47 00 00 00 44 44 44 00 47 00 44 44 44 00 00 00 44 44 00 47 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 47 00 44 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 00 44 44 44 00 47 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 44 44 00 00 00 44 44 00 00 44 44 00 00 00 44 44 44 00 00 47 44 44 00 00 44 44 44 00 00 00 44 00 00 44 44 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 00 00 00 44 44 00 00 00 44 44 44 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44
*/
