.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e3ef, %r13
nop
nop
nop
nop
inc %rbp
movl $0x61626364, (%r13)
nop
nop
nop
cmp $54425, %r10
lea addresses_normal_ht+0x14f24, %r14
and %r11, %r11
movw $0x6162, (%r14)
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x46f, %rsi
lea addresses_WC_ht+0x75ef, %rdi
nop
nop
nop
nop
nop
cmp $36253, %r10
mov $4, %rcx
rep movsw
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x87e7, %rdi
clflush (%rdi)
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
dec %rdi
lea addresses_D_ht+0x7187, %r14
xor $22960, %r13
mov (%r14), %rcx
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1a56f, %r10
sub %r11, %r11
movb $0x61, (%r10)
nop
cmp $40990, %r13
lea addresses_normal_ht+0x1386f, %rsi
lea addresses_WT_ht+0x846f, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $45, %rcx
rep movsl
nop
lfence
lea addresses_D_ht+0xdb2f, %rsi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rsi)
cmp %rsi, %rsi
lea addresses_WC_ht+0xa745, %r11
cmp $35123, %rsi
movb (%r11), %dl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xff2f, %rsi
lea addresses_WT_ht+0x19f4f, %rdi
clflush (%rdi)
nop
cmp $26282, %rdx
mov $7, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1618f, %rcx
nop
xor %rdx, %rdx
mov (%rcx), %rsi
nop
cmp %rdx, %rdx
lea addresses_D_ht+0xfc6f, %r11
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r11
movaps %xmm7, (%r11)
nop
nop
nop
cmp $57424, %rsi
lea addresses_A_ht+0x1bc6f, %rdx
nop
nop
nop
add $20415, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rdx
vmovaps %ymm1, (%rdx)
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x986f, %r11
nop
nop
nop
nop
nop
inc %r13
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xcd45, %r9
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
and %rdi, %rdi

// REPMOV
lea addresses_RW+0x18c47, %rsi
lea addresses_WT+0x32f, %rdi
nop
nop
nop
add $11791, %r8
mov $44, %rcx
rep movsq
cmp %rsi, %rsi

// REPMOV
lea addresses_normal+0x1e803, %rsi
lea addresses_UC+0x14fef, %rdi
nop
nop
sub %r10, %r10
mov $105, %rcx
rep movsl
nop
add $16909, %r9

// Store
mov $0x740, %rdx
nop
nop
add %r8, %r8
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_UC+0x1bb1f, %rdi
nop
sub $18736, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x14943, %rdi
nop
nop
nop
add $52069, %r10
movb $0x51, (%rdi)
nop
nop
add $45767, %r8

// Store
lea addresses_D+0x71df, %rcx
sub %r8, %r8
movl $0x51525354, (%rcx)
sub $63392, %r12

// Store
lea addresses_RW+0x19e6f, %rcx
nop
nop
nop
and $33637, %rsi
movb $0x51, (%rcx)
nop
xor $63473, %r10

// Faulty Load
lea addresses_RW+0x3c6f, %r8
nop
nop
nop
add %rsi, %rsi
mov (%r8), %edx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'32': 150}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
