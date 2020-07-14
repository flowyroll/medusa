.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7a4e, %r12
add $37320, %r11
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
nop
nop
nop
cmp $35647, %rbx
lea addresses_WC_ht+0x17536, %r13
nop
nop
nop
nop
nop
inc %rdi
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
add %r13, %r13
lea addresses_D_ht+0x11a4e, %r10
nop
nop
sub $4152, %r11
movb $0x61, (%r10)
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xe886, %r11
nop
nop
nop
nop
nop
and $5439, %r10
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1624e, %rdi
nop
nop
nop
nop
add $5442, %r13
movw $0x6162, (%rdi)
nop
nop
dec %rax
lea addresses_WC_ht+0x1824e, %rsi
lea addresses_D_ht+0x100e, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $38239, %rax
mov $26, %rcx
rep movsb
nop
nop
nop
nop
cmp $60756, %rsi
lea addresses_WC_ht+0x4076, %rsi
lea addresses_WT_ht+0x1224e, %rdi
nop
nop
nop
add %r10, %r10
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x156ae, %rbx
nop
nop
nop
nop
cmp %r11, %r11
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
add $8218, %rdi
lea addresses_UC_ht+0x153fa, %rsi
lea addresses_A_ht+0x173b6, %rdi
nop
nop
nop
nop
add $27865, %rbx
mov $26, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_UC_ht+0xb3c, %rcx
nop
nop
nop
nop
nop
cmp $24771, %rax
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
dec %r13
lea addresses_WT_ht+0x1f6e, %rbx
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xdb8e, %rcx
nop
nop
inc %r10
mov (%rcx), %r12w
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0xa54e, %rsi
lea addresses_D_ht+0x37c0, %rdi
nop
nop
nop
and %r12, %r12
mov $126, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x27de, %r11
add %r12, %r12
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rcx
nop
xor $52059, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WT+0xe9a6, %rsi
nop
nop
nop
add %r10, %r10
movb (%rsi), %dl
cmp %r13, %r13

// Store
lea addresses_UC+0x880e, %r10
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
and $63790, %rcx

// Store
lea addresses_PSE+0x1864e, %r13
nop
nop
and $44497, %r9
movl $0x51525354, (%r13)
nop
nop
nop
sub %rdx, %rdx

// Store
mov $0xa4e, %r10
cmp %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
and $849, %r9

// Store
lea addresses_PSE+0xb24e, %rcx
nop
nop
add %r9, %r9
movw $0x5152, (%rcx)
nop
nop
add $20821, %rdx

// Faulty Load
lea addresses_UC+0x1724e, %r13
inc %r10
vmovaps (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'52': 10212, '00': 11617}
52 52 00 52 52 00 00 00 52 00 52 52 00 00 00 52 52 52 00 00 00 52 00 00 00 00 00 52 52 52 52 00 00 52 52 52 00 00 00 52 52 52 00 00 00 00 00 00 00 00 00 52 52 52 52 00 00 00 52 00 00 52 00 00 00 52 00 52 00 00 00 00 00 52 52 52 00 00 52 52 00 52 52 52 00 00 52 00 00 00 52 00 00 00 00 00 00 52 00 00 52 52 00 00 52 00 52 52 00 52 52 52 00 00 52 52 00 00 00 52 52 00 52 52 00 00 00 52 52 00 52 00 52 52 52 00 00 00 52 52 00 00 52 52 00 52 52 00 52 00 00 52 52 00 52 00 00 00 00 52 52 52 52 52 00 00 00 52 00 52 00 52 00 52 52 52 52 52 52 00 00 52 00 52 00 00 00 52 52 00 52 00 00 00 52 00 52 52 52 52 52 52 00 52 52 52 00 00 52 00 00 52 00 52 52 00 00 52 52 52 00 00 00 00 52 52 00 00 52 00 00 00 52 52 00 00 52 00 00 52 52 00 00 00 52 52 52 00 00 00 52 00 00 52 52 00 00 00 00 52 00 00 00 52 52 00 00 52 52 00 52 00 00 00 00 52 00 00 52 52 00 00 00 52 00 00 00 00 00 52 52 52 52 52 00 52 52 00 00 52 00 52 00 00 52 00 00 00 52 00 00 52 00 00 00 52 52 00 00 00 52 52 00 52 00 52 00 00 52 00 52 52 52 00 52 52 00 00 52 52 52 52 00 52 52 00 00 52 00 00 52 52 00 00 00 52 00 52 00 00 52 00 00 00 52 00 52 52 00 52 52 00 52 00 52 00 52 00 52 52 52 00 00 00 52 00 52 00 00 00 52 52 52 00 52 00 52 00 00 52 52 00 00 00 00 52 00 00 00 52 00 52 52 00 00 52 52 00 00 52 00 00 52 00 52 00 00 52 00 00 00 00 52 52 00 52 52 00 00 52 52 52 00 00 52 00 00 00 00 52 52 00 00 00 00 52 52 52 52 52 52 52 00 52 52 52 00 52 00 52 00 00 52 00 00 00 52 52 52 52 52 52 52 52 00 00 00 00 00 52 52 00 52 00 52 00 00 52 52 00 52 52 00 00 52 52 52 00 00 00 00 00 52 52 00 00 00 52 00 52 52 52 52 00 00 52 00 52 52 52 00 52 00 00 00 00 52 00 52 00 00 52 52 52 00 00 52 00 52 00 00 00 00 52 00 00 52 52 52 52 52 00 00 52 00 52 00 00 00 00 52 00 00 52 52 52 00 00 52 52 52 00 00 00 52 52 00 00 00 52 00 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 00 00 52 00 00 52 00 00 00 00 00 00 52 00 00 52 52 00 52 52 52 52 00 52 52 00 52 00 52 00 00 52 52 00 00 52 52 52 00 52 52 00 00 52 00 00 52 52 00 52 52 00 00 52 00 00 00 00 52 52 00 52 00 00 00 00 00 52 52 00 00 52 00 52 52 00 00 52 00 52 52 00 00 00 52 00 00 00 52 52 52 52 00 52 00 00 00 52 00 00 52 00 52 00 52 52 00 00 00 00 52 00 00 52 52 00 52 00 52 00 00 52 00 00 52 52 00 00 00 00 52 52 00 00 00 00 00 52 00 00 00 00 52 00 00 52 00 00 00 52 52 00 00 00 00 52 52 00 00 52 52 00 52 00 52 00 52 00 52 52 00 52 52 52 52 00 52 00 00 52 52 52 52 00 00 00 00 00 52 00 00 00 52 00 00 52 52 52 00 52 00 00 00 52 52 00 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 00 52 00 52 00 52 00 00 52 52 52 52 52 52 00 00 00 00 52 52 00 52 00 52 52 00 52 52 00 00 52 00 00 00 52 00 00 00 00 00 52 00 00 00 52 52 00 52 00 00 52 52 00 00 00 52 52 00 00 52 52 52 52 52 00 00 00 52 52 52 52 00 00 00 52 00 00 00 00 00 00 52 52 52 00 52 00 00 52 52 52 52 52 00 52 00 52 52 00 00 00 00 00 52 52 00 00 00 00 52 52 00 00 00 52 52 00 52 00 52 00 00 00 00 00 00 00 52 00 52 52 00 52 52 00 00 00 00 52 52 00 00 52 52 52 00 52 52 00 00 00 00 00 52 52 00 00 00 00 52 00 00 00 52 52 00 00 00 52 00
*/
