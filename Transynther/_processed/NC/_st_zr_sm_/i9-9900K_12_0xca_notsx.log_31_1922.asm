.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1999a, %rsi
lea addresses_normal_ht+0x5aa4, %rdi
nop
nop
cmp $994, %r10
mov $34, %rcx
rep movsl
nop
nop
sub $13971, %rax
lea addresses_A_ht+0x1565a, %rsi
lea addresses_D_ht+0x18a6a, %rdi
nop
nop
nop
nop
add $64906, %rax
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
and $36570, %rsi
lea addresses_WT_ht+0x119a, %rax
nop
nop
and $8279, %r14
mov (%rax), %cx
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x702c, %rdi
nop
nop
nop
and $47658, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0xf21a, %rdi
sub $52414, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x1ab5a, %rsi
lea addresses_D_ht+0x1219a, %rdi
nop
nop
nop
nop
add $24104, %r8
mov $62, %rcx
rep movsq
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x1321a, %r14
nop
nop
nop
nop
add %rcx, %rcx
mov (%r14), %r15w
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x10812, %rax
nop
nop
nop
and $29914, %r15
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
add %r8, %r8
lea addresses_A_ht+0x1672a, %rsi
lea addresses_WC_ht+0x719a, %rdi
add %r10, %r10
mov $126, %rcx
rep movsw
nop
nop
nop
nop
sub $44487, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xfe9a, %rsi
lea addresses_A+0x1099a, %rdi
and $6157, %rbp
mov $61, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_WC+0xfa9a, %rdi
nop
add $37037, %rsi
movl $0x51525354, (%rdi)
and %r11, %r11

// REPMOV
lea addresses_A+0x337a, %rsi
lea addresses_UC+0x659a, %rdi
nop
nop
nop
xor %r14, %r14
mov $58, %rcx
rep movsq
add %rcx, %rcx

// Store
mov $0x4422f7000000099a, %r14
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r14)
add %rbp, %rbp

// Faulty Load
mov $0x4422f7000000099a, %r11
nop
nop
nop
xor $26231, %r14
mov (%r11), %di
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'00': 5, '58': 26}
58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58
*/
