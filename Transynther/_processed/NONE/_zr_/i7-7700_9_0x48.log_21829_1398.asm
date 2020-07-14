.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf6b7, %rcx
dec %r13
movl $0x61626364, (%rcx)
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x190ed, %rbx
nop
and $21991, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
xor $43467, %rcx
lea addresses_D_ht+0x87cf, %r15
nop
nop
add %r13, %r13
movb $0x61, (%r15)
nop
nop
cmp $15212, %r8
lea addresses_WT_ht+0x1c71d, %rsi
lea addresses_A_ht+0x1d0d, %rdi
nop
sub %rbx, %rbx
mov $68, %rcx
rep movsw
nop
dec %r8
lea addresses_D_ht+0x1af8d, %rsi
lea addresses_D_ht+0x19186, %rdi
nop
xor %r9, %r9
mov $61, %rcx
rep movsw
cmp $10118, %rsi
lea addresses_A_ht+0x9e2d, %rbx
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0xe98d, %rsi
lea addresses_normal_ht+0x1960d, %rdi
nop
nop
nop
nop
and $57608, %rbx
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
add $37857, %rdi
lea addresses_WC_ht+0x19cd5, %rsi
lea addresses_WT_ht+0x1de8d, %rdi
nop
nop
nop
nop
nop
add $50853, %r9
mov $96, %rcx
rep movsb
sub $63208, %rcx
lea addresses_D_ht+0x1290d, %rsi
inc %r15
mov (%rsi), %r8w
nop
inc %r13
lea addresses_D_ht+0x1c30d, %rdi
nop
nop
nop
mfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
sub $6318, %r13
lea addresses_WC_ht+0xc8bd, %rsi
lea addresses_WT_ht+0x19b8d, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $42074, %r8
mov $101, %rcx
rep movsl
lfence
lea addresses_A_ht+0xc0ef, %rbx
nop
nop
nop
cmp $23212, %r15
mov (%rbx), %si
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x5f0d, %rsi
lea addresses_A_ht+0x7b0d, %rdi
and %r15, %r15
mov $48, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x770d, %rsi
nop
nop
nop
nop
nop
and $53055, %r15
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_UC+0x1e635, %rbp
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_PSE+0x1ed2d, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $42575, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
sub $28571, %rdx

// Faulty Load
lea addresses_WC+0x230d, %r11
nop
sub $58653, %rcx
mov (%r11), %r15w
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
