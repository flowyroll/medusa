.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x128c0, %rdi
nop
nop
nop
dec %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x56c0, %rsi
lea addresses_D_ht+0x144c0, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xbc0a, %r9
nop
nop
nop
nop
nop
xor $64268, %r13
mov (%r9), %r10
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x174c0, %rsi
lea addresses_UC_ht+0x60c0, %rdi
nop
nop
nop
nop
nop
and $30518, %r11
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $45604, %r10
lea addresses_D_ht+0x178c0, %rdi
nop
nop
nop
nop
cmp $33430, %rcx
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
add $60987, %r10
lea addresses_A_ht+0x6140, %rdi
nop
nop
xor $31152, %r13
movb $0x61, (%rdi)
nop
add %r10, %r10
lea addresses_UC_ht+0x1c6c0, %rsi
lea addresses_A_ht+0xeec0, %rdi
clflush (%rsi)
and %rdx, %rdx
mov $6, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $39793, %r13
lea addresses_WT_ht+0x156c0, %r10
nop
nop
nop
dec %r11
mov (%r10), %r9d
nop
nop
nop
nop
add $29142, %rsi
lea addresses_normal_ht+0x13e7c, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
nop
and $53889, %rsi
lea addresses_UC_ht+0x1240, %rsi
lea addresses_D_ht+0x169c0, %rdi
nop
nop
nop
nop
dec %r9
mov $108, %rcx
rep movsl
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x19fd4, %r11
clflush (%r11)
inc %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
inc %r13
lea addresses_A_ht+0x1859e, %r11
nop
cmp $30778, %r9
movups (%r11), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x95c0, %rdx
nop
xor %r9, %r9
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
and $48557, %rcx
lea addresses_normal_ht+0x1b720, %rsi
nop
nop
xor $41920, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rsi)
nop
xor %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x142c0, %rsi
lea addresses_D+0x5e40, %rdi
nop
nop
add $19428, %r12
mov $30, %rcx
rep movsw
sub $33952, %rdi

// REPMOV
lea addresses_WT+0xa5c8, %rsi
lea addresses_PSE+0x1c0c0, %rdi
sub %r9, %r9
mov $9, %rcx
rep movsw
add $37458, %r12

// Store
lea addresses_normal+0x1bd78, %rcx
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
and $50319, %r8

// Store
lea addresses_WT+0x21af, %r8
nop
nop
nop
nop
add %r10, %r10
movb $0x51, (%r8)
nop
nop
nop
mfence

// Load
lea addresses_PSE+0x1743c, %r12
nop
nop
inc %rcx
mov (%r12), %r10d
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_UC+0x14486, %rcx
nop
nop
nop
nop
inc %r12
movl $0x51525354, (%rcx)
nop
nop
and $11877, %r8

// Load
lea addresses_PSE+0x1c0c0, %rcx
nop
nop
nop
lfence
mov (%rcx), %r9w
nop
nop
cmp %r10, %r10

// Load
lea addresses_D+0x1e0c0, %rdx
nop
nop
nop
cmp %r9, %r9
mov (%rdx), %esi
nop
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
lea addresses_PSE+0x1c0c0, %rsi
nop
nop
nop
nop
nop
dec %r12
mov (%rsi), %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': True, 'same': True, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
