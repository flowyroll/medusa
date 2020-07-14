.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ced6, %rsi
lea addresses_D_ht+0x8c72, %rdi
nop
dec %r11
mov $101, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_WC_ht+0x15b72, %r12
nop
and $1566, %rdi
movl $0x61626364, (%r12)
xor %rdi, %rdi
lea addresses_A_ht+0x12772, %rsi
lea addresses_WC_ht+0x8ae2, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $37956, %r11
mov $66, %rcx
rep movsq
nop
add $26068, %rdi
lea addresses_WT_ht+0x11872, %rbp
nop
nop
nop
nop
inc %rdi
mov (%rbp), %rcx
nop
add $28751, %rdi
lea addresses_A_ht+0x17b72, %rsi
nop
nop
nop
nop
nop
add $9232, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
sub $45064, %r12
lea addresses_WT_ht+0xa432, %rdi
nop
nop
nop
nop
cmp $1679, %rcx
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rdx
nop
add %rdx, %rdx
lea addresses_A_ht+0xc2a6, %rsi
lea addresses_WC_ht+0x112d2, %rdi
clflush (%rdi)
nop
sub %r11, %r11
mov $87, %rcx
rep movsw
xor $6383, %r12
lea addresses_normal_ht+0x10af2, %rbp
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %rbp
movntdq %xmm5, (%rbp)
cmp $10261, %rcx
lea addresses_normal_ht+0xd1f6, %r11
nop
xor %rdi, %rdi
mov (%r11), %rdx
cmp $13885, %r12
lea addresses_WC_ht+0x4f54, %rcx
nop
sub %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x289a, %r11
clflush (%r11)
nop
nop
nop
nop
xor $5200, %rcx
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
sub $52710, %rsi
lea addresses_A_ht+0x8fd4, %rsi
lea addresses_WC_ht+0xcf72, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $32, %rcx
rep movsw
xor %rdi, %rdi
lea addresses_WT_ht+0x18ed2, %rsi
lea addresses_WT_ht+0x118b2, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $20, %rcx
rep movsb
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x17bf2, %rsi
lea addresses_WC_ht+0x1439e, %rdi
nop
nop
nop
add %r11, %r11
mov $118, %rcx
rep movsb
nop
nop
xor $56760, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x10bfa, %rsi
lea addresses_RW+0x18b72, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $13, %rcx
rep movsq
nop
nop
inc %r8

// Store
lea addresses_RW+0x18b72, %rcx
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rcx)
nop
cmp %r13, %r13

// Faulty Load
lea addresses_RW+0x18b72, %rcx
nop
nop
cmp %r12, %r12
movb (%rcx), %r8b
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
