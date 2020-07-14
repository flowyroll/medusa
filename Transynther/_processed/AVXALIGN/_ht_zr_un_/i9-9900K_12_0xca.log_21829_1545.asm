.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1eb99, %rsi
lea addresses_WC_ht+0xf799, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $51993, %r11
mov $60, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x2799, %rsi
lea addresses_WC_ht+0x12999, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $122, %rcx
rep movsq
xor $7930, %r8
lea addresses_WC_ht+0x731, %rsi
nop
xor $40830, %r11
movb $0x61, (%rsi)
nop
sub $61246, %r11
lea addresses_D_ht+0xa399, %rdx
clflush (%rdx)
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x9b99, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x1c799, %r11
sub $5248, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x4cd5, %rdx
nop
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x19afd, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%r11)
nop
nop
nop
nop
xor $428, %r8
lea addresses_A_ht+0xbd89, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
cmp $42666, %rdi
lea addresses_A_ht+0x82a3, %rcx
nop
nop
nop
nop
add %rdx, %rdx
movw $0x6162, (%rcx)
inc %rcx
lea addresses_WT_ht+0x16c99, %rsi
nop
nop
nop
inc %r8
mov (%rsi), %r11w
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xf819, %rsi
nop
nop
nop
nop
nop
sub $28544, %rdx
movb (%rsi), %cl
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x4f99, %rsi
lea addresses_WC_ht+0x2a99, %rdi
nop
dec %r14
mov $22, %rcx
rep movsw
cmp $65124, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_D+0xa799, %r12
nop
and %r11, %r11
movw $0x5152, (%r12)
nop
nop
nop
and $7486, %r11

// Faulty Load
mov $0x3cad3c0000000999, %rbp
nop
nop
nop
nop
cmp %r15, %r15
vmovntdqa (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'8f': 1, '49': 15755, '8e': 1, '45': 6029, '00': 42, '47': 1}
00 49 45 49 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 49 49 49 45 49 45 49 49 49 49 45 49 45 49 49 49 49 45 49 45 49 49 49 49 45 49 49 45 49 49 49 49 45 49 49 49 45 49 45 49 49 49 49 49 49 49 45 49 49 49 45 49 45 45 49 45 49 49 45 49 49 45 49 45 49 49 49 45 49 49 49 49 49 49 45 49 49 49 45 49 45 49 49 45 45 49 45 49 49 45 49 49 45 49 49 49 49 45 49 49 45 49 45 49 45 45 49 45 49 49 45 49 45 45 45 45 49 49 49 49 49 49 45 49 49 45 49 49 49 45 45 49 45 49 49 45 49 49 45 49 45 49 49 49 49 49 45 49 45 49 45 49 49 45 49 45 49 49 45 49 49 49 45 49 45 49 49 45 49 49 49 45 45 49 45 49 45 49 49 45 49 45 49 49 45 49 45 49 45 49 49 49 45 49 45 49 45 49 45 49 49 49 49 49 45 49 45 49 49 49 45 49 45 49 49 45 45 49 45 49 45 49 49 49 45 49 49 49 49 45 45 45 49 45 49 49 49 45 45 45 49 45 49 45 49 45 49 45 49 45 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 45 49 45 49 45 45 49 45 49 45 49 45 49 49 49 45 49 49 49 45 45 49 45 49 49 45 49 49 45 49 45 49 49 49 49 45 49 49 45 49 45 49 49 45 49 45 49 45 49 45 49 49 45 45 49 45 49 49 49 45 49 49 45 49 49 45 49 45 49 45 49 45 49 49 49 45 49 49 45 49 49 49 49 49 45 49 45 49 45 49 45 49 45 49 49 45 49 45 49 45 49 45 49 45 49 49 45 49 49 45 45 49 45 49 49 45 49 49 45 49 45 45 49 49 49 45 49 49 49 45 49 49 49 45 49 49 45 49 45 49 49 49 49 45 49 49 45 49 49 45 49 49 45 49 49 45 49 45 49 45 49 45 49 49 49 49 49 45 49 45 49 49 49 45 49 49 45 49 49 45 49 49 49 45 49 49 49 49 49 49 45 45 49 49 49 45 49 49 49 49 49 45 49 45 49 45 49 45 49 49 49 49 49 45 49 49 45 45 49 49 45 49 49 49 45 49 49 49 45 49 49 49 45 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 45 49 45 49 49 49 45 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 45 49 49 45 49 49 45 45 49 49 49 45 49 45 45 45 45 45 45 49 49 49 45 49 49 49 49 49 49 49 45 45 45 49 49 49 45 49 49 45 49 45 49 49 45 49 49 49 45 45 49 45 49 49 49 45 45 45 49 49 49 49 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 45 45 49 49 49 49 49 49 45 49 49 45 49 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 45 49 49 45 49 49 49 49 49 45 49 45 49 45 49 49 49 45 49 49 45 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 45 49 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 45 45 45 49 49 45 45 45 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 45 45 49 49 45 45 45 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 49 49 49 45 49 49 49 49 45 49 49 49 49 49 49 45 49 49 49 45 49 49 45 45 45 45 45 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 45 49 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 49 49 49 49 45 49 49 49 49 49 49 45 49 45 49 49 49 45 49 49 49 49 49 49 45 45 49 49 49 49 49 49 49 49 45 49 49 49 45 49 45 49 49 49 45 45 49 45 45 45 49 49 49 49 45 49 49 49 49 49 49 49 49 49 49 49 45 49 45 49 49 49 49 49 49 45 49 49 49 45 49 49 49 49 45 49 45 49 49 45 49 49 49 49 49
*/
