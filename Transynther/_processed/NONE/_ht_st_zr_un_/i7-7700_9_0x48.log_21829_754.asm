.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xa029, %rsi
lea addresses_UC_ht+0xbfa9, %rdi
nop
nop
nop
nop
nop
sub $49591, %rbp
mov $57, %rcx
rep movsb
nop
nop
nop
nop
xor $52467, %r10
lea addresses_UC_ht+0x131a9, %rsi
lea addresses_WC_ht+0xba9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r8
mov $80, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xe7a9, %rsi
lea addresses_WC_ht+0x4389, %rdi
clflush (%rdi)
nop
nop
dec %rdx
mov $116, %rcx
rep movsl
add %rdx, %rdx
lea addresses_normal_ht+0x12319, %rsi
lea addresses_WT_ht+0xfca9, %rdi
sub %r8, %r8
mov $79, %rcx
rep movsb
nop
sub $26227, %rdx
lea addresses_WT_ht+0x195c9, %rsi
lea addresses_WC_ht+0x86a9, %rdi
nop
sub %r11, %r11
mov $97, %rcx
rep movsb
nop
add %rbp, %rbp
lea addresses_D_ht+0x1269c, %rbp
nop
and %rdx, %rdx
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1369, %rdx
nop
nop
nop
cmp %rbp, %rbp
movb (%rdx), %r10b
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x8da9, %rsi
nop
nop
sub %r8, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x10e31, %r8
nop
nop
nop
nop
cmp $10250, %rdx
mov (%r8), %rbp
nop
nop
nop
nop
xor $59102, %rdx
lea addresses_D_ht+0x29, %rdi
nop
xor %r10, %r10
movb $0x61, (%rdi)
nop
nop
nop
nop
and $13290, %r10
lea addresses_normal_ht+0x145, %rbp
nop
add %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rbp)
nop
nop
cmp $11793, %r10
lea addresses_UC_ht+0x1c4a9, %rsi
lea addresses_WC_ht+0x15809, %rdi
nop
nop
add $28021, %r10
mov $112, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1d26c, %r10
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%r10)
nop
and $4146, %rsi
lea addresses_A_ht+0x163a9, %rsi
lea addresses_WC_ht+0x15be9, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $31730, %r11
mov $87, %rcx
rep movsw
sub $6621, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x1a7a9, %r12
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
nop
add $55565, %r12

// Faulty Load
lea addresses_WC+0x1c7a9, %rax
nop
add %r10, %r10
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'08': 28, '26': 24, '54': 1, '49': 127, '48': 15, 'c5': 1, 'ff': 23, '46': 2, '72': 14, '45': 16908, '00': 4273, '40': 1, '44': 412}
45 45 45 45 45 45 45 00 45 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 00 45 45 45 44 45 45 45 00 45 00 00 00 00 00 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 44 45 45 00 45 00 45 45 45 08 45 45 45 44 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 44 45 45 00 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 44 45 00 45 45 45 45 00 45 45 00 00 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 44 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 44 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 00 45 45 45 45 00 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 49 45 00 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 44 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 44 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 00 45 00 45 00 45 00 45 00 49 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 45 00 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 00 45 45 00 45 00 45 45 45 44 45 45 45 45 45 45 45 45 00 00 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 44 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45
*/
