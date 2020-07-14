.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x71c, %rsi
lea addresses_WC_ht+0xe11c, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $112, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_A_ht+0xe2cc, %r9
clflush (%r9)
nop
nop
and $35130, %rsi
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm0
vpextrq $0, %xmm0, %rdi
add $56791, %r9
lea addresses_A_ht+0x859c, %rsi
lea addresses_normal_ht+0x54b4, %rdi
nop
add %rax, %rax
mov $123, %rcx
rep movsl
nop
and %rax, %rax
lea addresses_normal_ht+0xf15c, %rsi
lea addresses_D_ht+0x1a7a4, %rdi
clflush (%rdi)
nop
nop
nop
inc %r15
mov $61, %rcx
rep movsw
nop
nop
dec %rbp
lea addresses_WT_ht+0x1a39c, %rsi
lea addresses_WT_ht+0x811c, %rdi
clflush (%rdi)
nop
and $50364, %r11
mov $2, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1611c, %rsi
nop
nop
nop
cmp $9950, %r15
movw $0x6162, (%rsi)
nop
nop
nop
inc %r15
lea addresses_UC_ht+0xadf4, %rsi
lea addresses_D_ht+0x19d08, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r9, %r9
mov $45, %rcx
rep movsw
nop
inc %r9
lea addresses_A_ht+0xa51c, %rsi
lea addresses_D_ht+0x31c, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $46, %rcx
rep movsq
cmp %r11, %r11
lea addresses_WC_ht+0xb31c, %rsi
lea addresses_WT_ht+0x16fa4, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $91, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xb15c, %rbp
nop
nop
and %rdi, %rdi
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
and $32233, %rax
lea addresses_A_ht+0xd590, %rsi
nop
nop
cmp $5305, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $31392, %rdi
lea addresses_UC_ht+0x497c, %rax
nop
nop
nop
sub %rdi, %rdi
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
xor $47997, %rdi
lea addresses_UC_ht+0x1e91c, %rbp
nop
nop
nop
sub $56735, %rcx
mov (%rbp), %rsi
nop
nop
nop
sub $59389, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rdx

// Store
lea addresses_A+0x1a7ea, %r11
clflush (%r11)
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x92e8, %r14
add $48197, %r10
movb $0x51, (%r14)
inc %r12

// Store
lea addresses_WT+0xdebc, %r12
nop
nop
cmp $48558, %r11
movw $0x5152, (%r12)
nop
nop
nop
xor $13607, %rbp

// Faulty Load
lea addresses_WT+0xf91c, %r10
add %r11, %r11
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
