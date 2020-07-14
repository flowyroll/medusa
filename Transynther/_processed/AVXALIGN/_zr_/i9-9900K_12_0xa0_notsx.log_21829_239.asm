.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x157c5, %rsi
lea addresses_UC_ht+0x7cc5, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $25429, %r12
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x1e585, %r13
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
and $32900, %r8
lea addresses_WT_ht+0x11731, %rcx
nop
dec %rsi
movl $0x61626364, (%rcx)
sub $94, %r15
lea addresses_WT_ht+0xa6c5, %rcx
clflush (%rcx)
and %r12, %r12
movl $0x61626364, (%rcx)
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x16d85, %r12
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1be59, %rsi
lea addresses_WT_ht+0xaddd, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $38, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x108c5, %rsi
lea addresses_normal_ht+0x17185, %rdi
nop
nop
and $62512, %r11
mov $106, %rcx
rep movsw
nop
and $10923, %r8
lea addresses_A_ht+0x145c5, %r8
nop
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor $61623, %r11
lea addresses_D_ht+0x1da1b, %rsi
lea addresses_A_ht+0xa2c5, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r13, %r13
mov $27, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x7720, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r13), %si
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x14325, %r15
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
add %r8, %r8
lea addresses_WC_ht+0xa005, %rsi
nop
nop
nop
nop
nop
cmp $8268, %rcx
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
add $49241, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_WT+0x18dc5, %rcx
nop
nop
sub $57369, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
nop
nop
sub $23212, %r12

// Store
lea addresses_WT+0x17745, %rdi
clflush (%rdi)
dec %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
xor $42071, %rax

// Store
lea addresses_US+0x2aa1, %r12
nop
nop
sub $32903, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movaps %xmm7, (%r12)
nop
nop
nop
sub $6479, %r11

// Store
lea addresses_PSE+0x101b5, %r11
nop
nop
cmp %r8, %r8
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_UC+0x1b2ad, %r14
nop
nop
nop
nop
and $26384, %rdi
movb (%r14), %al
nop
nop
nop
xor $44899, %r11

// Faulty Load
mov $0x8c5, %rax
and $26216, %r12
movntdqa (%rax), %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
