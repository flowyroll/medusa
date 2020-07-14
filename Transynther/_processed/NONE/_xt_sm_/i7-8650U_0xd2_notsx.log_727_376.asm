.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1cbc4, %rsi
lea addresses_UC_ht+0x17d24, %rdi
nop
xor $23510, %r10
mov $5, %rcx
rep movsq
nop
nop
nop
nop
add $29007, %rax
lea addresses_WC_ht+0x1ce64, %r15
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r15), %cx
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x199e4, %rsi
lea addresses_D_ht+0x1b3a4, %rdi
nop
nop
nop
inc %r13
mov $36, %rcx
rep movsq
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x141b4, %rsi
lea addresses_UC_ht+0x1a0a6, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $6, %rcx
rep movsw
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x8924, %r15
nop
nop
xor $48458, %rdi
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x5540, %rax
and %rdi, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add $48127, %r10
lea addresses_A_ht+0xdf24, %r13
nop
nop
add $57598, %r9
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r15
nop
dec %r10
lea addresses_WC_ht+0x19b62, %rax
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x4dd7, %rsi
lea addresses_A_ht+0x16b24, %rdi
nop
nop
nop
nop
cmp $49431, %r9
mov $60, %rcx
rep movsl
nop
nop
nop
nop
nop
and $34475, %r13
lea addresses_normal_ht+0x5924, %rsi
lea addresses_WC_ht+0x15524, %rdi
nop
and $41410, %r10
mov $52, %rcx
rep movsq
sub $6062, %r13
lea addresses_A_ht+0x9e14, %rsi
lea addresses_WC_ht+0x2d24, %rdi
clflush (%rdi)
nop
nop
nop
sub %r9, %r9
mov $74, %rcx
rep movsb
nop
nop
nop
cmp $62720, %r9
lea addresses_D_ht+0xc461, %rcx
clflush (%rcx)
nop
nop
nop
sub $20736, %r10
movb (%rcx), %r13b
nop
nop
xor $25446, %rsi
lea addresses_A_ht+0x14f14, %r9
nop
cmp $47375, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1924, %rax
nop
nop
and %r9, %r9
movb $0x61, (%rax)
nop
nop
nop
nop
nop
and $56398, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
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

// REPMOV
lea addresses_RW+0x11424, %rsi
lea addresses_WC+0xcf24, %rdi
nop
nop
nop
nop
dec %r11
mov $112, %rcx
rep movsw
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x12e04, %rsi
nop
sub $10802, %rax
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
nop
cmp $65058, %rsi

// Store
lea addresses_UC+0x3b24, %r8
clflush (%r8)
inc %r11
movb $0x51, (%r8)
nop
nop
and $19806, %r11

// Load
lea addresses_D+0x2c64, %r8
nop
and %r15, %r15
movb (%r8), %cl
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x924, %rax
nop
nop
and $63794, %r8
movb $0x51, (%rax)
nop
inc %r11

// Store
lea addresses_normal+0x9924, %rax
nop
and %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
and $2848, %rcx

// Load
lea addresses_WC+0x14924, %rax
nop
xor $48313, %r8
mov (%rax), %cx
xor $40735, %rax

// Store
lea addresses_WC+0xc564, %rcx
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovntdq %ymm0, (%rcx)
dec %rdi

// Load
lea addresses_RW+0x10f24, %r11
nop
nop
nop
nop
nop
cmp $53035, %rdi
mov (%r11), %rcx
nop
nop
nop
nop
xor $19403, %r15

// Store
mov $0x5d8c10000000124, %rax
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
sub $19489, %rax

// Store
lea addresses_WC+0x5ea4, %rsi
nop
nop
nop
dec %r11
movb $0x51, (%rsi)
nop
inc %rax

// Faulty Load
lea addresses_normal+0x924, %r8
nop
nop
sub $38640, %r15
movb (%r8), %al
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
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
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'51': 727}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
