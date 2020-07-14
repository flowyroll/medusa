.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4527, %rdx
nop
nop
nop
add %r9, %r9
movb (%rdx), %r12b
add $63812, %r12
lea addresses_UC_ht+0x11c53, %rsi
nop
nop
nop
cmp %rbp, %rbp
mov (%rsi), %rdx
add $34678, %rbp
lea addresses_D_ht+0x5867, %r15
nop
nop
nop
nop
nop
xor $13020, %rsi
mov (%r15), %r9d
nop
nop
nop
nop
cmp $50518, %rdx
lea addresses_UC_ht+0xfb67, %rsi
lea addresses_UC_ht+0xf86a, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
nop
and $4502, %r12
lea addresses_A_ht+0x7127, %rsi
lea addresses_normal_ht+0xfc27, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $105, %rcx
rep movsw
nop
nop
nop
add $12409, %rdx
lea addresses_A_ht+0x1c6e7, %rdx
nop
nop
sub %r9, %r9
mov (%rdx), %si
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0xed27, %rsi
lea addresses_WC_ht+0x862f, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $48, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x14367, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub $57485, %r12
mov (%r9), %r15
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0xa37b, %r8
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%r8)
add %rax, %rax

// Store
mov $0xd27, %rbp
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rbp)
cmp %rax, %rax

// Store
lea addresses_A+0x152e7, %rsi
clflush (%rsi)
nop
nop
inc %r14
movb $0x51, (%rsi)
nop
nop
dec %r14

// Store
lea addresses_D+0x19527, %r8
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
nop
nop
and $4740, %rdi

// Store
lea addresses_RW+0x53ef, %r11
nop
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
and %r14, %r14

// Faulty Load
mov $0x1868dc0000000527, %r11
nop
nop
nop
nop
and $16597, %rbp
mov (%r11), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 531, '30': 2, '58': 282}
00 00 00 00 00 30 00 00 58 00 00 58 58 00 00 00 58 00 58 00 58 00 00 00 00 58 00 00 00 58 00 58 00 00 58 00 58 58 58 58 00 58 58 00 00 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 58 58 00 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 58 58 58 58 00 00 58 00 00 00 58 58 00 00 58 00 00 58 58 58 00 00 00 58 58 00 00 00 00 58 00 00 58 58 00 00 58 58 00 00 00 58 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 58 00 58 00 00 00 58 58 00 00 58 00 58 58 58 00 58 58 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 58 58 00 00 58 00 00 00 58 00 00 58 58 00 00 00 00 00 00 58 58 58 00 58 00 00 00 00 58 58 00 00 58 00 58 00 58 00 58 00 00 58 00 00 58 58 00 00 00 00 00 58 00 58 00 00 58 00 00 00 00 00 00 00 58 58 00 00 58 00 58 00 58 00 58 00 00 00 00 00 00 58 00 58 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 58 00 00 58 58 00 58 00 58 00 00 58 58 58 00 00 00 00 58 58 00 00 58 58 00 00 00 00 58 00 00 00 00 58 00 58 00 00 58 00 58 00 58 00 00 00 00 58 00 00 58 00 00 58 00 58 00 00 00 58 00 00 58 58 58 58 00 00 58 00 00 00 00 00 00 58 00 00 00 58 58 00 58 58 58 58 00 00 00 58 00 58 58 00 58 58 58 00 00 00 58 00 00 00 00 00 58 00 58 00 00 58 58 00 58 00 58 00 00 58 00 58 00 00 00 00 00 00 58 00 58 00 00 58 00 58 00 00 00 00 58 00 00 00 58 00 00 58 58 58 58 00 00 58 00 00 00 00 00 00 00 58 58 58 00 58 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 58 00 58 00 58 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 58 00 58 00 00 00 00 00 58 00 00 58 00 00 00 00 00 58 00 00 58 58 00 00 58 00 00 58 00 00 58 58 58 00 58 00 00 58 00 58 00 00 58 00 00 00 00 00 58 00 58 58 00 00 00 58 58 58 00 00 00 58 00 00 00 58 58 00 58 58 00 00 00 00 58 00 00 00 00 58 58 00 58 00 00 58 58 00 00 00 58 58 58 58 00 00 00 00 58 58 58 58 00 00 00 00 58 00 00 58 58 58 00 58 00 58 00 58 58 00 58 00 00 00 58 00 00 58 00 00 58 58 00 00 00 00 30 58 58 58 58 00 00 58 00 58 58 58 00 00 58 00 00 58 00 00 58 00 58 00 00 00 58 58 00 00 58 00 58 58 00 00 58 00 58 00 00 00 00 58 58 00 00 58 00 00 58 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 58 00 58 00 58 00 00 00 58 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 58 00 00 00 00 00 00 00 00 58 00 58 00 58 58 00 00
*/
