.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc975, %rbp
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
add $19834, %r12
lea addresses_D_ht+0xf1f2, %r15
nop
inc %rbp
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x14df2, %rsi
lea addresses_normal_ht+0x72f2, %rdi
nop
nop
nop
nop
xor $33892, %rax
mov $67, %rcx
rep movsw
sub $17751, %rdi
lea addresses_D_ht+0x4d72, %rsi
lea addresses_A_ht+0xa1f2, %rdi
clflush (%rdi)
nop
xor %r15, %r15
mov $9, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x173d2, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
add $14761, %rdi
lea addresses_WT_ht+0x1cbf2, %rsi
lea addresses_WC_ht+0x459d, %rdi
clflush (%rdi)
nop
nop
nop
inc %r13
mov $68, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_A_ht+0x81f2, %rsi
lea addresses_D_ht+0x4df2, %rdi
clflush (%rsi)
nop
nop
mfence
mov $127, %rcx
rep movsw
nop
and %r12, %r12
lea addresses_D_ht+0x2772, %rax
nop
sub %rcx, %rcx
movb $0x61, (%rax)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x7df2, %r13
clflush (%r13)
nop
nop
xor $38642, %rcx
mov (%r13), %rbp
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x170f2, %rbp
nop
nop
nop
nop
sub %rax, %rax
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
and $5533, %rbp
lea addresses_UC_ht+0x102ce, %rsi
lea addresses_WC_ht+0xf372, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $73, %rcx
rep movsq
cmp %r15, %r15
lea addresses_D_ht+0x1df2, %rdi
dec %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Load
lea addresses_D+0x14bb2, %r15
nop
nop
nop
and $41321, %rdi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
nop
cmp $63772, %rax

// Load
lea addresses_US+0x163f2, %rsi
xor $42682, %r13
mov (%rsi), %di
nop
nop
nop
nop
cmp $33272, %r11

// Store
lea addresses_US+0xb9f2, %r15
nop
nop
xor $58719, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
add $9392, %r11

// Store
lea addresses_WT+0x119f2, %r9
clflush (%r9)
nop
nop
and $58036, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_RW+0x1a5f2, %rax
nop
nop
nop
nop
nop
sub $24867, %rdi
movntdqa (%rax), %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
