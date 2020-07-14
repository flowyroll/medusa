.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9712, %r15
nop
and %r11, %r11
movl $0x61626364, (%r15)
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x173aa, %rsi
lea addresses_D_ht+0x5e32, %rdi
clflush (%rdi)
nop
nop
cmp %r11, %r11
mov $28, %rcx
rep movsw
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0xd9c2, %r11
nop
nop
cmp $52451, %rbp
mov (%r11), %edi
nop
nop
nop
nop
nop
cmp $35296, %r10
lea addresses_WC_ht+0x12ace, %rbp
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x9b11, %rsi
lea addresses_normal_ht+0x1e27a, %rdi
nop
nop
and $33252, %r10
mov $30, %rcx
rep movsb
nop
nop
nop
nop
add $3840, %r10
lea addresses_WT_ht+0x1e9ba, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
dec %r10
lea addresses_D_ht+0xe7ba, %rsi
lea addresses_A_ht+0x1cf9a, %rdi
nop
nop
sub $33444, %r11
mov $22, %rcx
rep movsq
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x1e67a, %rbp
nop
nop
sub $735, %r10
mov (%rbp), %ecx
xor $39858, %r15
lea addresses_D_ht+0x11afa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $10309, %rbp
mov (%rdi), %r10d
cmp $11666, %r10
lea addresses_normal_ht+0xa5ba, %rsi
lea addresses_WC_ht+0x1acba, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $67, %rcx
rep movsl
nop
dec %rsi
lea addresses_UC_ht+0x71ba, %r10
clflush (%r10)
sub %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0xb1ba, %rdi
nop
xor %r15, %r15
movw $0x6162, (%rdi)
sub %rbp, %rbp
lea addresses_WC_ht+0x2bfa, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor $41866, %r8
movl $0x61626364, (%rbp)
nop
add $51942, %r11
lea addresses_WC_ht+0x12892, %r11
nop
nop
nop
cmp $7318, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
sub $62706, %rcx
lea addresses_WC_ht+0x6bd2, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %r10, %r10
mov (%rsi), %rbp
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rdi

// Faulty Load
lea addresses_WC+0xb1ba, %rdi
inc %r12
mov (%rdi), %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'38': 115}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
