.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16567, %rax
nop
nop
inc %r11
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r8
sub $2808, %rdx
lea addresses_normal_ht+0x12941, %rsi
lea addresses_UC_ht+0x9dc1, %rdi
nop
nop
nop
nop
nop
and $51442, %r15
mov $76, %rcx
rep movsq
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x17cc2, %rax
clflush (%rax)
nop
nop
nop
nop
inc %r8
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r11
dec %r15
lea addresses_WC_ht+0x1941a, %rsi
lea addresses_WT_ht+0xae91, %rdi
nop
nop
nop
nop
nop
cmp $20706, %r15
mov $6, %rcx
rep movsw
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x1c311, %rcx
clflush (%rcx)
nop
nop
nop
xor %rdx, %rdx
movb (%rcx), %al
mfence
lea addresses_UC_ht+0x14a69, %r11
nop
nop
nop
nop
and $37950, %rax
mov (%r11), %r8d
nop
nop
inc %rsi
lea addresses_D_ht+0x8511, %r8
nop
and %rcx, %rcx
mov (%r8), %r15
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x1a7d9, %rdi
nop
dec %rsi
mov (%rdi), %rdx
inc %rax
lea addresses_UC_ht+0x1a611, %rsi
lea addresses_WC_ht+0x13f11, %rdi
nop
nop
nop
cmp $49936, %r8
mov $4, %rcx
rep movsw
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x3a91, %rdi
nop
nop
nop
nop
nop
cmp $46873, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
cmp $54240, %r8
lea addresses_A_ht+0xf099, %r8
nop
nop
cmp %rdx, %rdx
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xe111, %r11
nop
nop
nop
nop
add $21981, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
and %rdi, %rdi
lea addresses_UC_ht+0x12a31, %r11
cmp %rdx, %rdx
movb $0x61, (%r11)
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x68b1, %rsi
lea addresses_normal_ht+0x9cc1, %rdi
nop
nop
nop
inc %r11
mov $68, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_WT+0x1c311, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%r13)
nop
and $34366, %rax

// Load
lea addresses_A+0x8e91, %r12
inc %rbp
mov (%r12), %r15w
sub %r8, %r8

// Store
lea addresses_WC+0x19b11, %rbp
dec %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovntdq %ymm6, (%rbp)
xor $16965, %r12

// Store
lea addresses_WC+0x8911, %r13
nop
nop
xor $18158, %rax
movl $0x51525354, (%r13)
nop
and $62699, %r13

// Store
lea addresses_A+0x2d11, %rbp
nop
nop
nop
nop
nop
xor $35780, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rbp)
inc %r15

// Faulty Load
lea addresses_WT+0x1b311, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add $64688, %rbp
movb (%rax), %r12b
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'39': 373}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
