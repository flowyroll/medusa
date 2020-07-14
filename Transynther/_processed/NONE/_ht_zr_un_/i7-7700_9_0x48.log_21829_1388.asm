.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x389, %rsi
lea addresses_UC_ht+0x37b1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $28129, %rbp
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0xb691, %rsi
lea addresses_WC_ht+0x84b1, %rdi
nop
cmp $25590, %r11
mov $31, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1b7b1, %r10
nop
nop
nop
xor $52683, %r14
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
and $63608, %rsi
lea addresses_UC_ht+0x3842, %rsi
lea addresses_WC_ht+0x1aab1, %rdi
nop
mfence
mov $100, %rcx
rep movsq
nop
nop
nop
and $63050, %rcx
lea addresses_D_ht+0x12e41, %rsi
add $20404, %rcx
mov (%rsi), %ebp
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1ac31, %r10
nop
nop
nop
nop
nop
xor $25664, %rsi
movb $0x61, (%r10)
nop
and %r10, %r10
lea addresses_UC_ht+0x13d1, %rsi
lea addresses_WC_ht+0xe3ad, %rdi
clflush (%rsi)
nop
nop
nop
cmp $25740, %r10
mov $28, %rcx
rep movsq
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rsi

// Store
lea addresses_US+0x93b1, %r10
clflush (%r10)
sub $3129, %r12
movb $0x51, (%r10)
nop
nop
nop
nop
nop
and $23981, %r10

// Store
lea addresses_UC+0xafb1, %rbx
add %r14, %r14
movw $0x5152, (%rbx)
nop
and %r9, %r9

// Faulty Load
lea addresses_WC+0xf3b1, %r10
nop
xor $59764, %rsi
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'08': 205, 'a5': 1, '49': 2039, '6c': 4, 'c5': 1, 'ff': 621, '72': 1, '45': 3768, '9a': 34, '00': 15006, '40': 95, '25': 54}
00 6c 6c 6c 6c 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 45 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff ff ff ff ff ff ff ff ff 49 00 ff ff ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff ff ff ff ff ff ff ff 00 ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 ff ff ff ff ff ff 00 ff ff ff ff 49 49 49 00 49 49 49 49 49 49 49
*/
