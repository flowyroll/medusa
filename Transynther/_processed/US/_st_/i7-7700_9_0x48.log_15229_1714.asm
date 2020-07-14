.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e3f2, %rsi
lea addresses_normal_ht+0x12a9e, %rdi
nop
nop
xor %r10, %r10
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $38556, %rbp
lea addresses_normal_ht+0xd492, %r10
add %rax, %rax
movb (%r10), %r12b
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0xd3a2, %rsi
lea addresses_WT_ht+0x6c32, %rdi
cmp $13870, %r8
mov $41, %rcx
rep movsw
nop
add $6871, %r12
lea addresses_UC_ht+0x1b1f2, %rsi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
nop
and %r8, %r8
lea addresses_WC_ht+0x169f2, %rsi
lea addresses_UC_ht+0x12cb5, %rdi
nop
inc %r12
mov $42, %rcx
rep movsb
nop
nop
nop
nop
xor $13566, %rax
lea addresses_WT_ht+0xc1f2, %rcx
clflush (%rcx)
nop
nop
nop
and %r12, %r12
mov (%rcx), %r8d
nop
nop
nop
nop
nop
sub $19232, %r12
lea addresses_WT_ht+0x104f2, %rsi
lea addresses_WT_ht+0x15cf2, %rdi
nop
nop
dec %r10
mov $4, %rcx
rep movsb
nop
nop
nop
sub $56247, %rbp
lea addresses_A_ht+0x176b2, %rsi
lea addresses_WT_ht+0x1a172, %rdi
clflush (%rsi)
nop
inc %rbp
mov $125, %rcx
rep movsq
nop
nop
add $62653, %rcx
lea addresses_D_ht+0x87f2, %rsi
lea addresses_WC_ht+0x59f2, %rdi
nop
nop
nop
and %r12, %r12
mov $78, %rcx
rep movsw
nop
nop
nop
xor $60833, %rsi
lea addresses_UC_ht+0x1c57, %rdi
nop
dec %rsi
movb (%rdi), %r12b
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1c1f2, %rsi
add %r10, %r10
movb $0x61, (%rsi)
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x27f4, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1d1a5, %rbp
nop
inc %r8
mov (%rbp), %eax
nop
nop
nop
nop
and $789, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_US+0x1da7a, %r10
nop
nop
dec %r9
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
xor $39917, %r10

// Store
lea addresses_US+0x49f2, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0xd3de, %r11
nop
nop
nop
nop
add $8953, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r11)
add %rax, %rax

// Load
lea addresses_normal+0x89f2, %r11
nop
nop
nop
nop
add %rax, %rax
mov (%r11), %r10w
nop
and %rdi, %rdi

// Store
lea addresses_normal+0xb5f2, %r10
nop
dec %rax
movl $0x51525354, (%r10)
nop
nop
and %r10, %r10

// Store
lea addresses_WT+0x11f2, %r10
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
and $1412, %r9

// Store
lea addresses_normal+0xbdf2, %r10
nop
and $36994, %rax
movl $0x51525354, (%r10)
nop
inc %rdi

// Store
lea addresses_WC+0x1fdf2, %r14
nop
cmp $29397, %rdi
movw $0x5152, (%r14)
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x141f2, %r14
add %r11, %r11
movw $0x5152, (%r14)
cmp $14207, %rdi

// Faulty Load
lea addresses_US+0x1a9f2, %r10
nop
nop
nop
xor %r14, %r14
movb (%r10), %r11b
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'52': 15229}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
