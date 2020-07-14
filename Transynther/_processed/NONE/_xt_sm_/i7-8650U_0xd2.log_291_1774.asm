.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa440, %r8
nop
nop
nop
nop
xor $42593, %rdx
mov (%r8), %r14d
nop
nop
and %r9, %r9
lea addresses_A_ht+0x17bb4, %rbp
nop
xor $48678, %rbx
mov (%rbp), %r15d
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1cd2e, %rbx
nop
nop
nop
nop
nop
sub $29598, %rbp
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm1
vpextrq $1, %xmm1, %r8
nop
and %r8, %r8
lea addresses_normal_ht+0x1a740, %rsi
lea addresses_normal_ht+0x1bc50, %rdi
nop
add $4419, %rdx
mov $22, %rcx
rep movsl
nop
dec %rsi
lea addresses_normal_ht+0x10540, %rsi
lea addresses_UC_ht+0x8a40, %rdi
nop
nop
nop
nop
nop
and $60699, %rbx
mov $70, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xf0c0, %r15
add $17261, %rdx
mov $0x6162636465666768, %r8
movq %r8, (%r15)
cmp %rcx, %rcx
lea addresses_UC_ht+0x14440, %rbx
nop
nop
nop
nop
inc %rbp
movb (%rbx), %r15b
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
mov $0x638, %r10
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
cmp $2200, %rbp

// Store
lea addresses_WC+0x13840, %r9
nop
dec %r11
movb $0x51, (%r9)
and $64031, %rdi

// Store
lea addresses_WC+0x13840, %rbp
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
add %r15, %r15

// Load
mov $0xcc2, %r9
nop
nop
sub %rbp, %rbp
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x6da3a00000000440, %rdi
nop
nop
nop
nop
nop
xor $58878, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rdi)
and %r9, %r9

// Load
lea addresses_D+0x17280, %r10
nop
nop
and $40917, %rbp
movb (%r10), %al
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_PSE+0x1bdca, %r11
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
cmp $58824, %r11

// Store
mov $0x3d919700000000d8, %rbp
nop
nop
nop
add $26662, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WC+0x13840, %r15
nop
nop
nop
nop
nop
xor %r10, %r10
mov (%r15), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 291}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
