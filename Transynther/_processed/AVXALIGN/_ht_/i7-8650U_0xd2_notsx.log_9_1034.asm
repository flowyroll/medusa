.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xd859, %rdx
nop
nop
nop
nop
cmp %rax, %rax
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x18759, %rsi
lea addresses_UC_ht+0xd3b4, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $30, %rcx
rep movsb
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x14559, %rax
nop
lfence
mov (%rax), %r13w
and $22373, %r13
lea addresses_WT_ht+0xa9c1, %rsi
nop
nop
add %rdx, %rdx
movw $0x6162, (%rsi)
nop
and $59969, %rsi
lea addresses_WT_ht+0x1b739, %rsi
lea addresses_WC_ht+0x706d, %rdi
nop
nop
and $31423, %rbp
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $9926, %rbp
lea addresses_WC_ht+0x103fa, %rsi
lea addresses_A_ht+0xb359, %rdi
nop
nop
inc %r13
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $37824, %rdi
lea addresses_A_ht+0x1c3d9, %rsi
lea addresses_normal_ht+0x14571, %rdi
nop
nop
nop
nop
add $34404, %r9
mov $100, %rcx
rep movsq
nop
xor $62654, %rcx
lea addresses_WT_ht+0x41d1, %rcx
nop
nop
nop
nop
and $3566, %rdi
movb (%rcx), %al
sub $35234, %r9
lea addresses_A_ht+0x15659, %rdi
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdi)
add $39642, %rdx
lea addresses_WC_ht+0x12a59, %r9
clflush (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
nop
add $63934, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1d4c5, %rdi
nop
nop
nop
nop
lfence
movl $0x51525354, (%rdi)
and %rdx, %rdx

// REPMOV
lea addresses_D+0xb6c5, %rsi
lea addresses_WT+0xb391, %rdi
nop
dec %rdx
mov $3, %rcx
rep movsw
nop
cmp $22150, %rax

// Faulty Load
lea addresses_WC+0x11259, %rdi
nop
nop
nop
xor $3741, %rsi
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'45': 9}
45 45 45 45 45 45 45 45 45
*/
