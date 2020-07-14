.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb008, %rsi
lea addresses_WC_ht+0x19c88, %rdi
inc %rax
mov $36, %rcx
rep movsq
nop
nop
nop
xor $57139, %rax
lea addresses_D_ht+0x16608, %rdx
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
xor $55534, %rsi
lea addresses_WT_ht+0xa0c8, %rsi
lea addresses_A_ht+0x13114, %rdi
xor %r15, %r15
mov $73, %rcx
rep movsl
nop
nop
nop
nop
xor $8630, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x2008, %rsi
lea addresses_RW+0x104a8, %rdi
nop
nop
dec %r13
mov $105, %rcx
rep movsq
nop
nop
nop
inc %rsi

// Load
lea addresses_WC+0x1e3c8, %r13
inc %rax
mov (%r13), %edi
nop
nop
nop
add $8813, %rbp

// Load
lea addresses_A+0x11ea0, %rbp
nop
nop
nop
nop
nop
add %r11, %r11
mov (%rbp), %r13
nop
nop
nop
sub $63774, %r11

// Store
lea addresses_UC+0x1b08, %rsi
clflush (%rsi)
nop
add $16871, %rax
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
and %r11, %r11

// REPMOV
lea addresses_UC+0x16b08, %rsi
lea addresses_UC+0x1b08, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $18, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_UC+0x1b08, %r8
add $41443, %rax
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rdi
sub $1032, %r13

// Store
lea addresses_normal+0x1e008, %rcx
nop
nop
inc %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
add $4840, %rbp

// Store
mov $0x57831d0000000448, %rdi
nop
nop
nop
nop
nop
cmp $10862, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor $11308, %rcx

// Load
lea addresses_UC+0x1b08, %r8
nop
sub %r13, %r13
movb (%r8), %cl
nop
nop
nop
nop
nop
sub $47004, %r8

// Store
lea addresses_A+0x18b08, %rbp
nop
nop
nop
xor $29182, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbp)
inc %rsi

// Store
mov $0x1f0, %rsi
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_RW+0x6008, %r8
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r8), %r13b

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0xb56a, %rdi
nop
cmp %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
add %rsi, %rsi

// Store
lea addresses_US+0x5c48, %rdi
nop
nop
nop
xor $62924, %rsi
movb $0x51, (%rdi)

// Exception!!!
nop
nop
nop
nop
xor %rcx, %rcx
div %rcx
nop
nop
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_WC+0x1f988, %rdi
nop
nop
and $31066, %rax
movb (%rdi), %r13b
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_UC+0x1b08, %rdi
cmp %rsi, %rsi
mov (%rdi), %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'00': 1}
00
*/
