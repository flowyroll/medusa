.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bb56, %rbx
nop
nop
add %rcx, %rcx
movb (%rbx), %r14b
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1ad86, %rax
cmp $33691, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
add $37577, %rax
lea addresses_WT_ht+0x7b36, %rsi
lea addresses_UC_ht+0xdda2, %rdi
add $40500, %r14
mov $37, %rcx
rep movsb
nop
cmp $16337, %rbx
lea addresses_A_ht+0x6dd5, %rax
nop
nop
nop
sub $13875, %r14
movb $0x61, (%rax)
inc %rcx
lea addresses_normal_ht+0x1d546, %rsi
lea addresses_D_ht+0x156a0, %rdi
nop
nop
nop
nop
dec %rax
mov $100, %rcx
rep movsb
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x8f16, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov (%rdi), %r9d
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x5f2e, %rcx
nop
nop
sub $23660, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x17016, %rsi
lea addresses_A_ht+0x4f26, %rdi
nop
nop
nop
nop
nop
xor $7854, %rax
mov $30, %rcx
rep movsb
nop
nop
nop
nop
and $56226, %r9
lea addresses_UC_ht+0x17f2e, %rsi
nop
nop
nop
dec %rbx
mov (%rsi), %r14d
nop
add %rcx, %rcx
lea addresses_UC_ht+0xa1a6, %rax
nop
nop
nop
cmp %r9, %r9
movb (%rax), %cl
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x1dc9e, %r11
clflush (%r11)
nop
sub %rcx, %rcx
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm2
vpextrq $1, %xmm2, %rdi
cmp %rax, %rax
lea addresses_UC_ht+0x5736, %r11
nop
nop
nop
nop
nop
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1e49a, %rsi
nop
sub $42177, %r14
movl $0x61626364, (%rsi)
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x88ca, %rsi
lea addresses_A_ht+0x528d, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $80, %rcx
rep movsq
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x12826, %rsi
add $39186, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0xc97f, %rsi
nop
xor $49414, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
add $23799, %r10

// Store
lea addresses_D+0x106aa, %rdx
xor %r14, %r14
movb $0x51, (%rdx)
and $56259, %rbp

// Store
lea addresses_WT+0x1f74e, %rdx
dec %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
add $16243, %r10

// Store
lea addresses_UC+0x1d426, %r14
nop
xor $19107, %rbp
movw $0x5152, (%r14)
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x6426, %rbp
nop
nop
nop
nop
cmp $55931, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rbp)
sub $7973, %r14

// Store
lea addresses_normal+0x1cfae, %r8
nop
cmp %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub $24116, %r10

// Faulty Load
lea addresses_WC+0x6426, %r8
nop
nop
nop
cmp %r14, %r14
vmovaps (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 1650}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
