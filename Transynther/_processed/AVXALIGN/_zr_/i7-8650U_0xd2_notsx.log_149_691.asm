.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ff8, %rsi
lea addresses_UC_ht+0x1ebf8, %rdi
nop
nop
nop
nop
sub $7667, %r11
mov $16, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x2a58, %rsi
lea addresses_WT_ht+0x160e0, %rdi
nop
nop
add $24856, %r13
mov $38, %rcx
rep movsw
nop
nop
nop
nop
xor $9294, %rdi
lea addresses_WC_ht+0x157f8, %rax
nop
nop
nop
nop
dec %rdx
mov (%rax), %esi
nop
dec %r13
lea addresses_A_ht+0x3c78, %rdx
clflush (%rdx)
nop
nop
xor $16141, %r13
movw $0x6162, (%rdx)
nop
xor $63122, %rdx
lea addresses_D_ht+0xd49c, %rsi
lea addresses_UC_ht+0x9298, %rdi
nop
nop
and %r8, %r8
mov $22, %rcx
rep movsq
nop
xor %rsi, %rsi
lea addresses_D_ht+0xf3f8, %r11
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%r11)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1e958, %rax
clflush (%rax)
nop
nop
nop
nop
inc %rdx
movb $0x61, (%rax)
nop
xor $34618, %r11
lea addresses_WC_ht+0x7bf8, %rsi
lea addresses_normal_ht+0x1a272, %rdi
cmp $34422, %r8
mov $119, %rcx
rep movsl
nop
nop
nop
nop
xor $25996, %rcx
lea addresses_normal_ht+0x15f8a, %rsi
lea addresses_WT_ht+0x6206, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $105, %rcx
rep movsq
nop
nop
nop
cmp $36354, %r8
lea addresses_D_ht+0x1a8a8, %rax
clflush (%rax)
nop
nop
xor $16735, %rsi
mov (%rax), %edx
nop
nop
nop
nop
nop
add $5711, %rax
lea addresses_UC_ht+0x1b8, %r13
add %rsi, %rsi
movups (%r13), %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
sub $24598, %rdx
lea addresses_D_ht+0xd850, %rdx
nop
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x13bf8, %r8
sub %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm6
and $0xffffffffffffffc0, %r8
movntdq %xmm6, (%r8)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x13f8, %rdi
nop
nop
nop
nop
nop
sub $15833, %rsi
mov (%rdi), %r8w
inc %r11
lea addresses_UC_ht+0x18c68, %rsi
lea addresses_WC_ht+0x119d8, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $25, %rcx
rep movsq
nop
nop
nop
nop
sub $53239, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0xc2c, %r12
nop
nop
sub $62130, %r9
movw $0x5152, (%r12)
nop
nop
nop
nop
inc %rdx

// REPMOV
lea addresses_UC+0x1fdf8, %rsi
lea addresses_US+0x67f8, %rdi
nop
nop
sub %rax, %rax
mov $24, %rcx
rep movsw
nop
nop
nop
nop
sub $57844, %r13

// Store
lea addresses_RW+0x1ee38, %rax
nop
nop
nop
nop
and %rdx, %rdx
movw $0x5152, (%rax)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x4d5f8e00000003f8, %rcx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rcx), %di
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'00': 149}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
