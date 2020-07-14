.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13a0e, %rdx
nop
nop
nop
xor %rsi, %rsi
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rcx
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x10006, %rsi
lea addresses_A_ht+0x1bc0e, %rdi
inc %r8
mov $67, %rcx
rep movsb
nop
inc %rbp
lea addresses_A_ht+0xbd8e, %rsi
lea addresses_normal_ht+0x100e, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $44, %rcx
rep movsq
nop
nop
nop
nop
xor $17530, %rbp
lea addresses_WT_ht+0x12402, %rsi
nop
nop
nop
inc %r11
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rdi
sub %r11, %r11
lea addresses_WC_ht+0x560e, %rsi
lea addresses_D_ht+0xd5ae, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $12, %rcx
rep movsb
nop
nop
nop
nop
nop
add $15763, %rdx
lea addresses_WT_ht+0x530e, %r11
nop
nop
nop
cmp %r8, %r8
movups (%r11), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x1a586, %rbp
inc %r11
movb (%rbp), %dl
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1812e, %rsi
lea addresses_WC_ht+0xc0e, %rdi
clflush (%rsi)
nop
nop
and %r15, %r15
mov $99, %rcx
rep movsw
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x1e40e, %rdx
nop
nop
nop
inc %rdi
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
dec %r15
lea addresses_D_ht+0x18e0e, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1a68e, %r10
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r10)
xor %rcx, %rcx

// Store
lea addresses_normal+0x140e, %r15
nop
nop
dec %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_PSE+0x1270e, %rdx
sub %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
xor $8930, %r11

// REPMOV
lea addresses_RW+0x909e, %rsi
lea addresses_A+0x16c0e, %rdi
nop
cmp %r12, %r12
mov $15, %rcx
rep movsl
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x17ece, %r10
nop
nop
nop
nop
inc %rcx
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_RW+0x14dcd, %rdx
nop
nop
nop
nop
nop
add $41100, %rsi
mov (%rdx), %r15d
nop
cmp $1056, %rsi

// Store
lea addresses_UC+0x1f38e, %rcx
nop
nop
nop
cmp $26831, %rdx
movw $0x5152, (%rcx)
xor $8330, %rcx

// Store
mov $0x80e, %r11
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x16c0e, %r8
and %rcx, %rcx
mov (%r8), %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'32': 90}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
