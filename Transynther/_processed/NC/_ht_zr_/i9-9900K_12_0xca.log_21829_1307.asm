.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x63bd, %rbx
nop
nop
nop
nop
nop
cmp $41905, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rbx
movntdq %xmm1, (%rbx)
add %rdx, %rdx
lea addresses_WC_ht+0x14efd, %rdx
nop
nop
nop
nop
nop
sub $29598, %r10
movb $0x61, (%rdx)
nop
cmp $29929, %r10
lea addresses_WC_ht+0x11a65, %rbx
nop
lfence
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x19cfd, %r9
nop
sub %rsi, %rsi
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r10
dec %r10
lea addresses_WC_ht+0x16efd, %rsi
sub $8645, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
add $23836, %rsi
lea addresses_normal_ht+0x11d10, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r9), %bx
nop
nop
nop
cmp $25266, %rsi
lea addresses_UC_ht+0x11845, %rdx
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
add $20732, %r9
lea addresses_A_ht+0x126d, %rsi
nop
nop
cmp %rbx, %rbx
mov (%rsi), %rdx
nop
cmp $52996, %rbx
lea addresses_A_ht+0xcebd, %r9
nop
nop
nop
xor $17341, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x1895d, %rsi
lea addresses_normal_ht+0x1dfd, %rdi
clflush (%rdi)
xor %r10, %r10
mov $29, %rcx
rep movsl
nop
nop
nop
nop
sub $10574, %rdx
lea addresses_UC_ht+0xdefd, %rdx
sub $59149, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1a0fd, %rsi
lea addresses_UC_ht+0x13d3d, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $13, %rcx
rep movsl
nop
nop
nop
cmp $50022, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Load
mov $0x562fae0000000efd, %rsi
cmp %r9, %r9
mov (%rsi), %r14w
nop
nop
nop
nop
nop
sub $49341, %rcx

// Faulty Load
mov $0x2a7d230000000afd, %rbp
nop
nop
nop
nop
nop
sub $43125, %r11
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'45': 2182, '00': 3326, '48': 16321}
48 48 48 48 48 00 00 48 48 00 00 00 48 48 48 48 00 48 48 48 00 00 48 48 48 45 48 48 48 48 45 48 48 45 48 48 00 48 48 00 48 45 00 48 48 48 48 48 48 45 48 48 00 48 48 45 48 48 45 48 48 48 48 45 00 48 48 48 48 48 48 45 00 48 00 48 45 00 48 48 48 45 00 48 48 48 48 48 48 48 48 00 48 48 48 45 48 48 45 48 48 48 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 48 00 48 00 48 48 45 48 48 45 48 48 45 48 48 45 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 45 00 48 00 48 48 48 48 45 48 48 48 00 00 00 48 48 48 00 00 48 48 48 48 00 00 48 48 48 00 48 45 45 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 45 48 48 00 48 48 45 48 00 48 48 45 00 48 45 48 48 00 48 48 45 48 48 00 48 48 48 48 48 00 48 48 00 00 00 48 48 48 45 48 00 00 48 00 48 48 48 48 48 00 48 48 48 45 00 48 00 48 48 48 48 48 48 48 45 45 48 48 48 00 00 48 45 48 48 45 48 45 48 48 48 48 48 48 48 45 48 00 48 48 48 00 00 00 48 48 00 48 00 48 00 48 48 48 00 48 00 48 48 45 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 00 48 45 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 45 00 00 48 48 45 45 00 48 48 48 00 48 48 48 48 45 48 48 45 48 48 48 48 48 48 48 00 48 48 48 48 45 48 48 48 48 48 48 48 00 48 48 48 45 48 48 45 48 48 00 48 00 48 48 48 48 00 00 48 48 48 45 45 00 48 48 48 48 48 45 48 48 48 48 48 00 45 48 48 48 45 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 45 48 48 48 48 45 48 48 45 48 48 48 48 45 48 48 48 48 00 45 00 45 48 48 48 48 48 48 48 45 45 00 45 48 48 00 48 48 45 48 48 48 48 45 00 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 45 48 48 48 48 45 48 48 48 48 48 48 48 48 48 45 48 48 00 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 45 48 48 45 48 48 48 48 48 48 48 48 48 00 45 48 48 00 48 48 45 48 00 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 45 48 48 45 00 48 48 48 00 48 48 48 45 00 00 48 48 48 48 00 00 48 48 00 00 48 48 48 48 00 48 45 48 48 48 48 48 48 48 00 48 48 48 48 48 45 48 48 45 00 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 45 48 45 48 48 48 00 48 48 48 00 48 48 48 48 48 48 45 00 48 48 48 00 48 45 00 48 48 48 48 48 48 48 48 45 45 00 48 48 48 00 48 48 48 48 45 48 48 45 48 00 48 48 45 45 48 00 48 48 48 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 45 48 48 00 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 45 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 00 48 00 00 48 48 48 45 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 45 00
*/
