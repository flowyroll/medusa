.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb4a7, %rsi
lea addresses_D_ht+0x15d4b, %rdi
clflush (%rsi)
clflush (%rdi)
sub $42907, %r12
mov $126, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $1749, %rdx
lea addresses_WC_ht+0x19f55, %rsi
lea addresses_normal_ht+0x17127, %rdi
nop
xor %r12, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x18373, %rsi
lea addresses_WC_ht+0x1c5ff, %rdi
nop
and %r15, %r15
mov $124, %rcx
rep movsb
add %rdx, %rdx
lea addresses_UC_ht+0x1bb1b, %rsi
lea addresses_WC_ht+0x15577, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x92bf, %rcx
nop
cmp $9886, %r11
mov (%rcx), %r12d
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x7b58, %rsi
lea addresses_normal_ht+0x1337, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $20, %rcx
rep movsl
xor $3837, %r12
lea addresses_A_ht+0x148c7, %rdx
cmp %r12, %r12
movb (%rdx), %r15b
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1a427, %rsi
clflush (%rsi)
nop
nop
add $6385, %r11
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1bbba, %r12
cmp $14401, %r11
mov (%r12), %cx
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x5e60, %rsi
lea addresses_WC_ht+0x16c2f, %rdi
clflush (%rdi)
nop
nop
nop
cmp $45684, %r11
mov $13, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x3621, %rsi
nop
and %r12, %r12
movb (%rsi), %r15b
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x18427, %rsi
nop
nop
add $2707, %r11
mov (%rsi), %ecx
nop
nop
nop
cmp $36867, %r15
lea addresses_UC_ht+0x1be27, %rdx
nop
nop
add $32442, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x48a7, %rdi
nop
nop
cmp $60518, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rdi)
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1ea27, %r10
nop
nop
sub $22088, %rbp
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
add $43264, %r10

// REPMOV
lea addresses_RW+0x6452, %rsi
lea addresses_D+0xbc27, %rdi
nop
nop
nop
nop
sub $50432, %rdx
mov $68, %rcx
rep movsl
xor %r15, %r15

// Store
lea addresses_D+0xbc27, %rsi
nop
and %r10, %r10
movb $0x51, (%rsi)
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0xbc27, %rcx
nop
nop
and %r12, %r12
movb (%rcx), %r10b
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'51': 21639, '32': 190}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 32 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
