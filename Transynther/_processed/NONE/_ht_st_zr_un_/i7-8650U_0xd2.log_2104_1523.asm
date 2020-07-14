.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7221, %rsi
lea addresses_WT_ht+0xd199, %rdi
nop
nop
nop
nop
nop
and $15538, %r14
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $12023, %rax
lea addresses_UC_ht+0x1440f, %rbp
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbp), %r14
nop
nop
nop
nop
nop
and $21224, %rsi
lea addresses_D_ht+0x121f9, %rsi
clflush (%rsi)
nop
nop
nop
add $14915, %rcx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
add $41228, %rcx
lea addresses_UC_ht+0xbc4d, %rsi
lea addresses_D_ht+0x11839, %rdi
clflush (%rdi)
nop
add $15620, %r15
mov $126, %rcx
rep movsb
nop
cmp $47284, %rdi
lea addresses_WT_ht+0x14db9, %rcx
sub %rax, %rax
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x15d39, %rsi
lea addresses_normal_ht+0xf6e9, %rdi
clflush (%rsi)
nop
dec %r11
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x2979, %r15
clflush (%r15)
nop
nop
and %rcx, %rcx
movb (%r15), %r11b
nop
add $9149, %rdi
lea addresses_A_ht+0xd675, %rcx
clflush (%rcx)
nop
nop
nop
xor %r14, %r14
movb (%rcx), %r15b
cmp $8724, %r14
lea addresses_WC_ht+0xbb9, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
add $60709, %rcx
lea addresses_WT_ht+0xdc39, %rcx
clflush (%rcx)
nop
nop
xor $6915, %rbp
mov (%rcx), %rsi
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x18639, %r14
nop
nop
nop
nop
nop
dec %rdi
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x9f19, %rax
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %rax
movntdq %xmm4, (%rax)
nop
nop
nop
nop
and $7919, %rdi
lea addresses_WT_ht+0xbf91, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov (%rdi), %rbp
nop
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rdi
push %rsi

// Store
mov $0x5b0dc50000000b49, %r12
nop
nop
nop
nop
nop
cmp $46081, %r10
movl $0x51525354, (%r12)
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_A+0x13239, %r14
nop
nop
nop
nop
nop
add $62032, %r13
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1852, '47': 21, '46': 129, 'ff': 95, '02': 3, '10': 3, '52': 1}
00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 ff 00 00 ff 00 46 00 00 00 00 ff 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 ff 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 46 00 00 00 46 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 46 00 00 46 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 ff 00 02 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 46 00 00 00 00 47 00 46 00 00 00 00 00 00 00 00 00 47 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 ff 00 00 00 47 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 00 46 00 00 46 00 00 00 00 00 00 00 00 46 ff 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 ff 00 46 00 ff 00 ff 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 47 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 46 10 ff 00 00 00 00 00 00 46 00 00 ff 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 46 00 00 00 ff 00 47 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 46 00 46 02 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00
*/
