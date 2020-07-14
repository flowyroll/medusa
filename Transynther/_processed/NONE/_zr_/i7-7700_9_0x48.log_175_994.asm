.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e57e, %rdi
clflush (%rdi)
nop
add %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub $32544, %rax
lea addresses_WT_ht+0x1d986, %rsi
lea addresses_A_ht+0x11e88, %rdi
nop
nop
add %r11, %r11
mov $109, %rcx
rep movsw
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x107be, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm4
and $0xffffffffffffffc0, %rcx
vmovaps %ymm4, (%rcx)
nop
add %r14, %r14
lea addresses_A_ht+0xc9be, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rdi
movntdq %xmm5, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x10904, %rsi
lea addresses_normal_ht+0xb1be, %rdi
nop
nop
nop
sub %r15, %r15
mov $99, %rcx
rep movsl
and $53496, %rax
lea addresses_UC_ht+0x17cd6, %rsi
lea addresses_D_ht+0xbe7e, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $31778, %rax
mov $113, %rcx
rep movsq
nop
nop
and $28157, %r10
lea addresses_A_ht+0x57be, %r10
sub $23749, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
add $30699, %rax
lea addresses_WC_ht+0x1a9be, %r11
nop
nop
nop
sub $45148, %rcx
movb (%r11), %r15b
nop
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x14e5e, %rsi
lea addresses_UC_ht+0x1683e, %rdi
xor %r14, %r14
mov $56, %rcx
rep movsl
xor $57846, %rdi
lea addresses_WT_ht+0x2fbe, %r11
nop
nop
nop
nop
nop
cmp $17294, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
and $0xffffffffffffffc0, %r11
vmovaps %ymm2, (%r11)
nop
add $56844, %r15
lea addresses_WC_ht+0xc1e2, %rsi
lea addresses_UC_ht+0x6396, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r14, %r14
mov $114, %rcx
rep movsw
add $39984, %rax
lea addresses_UC_ht+0x1287e, %rsi
lea addresses_D_ht+0xae3e, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r10, %r10
mov $114, %rcx
rep movsl
nop
nop
and $35101, %r10
lea addresses_A_ht+0x18cbe, %rcx
nop
add $54156, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
inc %r14
lea addresses_WC_ht+0x1d2f6, %rsi
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
xor $15724, %rax
lea addresses_UC_ht+0x1633e, %r15
nop
nop
nop
nop
nop
and $45593, %r14
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
add $51027, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x167de, %rsi
mov $0x52bc0c0000000a0e, %rdi
clflush (%rsi)
nop
xor %r8, %r8
mov $47, %rcx
rep movsb
nop
nop
cmp $24769, %rcx

// Store
lea addresses_WT+0x194be, %r10
and %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movntdq %xmm1, (%r10)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_UC+0x1455f, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_WC+0xf9be, %rbp
and %r8, %r8
mov (%rbp), %r10w
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'00': 175}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
