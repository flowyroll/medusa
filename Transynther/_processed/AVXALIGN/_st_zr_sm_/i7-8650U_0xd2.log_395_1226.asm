.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x39fd, %r8
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
and $47242, %rax
lea addresses_normal_ht+0x133bd, %r9
nop
add $18480, %r14
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x104fd, %rsi
lea addresses_A_ht+0x647d, %rdi
nop
nop
nop
add $41646, %r9
mov $25, %rcx
rep movsw
nop
nop
inc %r13
lea addresses_D_ht+0x1ed3d, %rsi
lea addresses_WC_ht+0x1975c, %rdi
sub %rax, %rax
mov $2, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xb569, %r9
nop
nop
nop
nop
nop
add $21118, %rsi
mov (%r9), %ecx
nop
nop
nop
nop
add $36690, %r8
lea addresses_WT_ht+0x155bd, %rcx
nop
nop
nop
nop
cmp $43217, %rax
movw $0x6162, (%rcx)
nop
nop
and $33368, %rax
lea addresses_UC_ht+0x85bd, %rdi
xor $4895, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x1d9bd, %rsi
lea addresses_normal_ht+0x145bd, %rdi
add %rax, %rax
mov $95, %rcx
rep movsb
nop
cmp $27560, %rcx
lea addresses_normal_ht+0x10dbd, %rsi
lea addresses_UC_ht+0x1663d, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r9, %r9
mov $25, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_A_ht+0x1209d, %rsi
lea addresses_D_ht+0x14c1d, %rdi
inc %rax
mov $54, %rcx
rep movsq
nop
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x831d, %r15
nop
nop
nop
nop
dec %rax
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
nop
nop
xor $41065, %r11

// Store
lea addresses_US+0xfe8d, %r11
nop
cmp %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovntdq %ymm5, (%r11)
nop
add %r15, %r15

// Store
mov $0x39977000000005bd, %r8
nop
nop
add %rcx, %rcx
movb $0x51, (%r8)
nop
cmp $21717, %rsi

// Faulty Load
mov $0x39977000000005bd, %rcx
nop
and $22129, %r8
mov (%rcx), %esi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'00': 385, '51': 10}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00
*/
