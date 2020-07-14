.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6975, %rsi
lea addresses_D_ht+0x9701, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
add %r13, %r13
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x100ad, %rdi
nop
nop
nop
add $1798, %r12
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r13
cmp %rbx, %rbx
lea addresses_normal_ht+0x19b6d, %r13
nop
nop
nop
nop
inc %r8
mov (%r13), %r12w
nop
nop
nop
nop
add $37452, %r12
lea addresses_A_ht+0xdd2d, %rsi
lea addresses_D_ht+0xe8ed, %rdi
clflush (%rsi)
nop
inc %r13
mov $52, %rcx
rep movsq
add $28859, %r12
lea addresses_A_ht+0x1bf1f, %rsi
nop
dec %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1ea75, %rsi
nop
xor %r13, %r13
movb $0x61, (%rsi)
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_RW+0x13a1f, %r14
nop
inc %r12
mov (%r14), %esi
nop
nop
nop
nop
nop
xor $8448, %rbx

// Store
mov $0x49596d0000000ddd, %r12
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_US+0x1432d, %r12
nop
nop
nop
nop
nop
add %rbx, %rbx
movb (%r12), %r14b
nop
nop
nop
add $50687, %rax

// Store
lea addresses_US+0x1c475, %rbx
nop
nop
nop
and $15598, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x1e92d, %rbx
clflush (%rbx)
and %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
xor $11468, %rbx

// Store
mov $0x49fc88000000092d, %r11
nop
dec %r12
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub $20191, %r14

// Faulty Load
lea addresses_RW+0xb12d, %r12
and $7076, %r11
mov (%r12), %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'32': 164}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
