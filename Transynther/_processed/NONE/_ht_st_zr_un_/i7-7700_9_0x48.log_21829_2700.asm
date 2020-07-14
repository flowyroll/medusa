.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe83d, %rsi
lea addresses_WC_ht+0x553d, %rdi
nop
nop
xor %r11, %r11
mov $122, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_UC_ht+0x19c3d, %r13
xor $11277, %rdx
mov (%r13), %bp
inc %rdi
lea addresses_A_ht+0xf9cd, %rsi
nop
nop
nop
nop
nop
xor %rdx, %rdx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0xe03d, %rsi
lea addresses_WT_ht+0xa9bd, %rdi
clflush (%rsi)
nop
nop
nop
inc %r8
mov $14, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_D_ht+0x161e3, %rcx
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%rcx)
xor $31505, %r11
lea addresses_WC_ht+0x263d, %rsi
nop
nop
nop
nop
nop
add $60077, %rcx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp $11880, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_US+0x1a43d, %r9
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add $22118, %r9

// Store
lea addresses_D+0xf33d, %rbp
clflush (%rbp)
add %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rbp)
nop
and $21845, %r15

// Faulty Load
lea addresses_UC+0x7c3d, %r9
nop
nop
sub $54884, %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'53': 419, 'f8': 1, '47': 142, 'e0': 1, '45': 144, '00': 3517, '01': 1539, 'a2': 1, '48': 1037, '64': 1, 'ff': 15027}
00 ff ff 48 ff ff ff ff ff ff ff ff 00 ff 01 ff ff 00 ff 01 ff 01 ff ff ff 53 47 ff 00 00 ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff 00 ff ff 00 ff 48 ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff 00 00 48 ff ff ff ff ff 00 00 ff ff ff ff 00 ff ff ff 00 ff 01 48 ff ff ff 00 00 ff ff 00 00 48 00 ff ff ff 00 ff ff ff ff ff ff ff 01 00 ff ff 45 ff ff ff ff 00 ff ff 00 ff ff 01 00 ff 01 ff ff ff 00 53 ff 01 ff ff ff 00 ff ff 53 ff ff ff 00 ff ff 53 ff 00 45 00 00 00 ff ff ff ff ff 48 ff ff 00 ff 48 ff 00 00 ff ff ff 00 ff 01 ff ff ff ff 01 00 ff ff ff ff ff ff 53 ff ff ff 01 ff ff 01 00 ff ff ff 00 ff ff 48 48 ff 00 00 ff ff ff ff ff 48 ff ff ff ff ff 00 ff ff ff ff ff 01 ff ff 48 00 ff 48 ff ff ff ff 00 ff ff ff ff ff ff ff ff 00 ff ff ff ff 53 00 00 ff ff ff ff ff ff ff 00 ff ff ff 00 ff ff ff ff ff ff 48 48 ff ff ff ff ff ff ff 48 ff ff ff 00 ff ff ff ff 01 00 ff 01 ff ff 01 00 00 ff ff ff 48 ff 00 ff 45 ff 48 00 ff ff 01 ff 01 48 ff ff ff ff ff ff 00 ff ff ff 00 ff ff 01 ff 45 48 00 ff 01 ff ff 01 48 00 ff 00 ff ff 00 00 ff ff 00 00 ff ff ff ff 00 ff 01 ff 48 ff ff 01 48 ff ff 00 ff 00 ff 00 48 00 53 ff ff ff ff ff ff ff ff ff 01 ff ff ff 00 ff 00 ff ff ff 48 ff ff ff ff 53 00 ff ff 00 ff 53 ff 00 ff 00 ff ff ff 48 ff 00 ff ff 00 ff ff 53 00 ff ff ff ff ff 48 ff ff ff ff 53 ff 48 00 00 ff ff 00 ff 00 ff ff ff ff ff ff ff ff 01 45 ff 53 ff 53 00 ff ff 00 ff ff ff ff ff ff 01 ff ff 00 ff ff 01 ff ff ff 01 48 ff ff ff 01 00 ff ff ff 00 48 ff ff 01 ff 01 ff ff 00 ff ff 48 48 ff ff ff ff ff ff ff 48 ff ff 00 ff ff ff 53 ff ff 00 ff 00 ff ff 01 ff ff ff ff ff ff 01 ff ff ff ff ff 00 ff ff ff 01 00 ff ff ff 01 00 ff 00 ff 01 ff ff ff ff ff ff ff ff ff 01 ff ff 48 ff ff ff ff 01 48 ff ff 48 00 ff ff ff ff ff ff 00 00 ff 00 ff 00 ff ff ff 00 ff ff ff ff 00 45 ff ff ff 48 00 00 ff ff 00 ff ff ff ff ff ff 00 47 ff ff ff ff ff ff 47 ff ff ff 48 ff ff ff 00 ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff ff ff ff ff 00 00 ff ff 01 00 ff ff ff 48 ff 00 00 ff ff ff 00 ff 01 00 ff ff ff 00 00 ff ff ff ff ff 00 48 00 53 ff 00 ff ff ff ff ff 01 ff 00 ff ff ff ff 53 ff ff ff 01 ff ff ff ff 00 ff ff 00 ff ff ff ff ff ff 00 ff ff ff ff ff ff 00 ff ff ff 00 ff ff 01 ff ff ff 01 ff ff ff ff 47 ff ff ff ff ff 01 ff ff 00 ff 48 ff 45 ff 01 ff ff ff 00 ff 01 53 00 48 ff 53 ff ff ff ff ff 00 ff ff 00 ff ff ff 01 00 ff ff ff ff ff ff ff 48 00 00 ff ff 00 00 ff ff 00 ff ff ff ff 00 48 ff 00 00 53 ff ff ff ff ff ff ff ff 00 ff 48 ff ff 01 ff 48 ff ff ff ff ff 00 00 ff ff ff ff ff ff 00 ff 53 ff ff ff ff 00 ff 48 ff ff 00 00 48 ff ff ff 01 ff 48 ff ff 00 ff 48 ff ff 00 ff ff ff ff 48 ff ff ff ff ff 48 ff ff ff ff ff ff ff ff ff ff ff 48 ff 01 ff ff ff ff ff ff ff ff ff ff ff 00 00 00 ff ff 47 ff 01 ff 48 ff ff 00 ff 48 ff ff ff ff ff ff 00 ff ff ff 00 ff 00 ff ff ff 01 ff 00 ff ff 01 ff 01 ff 00 ff ff 00 ff ff ff ff ff 00 ff ff ff ff 01 00 ff ff 01 ff ff ff ff ff 01 ff ff ff ff ff ff ff ff ff ff 01 ff 00 ff ff ff ff 00 ff 01 00 ff ff 01 ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
