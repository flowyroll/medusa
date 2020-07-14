.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1622, %rsi
lea addresses_WC_ht+0x19f62, %rdi
clflush (%rdi)
nop
lfence
mov $112, %rcx
rep movsw
nop
sub $10620, %r15
lea addresses_D_ht+0x262, %r10
nop
nop
nop
nop
nop
sub $421, %r11
mov (%r10), %r15w
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xe0d5, %rcx
clflush (%rcx)
nop
nop
add $30784, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x3e2, %r15
nop
nop
add $18289, %rdi
mov (%r15), %si
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x18efa, %rsi
nop
add %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
cmp $17425, %r11
lea addresses_WT_ht+0x16762, %rdi
cmp %rsi, %rsi
mov (%rdi), %r15
nop
nop
nop
and $40192, %r11
lea addresses_WT_ht+0x103b2, %r11
clflush (%r11)
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x3662, %r11
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x123c2, %rdi
nop
cmp %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x559a, %rsi
lea addresses_D_ht+0x406, %rdi
nop
nop
nop
nop
nop
sub $50358, %r11
mov $1, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xed62, %r10
nop
nop
nop
nop
and $58705, %r15
movb (%r10), %r11b
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1bf62, %r15
and $12528, %rcx
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xa6d2, %r11
nop
dec %rdi
movb $0x61, (%r11)
nop
xor $3138, %rcx
lea addresses_WC_ht+0x182e3, %rsi
nop
nop
nop
and $64112, %r15
mov (%rsi), %edi
nop
nop
nop
cmp $35615, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x62fe, %rcx
nop
nop
nop
xor $6540, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
sub $28460, %rbp

// Store
lea addresses_RW+0xd3dc, %r12
nop
nop
nop
inc %r14
movl $0x51525354, (%r12)
cmp %rbx, %rbx

// Store
lea addresses_WT+0x7cd2, %r12
nop
nop
and $41262, %rbp
movb $0x51, (%r12)
nop
xor %r12, %r12

// Store
mov $0x7b89010000000562, %r12
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
add $13644, %rbp

// Store
lea addresses_UC+0x1fb62, %r9
nop
nop
nop
nop
and $48587, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
add $10618, %rbx

// Store
lea addresses_PSE+0x18de2, %rbp
nop
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movntdq %xmm7, (%rbp)
cmp %rbx, %rbx

// Load
mov $0xdc2, %r12
nop
cmp $56211, %rsi
movb (%r12), %r14b
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0xff62, %r14
nop
and $50070, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
dec %rbp

// Load
lea addresses_normal+0x5d62, %r12
nop
nop
nop
and %r9, %r9
movb (%r12), %bl
nop
nop
nop
nop
nop
and $60210, %rbp

// Faulty Load
lea addresses_WT+0x5f62, %rsi
nop
nop
nop
nop
xor %r9, %r9
mov (%rsi), %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'58': 16864}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
