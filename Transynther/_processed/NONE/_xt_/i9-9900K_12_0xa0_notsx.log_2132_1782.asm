.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x43df, %rdi
nop
nop
nop
nop
nop
sub $53574, %r13
mov (%rdi), %cx
nop
nop
inc %r15
lea addresses_normal_ht+0x39cf, %rdi
nop
nop
nop
nop
nop
and $24545, %rcx
mov (%rdi), %r14
nop
add %r14, %r14
lea addresses_WT_ht+0x10ff7, %rsi
lea addresses_WT_ht+0xc1d3, %rdi
clflush (%rsi)
nop
nop
sub %rbp, %rbp
mov $48, %rcx
rep movsb
nop
nop
nop
cmp $33394, %r13
lea addresses_normal_ht+0x19a77, %rsi
lea addresses_D_ht+0x1d877, %rdi
nop
nop
xor %r12, %r12
mov $109, %rcx
rep movsl
nop
nop
nop
and $46305, %r14
lea addresses_A_ht+0x7697, %rbp
nop
sub $1812, %rdi
mov (%rbp), %r15d
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0xb01f, %r14
nop
nop
mfence
mov (%r14), %r15
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x1477, %rcx
nop
nop
nop
nop
cmp $1923, %r15
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
inc %rsi
lea addresses_UC_ht+0x8477, %rsi
nop
nop
nop
cmp $18160, %r15
movw $0x6162, (%rsi)
nop
and $44909, %rsi
lea addresses_A_ht+0xe2b7, %rsi
lea addresses_D_ht+0x14fc7, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $6155, %r15
mov $93, %rcx
rep movsl
nop
nop
nop
inc %r14
lea addresses_D_ht+0x14af7, %rsi
lea addresses_WC_ht+0x18267, %rdi
nop
nop
sub $56471, %r15
mov $39, %rcx
rep movsl
nop
nop
nop
nop
and $32010, %rdi
lea addresses_A_ht+0x2397, %r13
nop
and $31036, %r14
movups (%r13), %xmm7
vpextrq $0, %xmm7, %rdi
nop
add $59690, %r15
lea addresses_UC_ht+0x17c77, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rcx), %si
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x16477, %r15
nop
nop
nop
nop
and $13963, %rdi
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x14737, %r13
cmp %rsi, %rsi
mov (%r13), %di
inc %rsi

// Load
lea addresses_WT+0xb177, %r13
nop
nop
sub %r10, %r10
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rdi
nop
add %r13, %r13

// Store
lea addresses_normal+0x7bd7, %r13
sub $4522, %rcx
movl $0x51525354, (%r13)
add $48386, %rcx

// REPMOV
lea addresses_WC+0x7b97, %rsi
lea addresses_RW+0x18af7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp $48092, %r10
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_RW+0x9877, %r13
nop
nop
inc %r10
movb (%r13), %r12b

// Exception!!!
nop
nop
nop
nop
mov (0), %r12
nop
nop
inc %r11

// Store
lea addresses_WT+0x10077, %rsi
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x127d7, %r11
sub $10723, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
inc %r13

// Load
lea addresses_UC+0x10ef7, %r10
nop
nop
nop
nop
nop
cmp $22862, %rcx
mov (%r10), %edi
nop
nop
cmp $19056, %rdi

// Faulty Load
lea addresses_normal+0x1a077, %rcx
nop
nop
nop
dec %rsi
movb (%rcx), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'34': 2132}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
