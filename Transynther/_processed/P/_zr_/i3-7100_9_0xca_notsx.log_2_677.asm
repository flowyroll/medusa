.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa885, %r11
inc %rax
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x19d8d, %r14
nop
nop
xor %rcx, %rcx
mov (%r14), %esi
nop
nop
xor $35056, %rax
lea addresses_D_ht+0x143df, %rsi
lea addresses_A_ht+0x1de0d, %rdi
nop
nop
nop
nop
nop
and $30112, %r12
mov $123, %rcx
rep movsl
nop
and %rax, %rax
lea addresses_UC_ht+0x6b0d, %rsi
lea addresses_A_ht+0x300d, %rdi
nop
nop
nop
nop
nop
and $11948, %rax
mov $55, %rcx
rep movsq
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1440d, %rcx
nop
xor $65178, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $2645, %rcx
lea addresses_A_ht+0x19e0d, %r12
nop
nop
nop
nop
inc %rsi
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
xor $55908, %rcx
lea addresses_WC_ht+0x1be0d, %rcx
nop
nop
nop
nop
nop
add $44379, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x3b4d, %rsi
lea addresses_D_ht+0x1b3c5, %rdi
clflush (%rdi)
xor %r14, %r14
mov $21, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x15e0d, %rcx
nop
nop
add $29331, %rax
mov (%rcx), %r12w
nop
nop
inc %r11
lea addresses_A_ht+0xa643, %rax
clflush (%rax)
nop
nop
nop
nop
add $24124, %rsi
movb $0x61, (%rax)
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x12559, %r12
nop
nop
nop
nop
nop
sub $57789, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r12)
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0xe0d, %r12
nop
nop
nop
nop
nop
dec %rbp
mov (%r12), %di
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi

// Faulty Load
mov $0xe0d, %r12
nop
nop
add $50123, %r14
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
