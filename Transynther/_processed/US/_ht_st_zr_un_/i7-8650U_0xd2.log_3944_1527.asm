.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x133, %rdi
nop
add $23918, %rbx
mov (%rdi), %si
nop
nop
nop
and $50419, %rdi
lea addresses_normal_ht+0x807, %r9
add %rbp, %rbp
movw $0x6162, (%r9)
nop
nop
nop
add $53860, %rdi
lea addresses_WC_ht+0x13133, %rsi
nop
add $58011, %r11
mov (%rsi), %di
nop
nop
inc %rsi
lea addresses_normal_ht+0x1d4f3, %rsi
lea addresses_normal_ht+0x1bdb3, %rdi
nop
xor %rbp, %rbp
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $23038, %rdi
lea addresses_normal_ht+0x2d33, %r12
nop
nop
nop
and %r9, %r9
mov (%r12), %rcx
cmp %rcx, %rcx
lea addresses_A_ht+0x4333, %rsi
lea addresses_A_ht+0x8d33, %rdi
nop
nop
nop
nop
add $18860, %r12
mov $95, %rcx
rep movsl
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x17f73, %rsi
lea addresses_UC_ht+0x4e0e, %rdi
clflush (%rdi)
nop
cmp $34300, %rbp
mov $33, %rcx
rep movsq
sub $30006, %rcx
lea addresses_UC_ht+0x17733, %rsi
lea addresses_A_ht+0x19533, %rdi
nop
nop
nop
nop
nop
xor $32616, %rbx
mov $9, %rcx
rep movsw
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x5e83, %rbx
nop
nop
nop
nop
xor $34643, %r11
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
xor $45761, %rsi
lea addresses_WT_ht+0x16a33, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rdi)
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1ef33, %r9
nop
nop
xor $21485, %rbp
mov (%r9), %rcx
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1933, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x69b3, %rsi
lea addresses_D_ht+0x16d33, %rdi
nop
nop
xor %rbp, %rbp
mov $99, %rcx
rep movsb
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x16adf, %rbp
nop
nop
sub $29670, %rdi
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
and %rsi, %rsi
lea addresses_normal_ht+0x12dc3, %rsi
lea addresses_WT_ht+0x14d33, %rdi
nop
inc %r9
mov $46, %rcx
rep movsl
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_US+0xfd33, %rax
inc %rcx
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'00': 3453, '44': 346, 'ff': 96, '45': 5, '7f': 2, '47': 19, '10': 13, '20': 5, '24': 4, '30': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 ff 00 44 00 00 00 45 44 00 00 00 00 00 ff 00 00 44 00 00 00 ff 44 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 7f 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 44 ff 00 00 00 00 ff 00 00 00 00 00 00 44 00 00 00 00 00 44 44 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 44 ff 44 00 ff 00 47 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 47 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 ff 00 10 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 ff 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 ff 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 ff 00 10 44 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 44 00 00 00 44 47 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 47 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 47 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 ff 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 ff 44 00 ff 00 00 00 00 ff 00 00 00 44 00 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 ff 00 00 00 00 00 00 00 00 00
*/
