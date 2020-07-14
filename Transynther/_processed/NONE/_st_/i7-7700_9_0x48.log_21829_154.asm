.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3fab, %rax
clflush (%rax)
nop
sub $57576, %r10
mov (%rax), %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x135cb, %r15
nop
nop
nop
nop
nop
and $15900, %rbp
mov (%r15), %si
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1d33b, %r10
nop
nop
nop
nop
nop
lfence
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
xor $53004, %rdi
lea addresses_WC_ht+0x6cb3, %rsi
lea addresses_UC_ht+0x1413b, %rdi
nop
nop
nop
and %r15, %r15
mov $79, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xa3b, %r10
nop
add $26534, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%r10)
add %r15, %r15
lea addresses_UC_ht+0x913b, %rbp
nop
nop
nop
nop
nop
dec %r10
mov (%rbp), %r9
nop
nop
inc %rcx
lea addresses_normal_ht+0x10d7b, %rcx
nop
nop
nop
nop
xor $14077, %rsi
mov (%rcx), %rbp
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x293b, %rsi
lea addresses_D_ht+0xf93b, %rdi
nop
nop
nop
cmp %rax, %rax
mov $6, %rcx
rep movsl
nop
nop
nop
nop
xor $15743, %rsi
lea addresses_WT_ht+0x13745, %rsi
lea addresses_WC_ht+0xd93b, %rdi
nop
nop
nop
nop
nop
sub $4151, %r10
mov $79, %rcx
rep movsl
sub %r9, %r9
lea addresses_UC_ht+0xb33b, %r9
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r9)
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xda6b, %rdi
cmp $13046, %r15
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x323b, %rsi
lea addresses_D_ht+0xdcc9, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $17, %rcx
rep movsw
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x13753, %rdi
nop
nop
cmp $26858, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rdi)
nop
dec %rcx
lea addresses_A_ht+0x1d83b, %rsi
lea addresses_WT_ht+0x110a3, %rdi
clflush (%rsi)
nop
nop
cmp %r10, %r10
mov $99, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x613b, %r11
nop
nop
nop
xor $19246, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r11)
nop
add %rdx, %rdx

// Store
lea addresses_WC+0x1187b, %r11
nop
nop
nop
nop
and $58688, %r14
movb $0x51, (%r11)
nop
nop
nop
add %r8, %r8

// Store
mov $0x3ef, %rdx
nop
nop
xor $15829, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rdx)
nop
nop
and %r14, %r14

// Store
lea addresses_D+0xf13b, %r15
nop
nop
nop
nop
sub $49316, %r11
movb $0x51, (%r15)
sub %r11, %r11

// Store
lea addresses_A+0x810b, %r11
nop
cmp $54594, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
add $26385, %r8

// Store
lea addresses_D+0x1213b, %r8
nop
nop
nop
nop
xor %r11, %r11
movb $0x51, (%r8)
nop
nop
add $8745, %r15

// Store
lea addresses_US+0x1a13b, %rdi
nop
nop
nop
nop
add $38007, %r15
movl $0x51525354, (%rdi)
add %rsi, %rsi

// Store
lea addresses_PSE+0x1013b, %r15
nop
cmp %r11, %r11
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $43097, %r14

// Faulty Load
lea addresses_WT+0x1a13b, %r8
nop
nop
nop
nop
sub $9765, %r14
mov (%r8), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
