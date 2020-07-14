.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14fb6, %rsi
lea addresses_D_ht+0x66b6, %rdi
nop
nop
nop
nop
add $59478, %rbx
mov $25, %rcx
rep movsl
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x71b6, %rsi
lea addresses_normal_ht+0xa6d6, %rdi
nop
nop
sub %r14, %r14
mov $33, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x3536, %rbp
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%rbp)
xor $9875, %rcx
lea addresses_D_ht+0x18bd1, %rbp
sub %r9, %r9
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rcx
nop
add $24335, %rdi
lea addresses_WC_ht+0x10ab6, %rcx
nop
nop
nop
xor $10120, %rbx
mov (%rcx), %ebp
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x689a, %r14
nop
nop
nop
nop
nop
cmp $54538, %rdi
mov (%r14), %ebx
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xae36, %rbp
nop
nop
cmp $9278, %r9
movb $0x61, (%rbp)
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x636, %r14
nop
nop
nop
inc %r9
mov (%r14), %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xcb36, %rbx
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
and $15181, %rcx
lea addresses_A_ht+0x112b6, %rsi
nop
nop
dec %r9
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
xor $13998, %rdi
lea addresses_WT_ht+0x108b6, %rsi
nop
nop
nop
nop
nop
inc %r14
mov (%rsi), %r9
sub %r9, %r9
lea addresses_D_ht+0x1d6b6, %rsi
lea addresses_WT_ht+0xa376, %rdi
nop
sub %rdx, %rdx
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
add $1424, %rbx
lea addresses_D_ht+0x122b6, %rsi
lea addresses_A_ht+0x9ab6, %rdi
nop
nop
nop
nop
nop
xor $9801, %rbx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x17966, %rsi
lea addresses_WT_ht+0x58b6, %rdi
clflush (%rsi)
nop
nop
sub %rbx, %rbx
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
and $30822, %rbx
lea addresses_WT_ht+0x14b96, %rcx
nop
and %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $25910, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_PSE+0x12cdc, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rbx)
nop
nop
nop
nop
add $11809, %r9

// Faulty Load
lea addresses_A+0x5ab6, %r14
nop
nop
nop
cmp $1632, %rbp
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
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
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'46': 917, '30': 3, '00': 20684, '48': 208, 'ff': 16, '45': 1}
00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 00 46 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00
*/
