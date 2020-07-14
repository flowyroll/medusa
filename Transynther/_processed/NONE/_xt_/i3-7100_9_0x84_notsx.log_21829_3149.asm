.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4b64, %rsi
lea addresses_A_ht+0x1c484, %rdi
inc %rbx
mov $45, %rcx
rep movsl
nop
nop
nop
cmp $16310, %rbx
lea addresses_WT_ht+0x184a4, %rbx
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
add %rdi, %rdi
lea addresses_WT_ht+0x12da4, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x15564, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r11)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x10ea4, %rdi
nop
nop
and $26994, %r10
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x2be2, %r15
nop
cmp $64434, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %r15
vmovntdq %ymm7, (%r15)
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xb0a4, %rcx
nop
add %r15, %r15
mov (%rcx), %edi
nop
add %rcx, %rcx
lea addresses_A_ht+0xed82, %rdi
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
and %rbx, %rbx
lea addresses_WC_ht+0x12464, %r15
nop
nop
nop
add $57074, %r10
movups (%r15), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
xor $10081, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x150a4, %rsi
lea addresses_WC+0x92e4, %rdi
nop
cmp $13790, %r9
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $35144, %r9

// Store
lea addresses_WC+0x11456, %rcx
add %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
cmp $21058, %r9

// Store
lea addresses_WC+0x403f, %rsi
nop
nop
xor $54102, %r11
movw $0x5152, (%rsi)
nop
xor %r11, %r11

// Load
mov $0x274db00000000a4, %r11
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r11), %r14d
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0x11c0c, %rdi
nop
dec %r14
movb $0x51, (%rdi)
nop
nop
sub $47308, %rbp

// Faulty Load
lea addresses_PSE+0x1b8a4, %rbp
nop
nop
nop
sub $34742, %rcx
mov (%rbp), %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
