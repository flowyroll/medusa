.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19510, %r8
nop
nop
nop
nop
nop
sub $42689, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%r8)
and %r8, %r8
lea addresses_WC_ht+0x1dc58, %rbp
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x9610, %rbp
nop
nop
nop
xor %rcx, %rcx
mov (%rbp), %esi
nop
nop
nop
xor $31003, %r14
lea addresses_WT_ht+0x17018, %rbp
nop
nop
nop
nop
inc %r15
movw $0x6162, (%rbp)
nop
cmp $6922, %rbp
lea addresses_WT_ht+0x98ec, %rsi
lea addresses_normal_ht+0x103f0, %rdi
nop
and $4836, %r9
mov $14, %rcx
rep movsb
xor $31888, %rsi
lea addresses_D_ht+0xa71a, %rsi
lea addresses_WC_ht+0x3e9a, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $3, %rcx
rep movsb
and %r15, %r15
lea addresses_WC_ht+0x1935a, %r15
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x118db, %r15
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
cmp $42598, %r8
lea addresses_UC_ht+0x1962e, %rsi
lea addresses_A_ht+0x14a50, %rdi
nop
add %r8, %r8
mov $116, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x16cbf, %rsi
lea addresses_normal_ht+0x17010, %rdi
nop
nop
cmp %r15, %r15
mov $27, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x9609, %rcx
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x14790, %r8
nop
nop
nop
nop
sub $9326, %r14
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
cmp $24592, %r14
lea addresses_normal_ht+0xaf50, %r15
xor $6578, %rbp
mov (%r15), %r8w
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x13310, %rsi
lea addresses_WC_ht+0x14410, %rdi
nop
nop
nop
nop
nop
and $44811, %r8
mov $69, %rcx
rep movsb
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x1b810, %rdi
nop
nop
nop
nop
nop
xor $32814, %rbp
mov (%rdi), %rcx
nop
cmp $63395, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xfb10, %r9
nop
nop
nop
nop
dec %rax
movb $0x51, (%r9)
nop
sub %r8, %r8

// Store
lea addresses_UC+0xbc10, %r14
nop
nop
nop
nop
nop
sub $39671, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
and %r8, %r8

// Store
lea addresses_UC+0x12010, %r14
nop
nop
nop
add $7181, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
xor $35226, %r9

// REPMOV
lea addresses_WC+0x16400, %rsi
lea addresses_RW+0x1d010, %rdi
nop
nop
xor %r8, %r8
mov $76, %rcx
rep movsw
nop
nop
nop
nop
nop
add $61289, %rax

// Faulty Load
lea addresses_normal+0xc810, %r8
sub $41793, %rdi
mov (%r8), %r9w
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 5, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
