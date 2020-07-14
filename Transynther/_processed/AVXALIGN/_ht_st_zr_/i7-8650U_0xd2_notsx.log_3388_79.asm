.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x297f, %r9
nop
nop
nop
cmp $62403, %r12
movb $0x61, (%r9)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x9ff, %r11
nop
nop
nop
inc %r9
mov (%r11), %r12
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x25ff, %rsi
lea addresses_D_ht+0x4d8d, %rdi
nop
nop
nop
nop
dec %r11
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $54220, %rcx
lea addresses_A_ht+0xe57f, %rsi
lea addresses_A_ht+0xd7fb, %rdi
nop
nop
and %r9, %r9
mov $19, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1d3ff, %rsi
lea addresses_normal_ht+0x27cf, %rdi
nop
nop
nop
dec %r9
mov $36, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x195ff, %rbp
sub %r9, %r9
movb (%rbp), %r10b
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x213, %rdi
nop
nop
sub $38522, %r12
movb $0x61, (%rdi)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x19d0f, %rdi
sub $10306, %rcx
mov (%rdi), %r9d
nop
nop
nop
nop
xor $54535, %r11
lea addresses_D_ht+0xc47f, %rsi
lea addresses_D_ht+0xfa3f, %rdi
clflush (%rsi)
nop
cmp %r11, %r11
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x173ff, %rsi
lea addresses_D_ht+0x1519f, %rdi
nop
nop
nop
nop
add $47196, %r9
mov $126, %rcx
rep movsl
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xd35f, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub $31971, %rsi
lea addresses_D_ht+0x59ff, %r12
add $9296, %r9
movb $0x61, (%r12)
nop
xor $12270, %rbp
lea addresses_normal_ht+0x109ff, %rbp
sub %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rbp)
nop
cmp $44127, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x7abf, %rsi
nop
nop
nop
nop
nop
cmp $32842, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x2aff, %r14
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_normal+0x1dcff, %rsi
lea addresses_PSE+0x5d1f, %rdi
dec %r12
mov $57, %rcx
rep movsw
nop
nop
nop
nop
dec %rax

// Store
lea addresses_WC+0x123f, %r11
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%r11)
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_WT+0x149ff, %rdi
clflush (%rdi)
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
sub $32184, %rcx

// Faulty Load
lea addresses_A+0x181ff, %r11
nop
nop
xor %r9, %r9
movntdqa (%r11), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 476, '34': 2591, '46': 142, '45': 154, '44': 25}
00 34 34 00 34 34 00 00 34 34 34 34 34 34 34 34 46 45 34 34 34 34 34 34 46 34 34 00 00 34 00 34 34 00 34 34 00 00 34 34 34 00 44 00 34 34 34 34 34 34 34 34 46 45 34 34 34 34 00 00 34 34 46 00 34 34 00 00 34 34 34 46 34 00 00 34 34 00 00 00 34 34 34 34 45 34 45 34 34 34 00 46 34 00 34 00 00 34 34 34 46 00 34 00 34 34 34 34 34 34 00 00 00 00 00 34 00 45 00 34 34 00 34 00 46 00 00 34 44 34 34 34 34 00 00 46 46 46 34 46 34 34 34 00 00 00 34 34 45 45 45 34 34 46 46 00 00 00 34 45 46 45 00 34 34 34 45 00 34 34 00 44 34 34 46 00 34 34 34 00 46 34 46 00 34 34 34 34 34 34 34 00 34 46 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 46 00 34 34 34 34 34 34 34 34 34 34 34 46 34 00 00 34 45 34 34 45 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 46 34 34 34 34 34 34 34 00 45 34 34 34 00 34 00 34 45 45 34 34 34 34 34 34 00 34 34 34 34 46 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 45 34 00 00 00 00 46 45 34 34 34 34 34 34 34 34 34 34 34 00 34 45 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 00 34 45 46 34 34 34 00 34 00 34 46 45 34 34 34 34 34 00 34 45 46 00 34 34 34 34 00 00 34 34 34 34 34 34 44 00 46 34 34 34 00 34 34 46 00 34 00 34 34 44 34 34 34 34 34 45 00 00 46 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 44 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 00 34 45 34 34 34 34 34 34 34 34 00 00 46 34 34 34 34 34 34 34 34 34 44 34 34 34 34 46 34 45 34 34 34 34 34 34 34 34 34 34 34 46 34 34 34 34 34 34 34 46 34 34 00 00 34 34 45 34 34 34 00 34 34 34 34 34 44 34 45 34 34 34 34 34 44 34 34 46 34 46 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 45 34 34 00 34 34 34 34 34 34 34 46 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 00 00 34 00 34 34 34 00 34 34 34 34 00 45 34 34 34 34 34 34 34 34 34 45 34 34 34 34 34 34 00 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 46 00 34 34 34 34 45 34 34 34 34 34 34 34 34 34 46 34 34 34 34 00 34 34 00 34 34 34 34 34 34 34 00 00 44 00 34 34 34 45 00 00 34 34 45 34 34 46 34 34 00 34 00 34 45 00 34 45 00 00 34 34 34 00 34 34 34 34 46 45 34 00 44 00 00 34 34 34 34 34 45 00 00 00 34 46 34 34 34 34 34 34 46 34 34 34 34 00 34 34 34 46 00 34 00 34 00 34 00 00 00 34 00 46 45 34 46 34 00 34 34 34 00 00 45 00 34 34 00 00 46 34 00 00 34 34 00 34 34 34 34 34 34 00 46 46 00 45 34 34 34 34 34 34 34 46 34 46 34 00 00 34 34 00 34 34 34 34 34 00 34 34 00 34 34 00 34 34 46 00 34 46 34 46 34 34 00 34 45 34 00 00 34 45 00 00 34 34 45 34 45 34 46 34 34 34 46 44 00 34 34 00 34 34 00 34 34 34 34 45 45 46 34 34 34 34 34 34 34 34 44 34 34 44 34 34 45 34 34 34 00 34 34 34 34 34 34 34 45 34 00 34 45 00 34 34 34 34 34 34 34 00 34 34 34 34 34 00 34 34 00 00 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 45 00 34 45 34 00 34 34 34 34 34 00 34 46 34 34 46 34 34 00 34 34 34 34 00 00 34 34 34 34 34 34 34 34 46 45 34 45 00
*/
