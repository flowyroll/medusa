.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1db57, %rdi
nop
nop
nop
sub %r15, %r15
movb (%rdi), %r8b
nop
inc %r8
lea addresses_normal_ht+0x1bf5f, %rdx
nop
nop
nop
and $37239, %r9
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x1cc6b, %rsi
lea addresses_A_ht+0xc297, %rdi
nop
nop
nop
sub $24863, %rdx
mov $16, %rcx
rep movsb
nop
nop
nop
nop
and $19639, %r15
lea addresses_D_ht+0x16f57, %rsi
lea addresses_WT_ht+0x1b597, %rdi
nop
nop
nop
sub $2464, %r15
mov $73, %rcx
rep movsl
nop
nop
and $12245, %r9
lea addresses_WC_ht+0x150d7, %rdi
nop
nop
cmp $34847, %r15
movb (%rdi), %cl
nop
nop
nop
add $46566, %rcx
lea addresses_UC_ht+0xd297, %rsi
lea addresses_WC_ht+0x13997, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $82, %rcx
rep movsq
nop
nop
add $36387, %r9
lea addresses_normal_ht+0x1a52f, %rdx
nop
nop
nop
cmp $7768, %rsi
movb $0x61, (%rdx)
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x2d97, %r11
nop
nop
nop
nop
nop
mfence
mov (%r11), %rdi
nop
nop
nop
nop
nop
and $8926, %r9
lea addresses_WT_ht+0x6c07, %r9
nop
nop
nop
inc %rdi
movl $0x61626364, (%r9)
nop
nop
and $37880, %rcx
lea addresses_A_ht+0x34b7, %rsi
and %r11, %r11
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x126ab, %rsi
lea addresses_A_ht+0xed97, %rdi
nop
nop
inc %r15
mov $30, %rcx
rep movsq
nop
nop
nop
and $65191, %rcx
lea addresses_UC_ht+0x9d17, %r8
clflush (%r8)
nop
nop
and %rdi, %rdi
movb (%r8), %r15b
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1117, %rsi
lea addresses_WT+0x7597, %rdi
nop
nop
sub $45151, %r10
mov $123, %rcx
rep movsl
sub %rdi, %rdi

// Store
lea addresses_WC+0x11c37, %rdi
nop
inc %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
and $22693, %rdi

// Store
lea addresses_D+0x15bd7, %rcx
nop
nop
nop
sub $15193, %rdx
movl $0x51525354, (%rcx)
nop
and $10309, %r8

// Store
lea addresses_WT+0x1b997, %rcx
clflush (%rcx)
nop
and %r12, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_WT+0x3197, %rdx
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rdx)
nop
and %rdi, %rdi

// REPMOV
lea addresses_UC+0x1099f, %rsi
lea addresses_A+0x18817, %rdi
nop
xor %r15, %r15
mov $33, %rcx
rep movsl
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_WC+0x1c597, %r10
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_WT+0x7597, %r10
nop
nop
nop
nop
xor $23358, %rcx
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
