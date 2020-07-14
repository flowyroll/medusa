.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1cc0, %rdx
nop
nop
add %r10, %r10
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %r15
nop
dec %r11
lea addresses_WC_ht+0x958c, %rbp
nop
nop
nop
and %r12, %r12
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x11bcc, %r10
nop
sub %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
xor $46573, %r15
lea addresses_WT_ht+0xdfcc, %rbp
cmp $49571, %rdi
movb (%rbp), %r15b
nop
nop
and $12493, %rbp
lea addresses_WC_ht+0x1dbcc, %r11
nop
dec %r15
movb (%r11), %r10b
lfence
lea addresses_WT_ht+0x64c0, %rsi
lea addresses_normal_ht+0xc53c, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $30, %rcx
rep movsw
nop
nop
nop
nop
sub $15638, %r10
lea addresses_D_ht+0x1188c, %rdi
nop
nop
nop
xor $14676, %rbp
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
add $49271, %r10
lea addresses_WT_ht+0x8f2c, %rbp
and $30947, %rdx
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
sub $57171, %r10
lea addresses_A_ht+0x19b8c, %rsi
lea addresses_D_ht+0x1dcc, %rdi
clflush (%rsi)
nop
cmp %rdx, %rdx
mov $64, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_D_ht+0x851c, %rsi
lea addresses_WT_ht+0x18966, %rdi
and $27361, %rdx
mov $113, %rcx
rep movsq
xor $9293, %rdi
lea addresses_A_ht+0x11bcc, %rcx
nop
cmp %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x6fcc, %r10
nop
nop
add $2811, %rdx
mov (%r10), %rcx
xor $11520, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x13bcc, %rsi
lea addresses_D+0x155bc, %rdi
clflush (%rdi)
nop
nop
nop
inc %r10
mov $118, %rcx
rep movsw
sub %rsi, %rsi

// REPMOV
lea addresses_normal+0x1fdcc, %rsi
lea addresses_A+0x1f624, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $66, %rcx
rep movsq
add %rdx, %rdx

// Store
lea addresses_RW+0xfe4c, %rdi
nop
sub %rbp, %rbp
movb $0x51, (%rdi)
sub %rcx, %rcx

// Store
lea addresses_A+0x173cc, %r14
xor $25778, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r14)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x2cdc, %rdi
sub $18670, %r10
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0xade4, %r14
cmp %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
xor $29149, %r10

// Store
lea addresses_UC+0x1fecc, %rcx
nop
inc %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_normal+0x1e17e, %rsi
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_normal+0x13bcc, %rsi
nop
nop
nop
inc %r10
mov (%rsi), %r14w
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
