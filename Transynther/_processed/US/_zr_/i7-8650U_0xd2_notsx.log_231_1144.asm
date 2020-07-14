.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1af02, %r13
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%r13)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1dc2, %rsi
nop
nop
nop
nop
nop
xor %rdx, %rdx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x1e122, %r11
xor $13444, %r10
mov (%r11), %rsi
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x40b2, %rsi
lea addresses_UC_ht+0x1d5c2, %rdi
nop
nop
nop
xor %r13, %r13
mov $83, %rcx
rep movsb
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xf3c2, %r11
nop
nop
nop
dec %rsi
movups (%r11), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xd602, %rsi
lea addresses_WT_ht+0x8236, %rdi
clflush (%rsi)
add %r11, %r11
mov $87, %rcx
rep movsw
nop
inc %r13
lea addresses_D_ht+0x113c2, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $28515, %r13
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
add $57170, %r10
lea addresses_WT_ht+0x2e9c, %r10
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0xe1c2, %r9
nop
nop
nop
sub $3500, %rdx
mov (%r9), %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 231}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
