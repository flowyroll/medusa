.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7231, %rbx
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
and $685, %rbp
lea addresses_WT_ht+0xec91, %rsi
lea addresses_normal_ht+0xb371, %rdi
nop
add $46965, %rbp
mov $74, %rcx
rep movsq
nop
xor $39394, %rdi
lea addresses_UC_ht+0x105b1, %rbp
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1d631, %r11
nop
nop
nop
xor %rbp, %rbp
movb (%r11), %cl
nop
nop
nop
nop
nop
and $62626, %rcx
lea addresses_WC_ht+0x9331, %rsi
lea addresses_normal_ht+0x1e231, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $75, %rcx
rep movsq
nop
cmp $18225, %rbx
lea addresses_A_ht+0x1b831, %rsi
lea addresses_WT_ht+0x1473d, %rdi
add $19579, %rbp
mov $69, %rcx
rep movsw
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x10a21, %rsi
lea addresses_WC_ht+0x7531, %rdi
and %rbp, %rbp
mov $58, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_A_ht+0xc331, %rsi
lea addresses_WC_ht+0x1ef91, %rdi
nop
sub $41400, %r13
mov $122, %rcx
rep movsb
and $40471, %rsi
lea addresses_D_ht+0x168dd, %rsi
nop
and $493, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rax
push %rsi

// Store
mov $0xeb1, %r10
sub $57938, %rax
movb $0x51, (%r10)
nop
add $43209, %r12

// Load
lea addresses_PSE+0x4ce9, %r11
nop
nop
nop
nop
nop
add $16431, %r10
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
xor $51840, %rsi

// Store
lea addresses_UC+0x19631, %r12
clflush (%r12)
sub $10406, %r13
movl $0x51525354, (%r12)
nop
nop
nop
xor %rax, %rax

// Store
mov $0x811, %r11
nop
nop
dec %rsi
movw $0x5152, (%r11)
add %r10, %r10

// Store
lea addresses_D+0x1105b, %r9
clflush (%r9)
nop
nop
cmp %rax, %rax
movw $0x5152, (%r9)
nop
inc %r9

// Store
lea addresses_WT+0x19ef1, %r11
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
nop
sub $10534, %r13

// Faulty Load
lea addresses_UC+0x19631, %rsi
sub %r12, %r12
vmovntdqa (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'48': 1230, '45': 8781, '00': 11818}
00 45 45 00 00 00 45 00 45 00 00 00 00 45 00 45 45 00 00 00 00 00 00 45 45 00 00 48 45 00 45 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 45 00 45 45 45 00 45 45 45 45 48 00 00 45 00 00 00 00 45 00 45 00 00 45 45 48 00 00 45 00 48 45 00 45 45 45 00 00 45 00 00 00 45 00 45 00 00 48 45 00 00 45 45 00 00 00 45 45 45 45 00 00 00 45 00 00 00 45 45 45 45 45 45 00 00 48 00 00 45 48 00 00 00 00 00 00 45 00 00 45 00 48 00 45 45 45 00 00 00 00 00 00 00 00 00 00 45 48 45 45 00 45 45 45 45 45 00 45 00 00 00 00 48 00 45 00 45 45 45 45 00 00 48 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 48 45 00 45 45 00 00 00 45 00 00 00 45 45 00 48 00 00 45 00 00 45 45 00 00 45 00 45 45 45 00 00 45 45 00 00 00 00 00 00 00 45 00 00 45 45 00 00 45 00 48 00 00 00 45 00 45 45 00 00 00 48 00 45 45 45 00 00 00 45 45 45 45 00 45 45 45 00 45 00 48 45 45 00 00 00 00 00 45 00 45 00 00 00 45 45 00 45 00 00 45 45 00 00 45 00 00 45 45 00 45 00 45 45 00 00 45 45 00 00 00 45 00 00 45 00 45 45 00 00 00 45 00 00 00 00 45 45 00 45 00 45 45 00 00 00 45 00 45 45 45 45 00 00 00 00 00 45 00 45 45 00 00 00 45 45 45 00 45 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 45 45 45 45 45 45 00 45 45 00 00 45 45 48 00 45 45 45 00 00 45 00 00 45 00 45 00 45 48 45 45 00 45 00 45 45 45 48 00 45 00 48 45 00 00 00 00 00 45 00 48 45 00 45 00 45 45 00 00 00 00 00 00 00 45 00 45 45 45 00 00 45 45 45 45 45 00 00 00 00 45 45 00 00 00 00 45 00 00 45 45 45 45 45 00 00 45 45 45 00 00 45 00 45 48 00 00 00 45 00 45 45 48 45 00 00 00 00 45 00 45 00 00 45 45 45 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 45 45 45 48 45 45 48 48 00 45 00 00 00 00 00 00 45 00 00 00 48 45 45 45 45 00 45 45 45 00 00 00 45 48 45 00 00 00 00 00 45 45 45 45 00 00 45 45 00 00 45 00 00 45 45 00 45 45 45 00 00 00 00 00 00 45 00 45 45 45 45 45 00 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 00 48 00 00 45 00 45 00 45 45 45 00 45 00 45 00 00 45 00 00 00 00 45 48 48 45 45 45 00 00 00 45 00 45 00 45 45 45 45 00 00 45 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 48 45 00 00 00 45 00 45 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 45 48 00 45 00 00 45 45 45 45 00 00 45 45 45 45 00 48 00 45 00 00 45 45 48 00 00 00 00 45 00 45 45 00 45 48 45 45 45 00 45 48 45 48 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 48 45 00 00 45 00 00 00 45 00 00 00 45 48 45 00 00 45 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 45 45 45 45 45 00 45 00 00 00 45 00 45 45 00 00 45 45 00 00 45 00 00 00 45 00 00 45 00 45 45 00 45 45 00 45 00 45 00 00 00 00 45 45 45 00 45 00 00 00 45 45 45 00 00 45 00 00 00 00 00 45 45 45 45 00 45 00 48 00 00 00 00 00 00 00 45 00 00 48 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 45 00 45 45 45 48 00 00 00 00 45 00 00 00 48 00 00 48 00 00 00 00 45 45 00 00 45 00 00 45 00 48 00 00 48 45 45 48 00 45 45 45 00 45 45 00 48 45 00 00 00 00 00 00 45 45 00 00 45 48 00 00 45 00 45 00 00 00 00 00 00 00 45 45 45 45 45 00 45 00 45 45 45
*/
