.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1330, %rbx
nop
nop
xor $21249, %rsi
mov (%rbx), %edi
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x14af0, %rsi
lea addresses_normal_ht+0x3c40, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r11, %r11
mov $70, %rcx
rep movsb
nop
xor %rax, %rax
lea addresses_A_ht+0x12a40, %rsi
lea addresses_WC_ht+0x1aa2, %rdi
nop
nop
dec %r9
mov $40, %rcx
rep movsw
nop
sub $23415, %r9
lea addresses_normal_ht+0x9620, %rsi
lea addresses_normal_ht+0x9f30, %rdi
nop
nop
nop
nop
nop
xor $44438, %r13
mov $108, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xb330, %rsi
lea addresses_UC_ht+0x10730, %rdi
add %r9, %r9
mov $76, %rcx
rep movsw
lfence
lea addresses_D_ht+0x2930, %rcx
sub $37357, %rdi
movw $0x6162, (%rcx)
nop
nop
xor $65505, %r9
lea addresses_WC_ht+0x13340, %rcx
nop
nop
cmp %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
add $42542, %r9
lea addresses_D_ht+0x3fe8, %rsi
lea addresses_D_ht+0x1bf30, %rdi
nop
nop
nop
xor %rax, %rax
mov $35, %rcx
rep movsb
nop
nop
nop
nop
cmp $25687, %rdi
lea addresses_normal_ht+0x18ff8, %r9
nop
inc %r11
movw $0x6162, (%r9)
nop
dec %r11
lea addresses_D_ht+0x1f30, %rsi
lea addresses_WT_ht+0x9730, %rdi
nop
dec %r9
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $28452, %r11
lea addresses_D_ht+0xec2, %r11
nop
cmp %r9, %r9
mov (%r11), %rdi
cmp $18729, %r9
lea addresses_WT_ht+0x10259, %r11
nop
xor $27625, %rax
movw $0x6162, (%r11)
nop
nop
nop
sub $43831, %r9
lea addresses_WT_ht+0x16e80, %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r13)
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x1c1b0, %rsi
lea addresses_WC_ht+0x4a00, %rdi
nop
nop
nop
sub %rax, %rax
mov $81, %rcx
rep movsq
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x8a30, %rsi
lea addresses_WC_ht+0x1c6d0, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $89, %rcx
rep movsb
nop
nop
nop
xor $40694, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_RW+0x7f30, %rdi
nop
nop
and %r15, %r15
movw $0x5152, (%rdi)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_RW+0x12410, %rbp
nop
nop
nop
xor $4828, %r8
movl $0x51525354, (%rbp)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_US+0x2530, %r8
nop
nop
nop
xor $49055, %r10
movb $0x51, (%r8)
nop
nop
dec %r12

// Store
lea addresses_A+0x5df0, %r12
nop
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
add $49890, %r14

// Store
lea addresses_normal+0xa230, %rbp
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_RW+0x7f30, %r12
nop
nop
cmp %r8, %r8
movb (%r12), %r15b
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'52': 287}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
