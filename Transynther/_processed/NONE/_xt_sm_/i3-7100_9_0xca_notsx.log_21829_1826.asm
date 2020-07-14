.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7c08, %rsi
lea addresses_normal_ht+0x7008, %rdi
nop
dec %r13
mov $18, %rcx
rep movsl
nop
and $33824, %r12
lea addresses_WT_ht+0xd9db, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r8), %di
nop
nop
dec %r12
lea addresses_UC_ht+0x1bf38, %rsi
nop
nop
and $643, %r12
mov (%rsi), %ecx
nop
nop
nop
nop
nop
xor $34732, %r12
lea addresses_WT_ht+0x4f38, %r12
nop
nop
nop
nop
add $27622, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r12)
add $34187, %rdi
lea addresses_WT_ht+0x12f8, %rsi
lea addresses_A_ht+0x1dcb8, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $79, %rcx
rep movsw
sub $59287, %rcx
lea addresses_WC_ht+0xd310, %rsi
lea addresses_D_ht+0x1b7d8, %rdi
nop
nop
nop
nop
nop
cmp $32745, %rbp
mov $108, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1a396, %rsi
lea addresses_D_ht+0xda28, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $64942, %r8
lea addresses_WC_ht+0x1191c, %rsi
lea addresses_D_ht+0xecf8, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $57, %rcx
rep movsq
nop
cmp %r8, %r8
lea addresses_normal_ht+0x9e28, %rsi
lea addresses_normal_ht+0x169c8, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $47478, %r15
mov $107, %rcx
rep movsl
nop
nop
dec %r15
lea addresses_D_ht+0x148f8, %rsi
lea addresses_A_ht+0x10cf8, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x84f8, %rsi
nop
nop
nop
sub $1721, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
nop
nop
xor $29369, %rdx

// Store
lea addresses_D+0xdeb8, %r15
clflush (%r15)
nop
nop
add $62451, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0x160f8, %rdx
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_RW+0xdb58, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%rdi), %bl
nop
nop
nop
nop
inc %r9

// Load
lea addresses_normal+0x1bcf8, %r9
nop
nop
nop
nop
nop
sub $56986, %rdx
mov (%r9), %r13
and %r15, %r15

// Store
lea addresses_PSE+0x22d8, %rdx
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
nop
cmp $59974, %r13

// Store
lea addresses_UC+0x1e678, %r13
nop
nop
sub $54974, %r9
movl $0x51525354, (%r13)
nop
nop
lfence

// Store
lea addresses_A+0x1a4d8, %rsi
nop
nop
nop
nop
nop
and $13751, %rbx
movb $0x51, (%rsi)
nop
nop
nop
and $9162, %r15

// Store
lea addresses_D+0x12af8, %rdi
nop
cmp $5547, %rbx
movl $0x51525354, (%rdi)
xor %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x160f8, %r15
nop
nop
nop
nop
nop
dec %r13
mov (%r15), %dx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
