.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x17275, %r12
nop
nop
nop
cmp %rsi, %rsi
mov (%r12), %di
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x175fd, %rsi
lea addresses_A_ht+0x1aafd, %rdi
xor $53705, %rax
mov $67, %rcx
rep movsb
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x12d2d, %rbp
clflush (%rbp)
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
and $22693, %rbp
lea addresses_WT_ht+0x3d55, %r10
nop
nop
nop
and $19078, %rbp
mov (%r10), %r12d
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x95fd, %rsi
lea addresses_D_ht+0x19e55, %rdi
nop
and %rdx, %rdx
mov $62, %rcx
rep movsq
nop
add $8081, %rcx
lea addresses_WC_ht+0x80bd, %rax
clflush (%rax)
and $24767, %rcx
movb $0x61, (%rax)
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x37a5, %rax
nop
cmp $2620, %rcx
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x11acd, %rsi
lea addresses_D_ht+0x42fd, %rdi
sub %rdx, %rdx
mov $56, %rcx
rep movsb
nop
add $62907, %rdx
lea addresses_D_ht+0xd1fd, %rsi
lea addresses_D_ht+0x15ffd, %rdi
nop
nop
sub %rax, %rax
mov $122, %rcx
rep movsw
nop
nop
nop
nop
xor $41545, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r9
push %rdx

// Store
mov $0x4a18b20000000501, %r15
nop
add $12240, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_RW+0x1e1fd, %r13
clflush (%r13)
nop
nop
nop
and %r11, %r11
mov (%r13), %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'32': 54}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
