.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1eb00, %r8
nop
sub $8472, %rbp
movw $0x6162, (%r8)
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x11580, %rsi
lea addresses_A_ht+0xf780, %rdi
xor %r14, %r14
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x3580, %rsi
lea addresses_D_ht+0x1e3ac, %rdi
nop
sub $60490, %rax
mov $85, %rcx
rep movsw
nop
add %rbp, %rbp
lea addresses_WT_ht+0x380, %rsi
lea addresses_D_ht+0x141f8, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $88, %rcx
rep movsw
sub $33612, %r14
lea addresses_WC_ht+0x12f80, %rsi
lea addresses_D_ht+0x13b50, %rdi
nop
nop
nop
mfence
mov $39, %rcx
rep movsl
nop
xor $60271, %r8
lea addresses_D_ht+0x178f6, %rcx
nop
nop
nop
sub $14721, %r8
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x11b80, %rsi
lea addresses_A_ht+0x1b5a4, %rdi
nop
nop
nop
nop
sub $60530, %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x16510, %rsi
lea addresses_WT_ht+0x13c88, %rdi
nop
nop
nop
nop
xor $31205, %rbp
mov $126, %rcx
rep movsw
nop
nop
xor $59150, %rcx
lea addresses_UC_ht+0x18780, %rsi
lea addresses_D_ht+0x10e80, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %rbp, %rbp
mov $4, %rcx
rep movsq
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x8f80, %rcx
nop
nop
nop
sub %r14, %r14
mov (%rcx), %rsi
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x14590, %r8
nop
nop
nop
nop
nop
and $32467, %rax
movl $0x61626364, (%r8)
nop
nop
nop
add $55231, %rax
lea addresses_WT_ht+0x1d4a0, %rsi
lea addresses_D_ht+0x9e80, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $63, %rcx
rep movsq
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1b580, %rdi
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1408e, %r15
nop
nop
nop
add %r8, %r8
movb $0x61, (%r15)
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Load
lea addresses_WC+0x14280, %rdx
nop
nop
cmp %r15, %r15
movb (%rdx), %r9b
nop
nop
nop
nop
cmp $39033, %r15

// Store
lea addresses_US+0xfd80, %rax
nop
nop
nop
add $25863, %rdi
movl $0x51525354, (%rax)
nop
nop
add %rbp, %rbp

// Store
lea addresses_normal+0x19560, %r9
nop
nop
nop
nop
add $33034, %r14
movb $0x51, (%r9)
nop
add $14477, %rdi

// Store
lea addresses_WT+0x15560, %r9
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r9)
and $61583, %rdi

// Store
lea addresses_UC+0x2980, %r9
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_RW+0x7980, %rax
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
cmp %r15, %r15

// Faulty Load
mov $0x42e6e40000000180, %rdi
clflush (%rdi)
nop
nop
add $9435, %rax
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 331, '49': 60, '48': 5, '44': 2}
00 00 00 00 00 49 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 48 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 48 00 00 49 00 00 00 00 49 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 49 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 49 00 00 00 00 00 00 49 00 00 48 49 00 00 00 00 00 48 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 44 49 00 49 00 00 49 00 00 00 00 00 44 00 49 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00
*/
