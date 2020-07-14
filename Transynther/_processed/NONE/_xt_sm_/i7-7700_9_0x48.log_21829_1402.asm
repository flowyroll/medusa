.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6e0d, %r11
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %r11
movntdq %xmm2, (%r11)
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x420d, %r14
nop
nop
nop
cmp %r9, %r9
movb (%r14), %r12b
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x1a40d, %rsi
lea addresses_A_ht+0x86cd, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $45, %rcx
rep movsb
nop
nop
sub $13225, %r14
lea addresses_WC_ht+0x3b0d, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x13c0d, %r11
nop
nop
nop
inc %rbp
movw $0x6162, (%r11)
nop
nop
nop
inc %r9
lea addresses_WC_ht+0xaf11, %rsi
lea addresses_UC_ht+0xf51d, %rdi
xor %r14, %r14
mov $24, %rcx
rep movsb
cmp $44325, %rcx
lea addresses_WC_ht+0x5a0d, %r11
nop
nop
nop
nop
nop
cmp $21940, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x18c0d, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xb0d, %rsi
lea addresses_A_ht+0xec1d, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $4, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1de0d, %rcx
nop
sub %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x20d, %rsi
nop
nop
nop
nop
nop
and %rbp, %rbp
movb (%rsi), %r9b
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_PSE+0x4b0d, %r13
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
sub $65266, %rsi

// Store
lea addresses_PSE+0x8a0d, %r13
nop
inc %r11
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_normal+0x5a0d, %rdx
nop
nop
nop
inc %r15
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
xor $39649, %r11

// Faulty Load
lea addresses_PSE+0x8a0d, %r15
nop
cmp %r11, %r11
movb (%r15), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
