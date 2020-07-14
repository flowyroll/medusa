.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x176de, %r8
nop
nop
nop
nop
xor $33039, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
sub $47330, %rsi
lea addresses_WC_ht+0x8e9e, %rcx
nop
sub $22915, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x949e, %rsi
lea addresses_D_ht+0x1639e, %rdi
clflush (%rdi)
nop
nop
cmp %r8, %r8
mov $102, %rcx
rep movsw
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xbd2c, %rsi
lea addresses_UC_ht+0x1549e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
and %r15, %r15
mov $83, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x1331e, %rcx
nop
nop
nop
nop
lfence
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
sub $21237, %r15
lea addresses_D_ht+0x549e, %r8
clflush (%r8)
nop
nop
dec %rax
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
xor $30404, %rsi
lea addresses_WC_ht+0xe15e, %rdi
nop
sub %rdx, %rdx
movb $0x61, (%rdi)
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1483e, %rsi
lea addresses_WT_ht+0x1a0e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $68, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1bade, %rdx
nop
nop
sub %rax, %rax
movb $0x61, (%rdx)
nop
nop
xor $18084, %r10
lea addresses_normal_ht+0x928e, %rsi
lea addresses_A_ht+0x1069e, %rdi
nop
cmp %rdx, %rdx
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
and $26681, %rdi
lea addresses_UC_ht+0x31dc, %rax
nop
nop
nop
xor %r8, %r8
movb $0x61, (%rax)
nop
nop
nop
xor $23271, %r8
lea addresses_WT_ht+0x7d1e, %r8
nop
nop
nop
nop
nop
xor %rax, %rax
mov (%r8), %edx
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x2e9e, %rsi
lea addresses_normal_ht+0x1d446, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $41, %rcx
rep movsw
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x69e, %r8
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
nop
add $2116, %r10

// REPMOV
lea addresses_D+0x13d0c, %rsi
lea addresses_UC+0xe09e, %rdi
and $44655, %r10
mov $6, %rcx
rep movsq
nop
nop
and $26713, %r14

// Load
lea addresses_RW+0x1bf9e, %r8
nop
nop
nop
nop
xor $3519, %rax
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rcx
xor %rdi, %rdi

// REPMOV
lea addresses_RW+0x269e, %rsi
lea addresses_UC+0x1578e, %rdi
nop
nop
sub $50201, %r10
mov $69, %rcx
rep movsw
nop
add %rdi, %rdi

// Store
lea addresses_UC+0xce1e, %rax
add $18449, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rax)
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x269e, %rsi
sub %rax, %rax
movb (%rsi), %r8b
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
