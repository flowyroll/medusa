.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b457, %rsi
lea addresses_WC_ht+0x1cd57, %rdi
nop
sub %rax, %rax
mov $53, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x1687f, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x10757, %rcx
nop
nop
and %r15, %r15
mov (%rcx), %eax
sub $4095, %r12
lea addresses_WC_ht+0x4657, %rsi
lea addresses_D_ht+0x19ac9, %rdi
nop
nop
nop
nop
inc %r11
mov $15, %rcx
rep movsw
nop
add $5368, %rax
lea addresses_D_ht+0x7217, %rsi
lea addresses_D_ht+0xbbd7, %rdi
nop
nop
nop
add %rbx, %rbx
mov $0, %rcx
rep movsl
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x3bc7, %rsi
lea addresses_WC_ht+0xbc17, %rdi
clflush (%rsi)
nop
cmp $44270, %rax
mov $46, %rcx
rep movsw
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1a957, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r11
nop
and $44270, %rbx
lea addresses_WT_ht+0x17957, %rsi
lea addresses_A_ht+0x18174, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $1, %rcx
rep movsq
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x18ef7, %rsi
lea addresses_normal_ht+0x557, %rdi
nop
nop
nop
and $51972, %rax
mov $25, %rcx
rep movsl
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1a3d7, %r12
nop
xor %rax, %rax
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and $42588, %rbx
lea addresses_UC_ht+0x9357, %rsi
nop
nop
nop
nop
nop
dec %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x12e17, %rax
nop
and $23439, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rax
movntdq %xmm3, (%rax)
nop
nop
cmp $37333, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rsi

// Store
mov $0x7582bf00000009ef, %r8
nop
sub $31215, %rbp
movl $0x51525354, (%r8)
nop
and $35444, %r8

// Faulty Load
mov $0x691320000000557, %rbp
nop
nop
nop
xor %rsi, %rsi
vmovntdqa (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 6}}
{'08': 132, '72': 64, '40': 382, '49': 13182, '00': 1}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 72 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 40 49 49 40 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 40 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 08 49 49 49 40 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 40 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 40 49 49 49 40 49 49 49 49 49 49 49 49
*/
