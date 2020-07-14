.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7afd, %r9
clflush (%r9)
nop
sub $4300, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
sub $458, %rcx
lea addresses_D_ht+0x1019f, %rbp
nop
xor %r15, %r15
movups (%rbp), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
xor $55749, %r13
lea addresses_UC_ht+0x1d59f, %r14
nop
nop
cmp $28262, %rdi
mov (%r14), %ecx
nop
cmp %r13, %r13
lea addresses_WC_ht+0xf29f, %rsi
lea addresses_WT_ht+0x1beff, %rdi
clflush (%rsi)
nop
nop
add %r14, %r14
mov $19, %rcx
rep movsw
xor %r13, %r13
lea addresses_normal_ht+0xb105, %rdi
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
inc %r13
lea addresses_D_ht+0x208f, %rsi
lea addresses_normal_ht+0xa59f, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r15, %r15
mov $119, %rcx
rep movsw
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x42f7, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%rbp)
nop
lfence
lea addresses_D_ht+0x15f1f, %rsi
lea addresses_D_ht+0x14279, %rdi
nop
nop
nop
nop
nop
sub $20179, %r13
mov $65, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xdb3b, %r15
nop
nop
and $23503, %r9
movups (%r15), %xmm1
vpextrq $0, %xmm1, %r13
nop
cmp $32935, %r14
lea addresses_WC_ht+0x1750f, %r14
nop
nop
inc %rsi
movl $0x61626364, (%r14)
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rdi

// Faulty Load
mov $0x99f, %r15
nop
nop
nop
cmp $31047, %rdi
movaps (%r15), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'47': 3762, '48': 43, '44': 45, '30': 1, '46': 12125, '00': 5853}
46 00 46 47 46 00 46 47 46 00 47 47 46 46 00 46 00 47 46 47 46 46 47 46 47 47 46 46 00 46 46 47 46 46 46 47 00 46 47 00 47 00 46 46 46 00 46 46 47 46 47 47 47 46 46 46 00 00 47 46 46 47 47 47 46 47 46 46 46 46 46 46 00 46 00 46 47 47 00 47 47 46 46 46 46 00 47 00 46 47 46 46 00 46 00 00 46 00 00 00 00 46 00 46 46 46 00 47 00 46 00 46 47 46 46 46 00 46 46 46 00 46 00 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 46 46 47 00 00 46 46 47 47 00 46 00 46 46 47 46 00 46 47 00 00 47 46 46 46 00 46 46 00 00 00 46 46 47 00 00 46 00 47 47 46 46 00 46 00 47 00 46 46 00 46 46 46 47 00 00 46 46 47 00 46 46 47 46 46 00 47 47 46 00 46 46 46 46 47 47 47 46 46 46 46 00 46 47 46 46 46 00 47 00 47 00 47 00 47 46 00 00 46 46 46 46 46 46 47 00 46 46 00 46 47 00 00 00 46 46 46 47 00 46 00 46 46 46 46 47 00 46 46 46 00 46 46 47 46 46 46 47 46 46 00 46 00 00 47 46 00 46 00 47 00 46 46 46 00 46 47 00 46 00 46 46 46 00 46 46 47 47 46 47 47 00 46 47 00 47 46 47 00 47 46 47 00 00 46 00 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 00 00 46 46 00 46 46 46 46 00 46 00 47 46 47 46 46 47 00 00 46 46 47 46 46 47 47 47 46 47 46 46 00 46 00 46 47 00 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 00 47 00 46 46 00 46 47 46 46 46 47 00 46 46 46 47 46 46 47 00 46 46 47 46 46 46 00 47 00 47 00 46 46 46 00 47 46 46 47 46 47 00 46 47 47 46 47 47 46 46 00 47 46 46 00 46 46 47 47 46 46 47 46 46 00 46 46 46 47 46 47 46 47 00 00 00 00 00 46 00 47 47 47 47 46 00 46 00 47 46 46 46 46 47 47 00 47 46 46 46 46 00 46 46 47 46 00 46 46 46 47 46 47 00 46 47 47 46 46 00 47 47 00 47 46 47 47 46 47 47 00 46 46 46 46 46 47 46 46 46 46 46 00 00 47 47 46 47 46 47 47 46 00 47 46 46 46 00 47 46 46 00 46 46 47 46 46 46 46 47 00 46 46 46 47 00 00 46 00 47 46 00 46 46 00 46 00 46 46 46 00 46 46 46 00 00 46 47 46 46 46 47 00 46 47 47 46 00 47 00 46 46 46 46 46 47 46 46 46 46 47 00 00 46 46 00 47 00 46 00 47 46 00 46 46 00 00 47 46 46 47 46 47 46 46 46 46 46 46 46 00 47 00 47 47 46 46 46 46 46 00 47 46 46 46 47 46 46 00 46 46 46 46 46 47 47 46 46 00 46 46 46 00 46 00 46 46 46 00 46 46 47 47 46 46 00 47 46 47 00 46 46 00 46 47 46 46 47 00 00 00 47 00 46 46 46 47 47 46 46 46 46 00 46 46 00 46 47 46 47 46 46 46 46 46 46 00 00 46 46 00 46 00 47 00 46 47 00 47 46 47 46 46 00 46 00 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 00 46 00 00 47 00 46 46 47 47 00 00 47 00 47 46 46 47 46 47 00 46 46 46 46 46 00 47 46 47 00 00 46 00 47 46 00 46 46 47 46 46 46 46 00 00 47 00 00 46 46 46 46 46 46 47 47 47 46 46 47 47 46 46 47 46 46 46 00 00 46 47 47 47 46 47 46 46 00 47 46 00 46 47 46 47 47 46 00 46 47 47 00 46 00 00 00 47 46 00 47 46 47 46 00 00 46 00 46 47 46 46 46 47 46 46 47 00 46 46 47 47 00 46 46 46 46 46 47 46 46 47 46 46 47 47 00 46 00 46 00 46 46 46 47 47 46 47 46 47 00 00 46 46 47 46 46 47 00 46 46 00 47 00 46 46 46 00 46 46 00 46 00 46 00 46 00 46 00 46 47 47 47 00 47 00 46 47 46 46 46 46 00 00 46 47 00 47 46 46 46 00 46 46 46 47 46 46 00 00 47 46 46 46 00 46 46 46 00 46 46 46
*/
