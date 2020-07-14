.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd88b, %rax
clflush (%rax)
nop
nop
nop
nop
nop
inc %r8
mov (%rax), %r12w
nop
nop
nop
nop
nop
cmp $43449, %rcx
lea addresses_WC_ht+0x31d3, %rsi
lea addresses_WC_ht+0x5a8b, %rdi
nop
nop
and %r11, %r11
mov $115, %rcx
rep movsw
nop
nop
nop
nop
cmp $21519, %rsi
lea addresses_normal_ht+0xe803, %rsi
nop
nop
nop
sub $17786, %r11
movw $0x6162, (%rsi)
and $16048, %rsi
lea addresses_WT_ht+0x69ab, %r12
nop
nop
nop
nop
xor $49980, %rcx
mov (%r12), %r8
add %r12, %r12
lea addresses_normal_ht+0xf17b, %r8
nop
nop
nop
and $40038, %rdi
movb (%r8), %r11b
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x8d0b, %r12
nop
nop
nop
nop
sub %r11, %r11
mov (%r12), %edi
cmp %rdi, %rdi
lea addresses_WC_ht+0x188b, %rdi
nop
nop
add $6064, %r8
mov (%rdi), %ax
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1cc8b, %rsi
lea addresses_A_ht+0x268b, %rdi
nop
nop
add $4175, %r12
mov $48, %rcx
rep movsw
nop
add $48646, %r11
lea addresses_normal_ht+0x508b, %rsi
nop
nop
nop
inc %r8
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
add $17840, %r11
lea addresses_normal_ht+0x20b, %rsi
lea addresses_WT_ht+0x1d89a, %rdi
clflush (%rsi)
nop
add $13802, %r12
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
and $1828, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1098e, %r8
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r8)
nop
nop
dec %r14

// Load
lea addresses_normal+0x1ec8b, %r11
nop
xor %rbx, %rbx
mov (%r11), %r8d
nop
nop
nop
inc %r15

// Store
lea addresses_normal+0x15d87, %r14
nop
nop
nop
nop
inc %rbx
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
xor $47221, %r15

// REPMOV
lea addresses_normal+0x48b, %rsi
lea addresses_RW+0xd48b, %rdi
nop
nop
nop
sub $6275, %r15
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $37456, %rdi

// Faulty Load
lea addresses_RW+0xd48b, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
inc %r8
vmovaps (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'d6': 6, '48': 214, '03': 2, '22': 1, '47': 1, '02': 57, '8b': 333, '00': 21212, 'a8': 1, '6c': 1, 'ab': 1}
00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
