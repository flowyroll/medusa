.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x59f2, %rsi
lea addresses_WC_ht+0x1bc3c, %rdi
nop
nop
nop
nop
nop
add $6204, %r12
mov $46, %rcx
rep movsl
nop
nop
lfence
lea addresses_normal_ht+0xf756, %rsi
lea addresses_WC_ht+0x125d8, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $56, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x182ae, %r12
nop
sub %r11, %r11
mov (%r12), %edi
sub %rsi, %rsi
lea addresses_D_ht+0xf3d6, %r11
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r11)
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0xa2f2, %rdx
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
nop
and %rax, %rax

// Load
mov $0x6f2, %r8
nop
inc %rsi
mov (%r8), %rax
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0xe6f2, %rax
cmp %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)

// Exception!!!
nop
mov (0), %rdx
nop
nop
nop
nop
nop
cmp $14291, %rsi

// Faulty Load
lea addresses_WT+0xa2f2, %rax
nop
cmp %rbx, %rbx
mov (%rax), %di
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'58': 62}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
