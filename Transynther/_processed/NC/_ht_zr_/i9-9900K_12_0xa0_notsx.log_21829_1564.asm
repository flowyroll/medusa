.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12ba7, %rsi
lea addresses_A_ht+0xa27f, %rdi
nop
nop
xor %r14, %r14
mov $83, %rcx
rep movsq
nop
nop
and $12526, %rcx
lea addresses_A_ht+0xc7a7, %rbx
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %rbx
movntdq %xmm0, (%rbx)
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x4da7, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %r10, %r10
mov (%r11), %ebx
nop
nop
nop
xor $8463, %r10
lea addresses_WC_ht+0xa3cf, %rsi
lea addresses_WT_ht+0x15e33, %rdi
nop
nop
nop
nop
and $19495, %rdx
mov $81, %rcx
rep movsl
xor $4724, %rbx
lea addresses_normal_ht+0xdaa7, %rsi
lea addresses_D_ht+0x1dfcb, %rdi
nop
nop
nop
sub $14328, %r11
mov $93, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x81a9, %rsi
lea addresses_normal_ht+0x9da7, %rdi
nop
nop
nop
inc %r10
mov $122, %rcx
rep movsl
nop
nop
nop
nop
xor $46258, %r14
lea addresses_A_ht+0x9bff, %rsi
lea addresses_normal_ht+0xc8cf, %rdi
clflush (%rdi)
nop
nop
xor $26423, %rbx
mov $31, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x133a7, %rsi
lea addresses_D_ht+0x17ba7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $21449, %r11
mov $19, %rcx
rep movsb
nop
xor $32319, %r14
lea addresses_UC_ht+0x10da7, %rsi
lea addresses_A_ht+0x13c87, %rdi
nop
xor $50290, %r10
mov $42, %rcx
rep movsw
nop
cmp $25904, %rcx
lea addresses_WT_ht+0x16ba7, %rsi
lea addresses_A_ht+0x13ca7, %rdi
xor %r10, %r10
mov $115, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x79f7, %rbx
nop
add $23784, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x183a7, %rsi
lea addresses_D_ht+0x16a7, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
add $49003, %r11
lea addresses_A_ht+0x179a7, %rcx
nop
nop
nop
nop
nop
add %r10, %r10
movb (%rcx), %dl
nop
nop
sub $17100, %rdi
lea addresses_WC_ht+0x64e7, %rcx
sub $62633, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x153a7, %rdx
nop
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
and $59030, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1fa7, %rsi
lea addresses_A+0x1e267, %rdi
nop
nop
nop
cmp $21107, %r10
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x93a7, %r13
nop
nop
nop
nop
sub $31835, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r13)
add $28915, %r14

// Store
mov $0x110da80000000ba7, %r13
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
nop
nop
and %r13, %r13

// Load
mov $0x561dff00000004a4, %rcx
nop
nop
nop
nop
add $3655, %rsi
movb (%rcx), %r10b
sub %r10, %r10

// Faulty Load
mov $0x110da80000000ba7, %r13
nop
nop
cmp %r11, %r11
vmovups (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'44': 4, '49': 2, '00': 21823}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
