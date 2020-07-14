.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x36d, %rdi
nop
nop
nop
nop
sub $31668, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
sub $38604, %rdx
lea addresses_WC_ht+0x776d, %rdi
nop
nop
nop
nop
xor $23930, %r11
mov (%rdi), %r15w
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x1827d, %r11
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r11)
nop
nop
sub %r11, %r11
lea addresses_A_ht+0xa90d, %rsi
lea addresses_WC_ht+0x1ef6d, %rdi
nop
nop
sub $38147, %r11
mov $83, %rcx
rep movsl
nop
inc %r15
lea addresses_UC_ht+0x976d, %rsi
lea addresses_WT_ht+0x87d, %rdi
nop
nop
nop
and %r15, %r15
mov $121, %rcx
rep movsl
nop
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_D+0x2d6d, %r9
nop
nop
cmp $43880, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
nop
xor $14980, %r12

// Load
mov $0x7a37c800000007b5, %r9
and %r8, %r8
mov (%r9), %r10w
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x1612d, %rbx
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rbx)
sub $19548, %r9

// Store
lea addresses_US+0x1596d, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $14519, %r12
movb $0x51, (%rbx)
nop
nop
inc %rbx

// Faulty Load
lea addresses_normal+0x476d, %r12
nop
nop
cmp $33135, %rdi
movb (%r12), %r15b
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'34': 120}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
