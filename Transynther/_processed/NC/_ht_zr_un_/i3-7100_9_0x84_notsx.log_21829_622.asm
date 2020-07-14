.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x583a, %rsi
lea addresses_D_ht+0x1db7a, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $79, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x8f7a, %rsi
lea addresses_WT_ht+0x417a, %rdi
nop
nop
xor %r11, %r11
mov $38, %rcx
rep movsw
nop
nop
inc %rsi
lea addresses_normal_ht+0x247a, %r12
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x357a, %rbx
nop
nop
xor $40848, %r8
movw $0x6162, (%rbx)
xor $40984, %rbx
lea addresses_WC_ht+0x1b37a, %rsi
lea addresses_normal_ht+0x1ab7a, %rdi
nop
nop
xor $53839, %r9
mov $81, %rcx
rep movsq
nop
nop
add $27940, %rbx
lea addresses_D_ht+0x12a52, %r12
nop
nop
nop
nop
nop
xor $56025, %r8
movw $0x6162, (%r12)
inc %rcx
lea addresses_D_ht+0xc37a, %rbx
xor $10112, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x637a, %rbx
add $27930, %r11
mov (%rbx), %r8
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1c77a, %rcx
nop
nop
xor %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xd37a, %rsi
lea addresses_WC_ht+0xfcaa, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $97, %rcx
rep movsl
nop
nop
nop
nop
xor $47742, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0xe67a, %rcx
add $571, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
and $56937, %rbx

// Store
mov $0xdb2, %rbx
clflush (%rbx)
xor %r12, %r12
movb $0x51, (%rbx)
add %r12, %r12

// Load
lea addresses_PSE+0x5f7a, %r10
nop
nop
nop
nop
nop
sub $56915, %rdi
movb (%r10), %bl
nop
nop
nop
nop
dec %rcx

// Faulty Load
mov $0xd65830000000b7a, %rdx
nop
nop
nop
add %rcx, %rcx
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'46': 1949, '00': 9419, '48': 10016, '08': 2, '49': 443}
46 49 48 00 00 48 46 48 48 49 00 49 48 00 46 00 48 48 46 48 48 48 00 00 00 00 00 48 00 48 48 48 00 00 48 00 48 48 00 00 48 48 00 48 00 48 00 48 48 00 00 48 48 00 00 48 48 48 48 48 00 48 48 48 46 00 00 48 48 48 48 46 48 00 00 48 46 48 49 48 48 49 00 48 00 49 48 46 00 48 48 00 00 00 46 49 00 48 00 00 00 48 49 48 48 00 48 00 48 48 00 00 48 00 00 48 48 46 00 48 00 00 48 00 00 48 49 00 48 00 00 48 00 48 48 48 00 48 46 48 48 46 00 48 00 00 48 00 46 48 00 46 48 48 00 48 48 00 00 48 48 48 00 00 48 48 46 48 49 48 48 00 48 48 00 48 46 48 00 00 48 48 46 00 48 46 48 48 00 46 48 00 48 48 00 00 48 48 48 46 00 49 00 00 49 48 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 48 48 00 00 00 48 00 00 48 48 48 00 48 00 48 46 48 46 00 48 00 00 00 48 48 46 48 46 00 48 48 48 00 48 00 00 48 48 48 48 00 46 00 00 48 48 48 46 48 48 46 48 00 48 48 48 00 48 48 48 00 00 48 48 00 00 48 00 00 48 48 00 00 00 00 48 00 00 00 00 48 46 00 48 48 00 48 48 00 48 00 00 48 48 00 46 00 48 48 48 00 48 00 00 00 00 48 00 00 48 00 00 00 00 48 48 48 00 48 00 48 48 00 00 48 48 00 00 00 00 00 00 48 49 00 48 48 00 48 00 48 46 48 00 48 00 48 48 00 48 48 00 48 48 46 48 48 00 48 48 48 48 00 48 00 00 48 46 00 48 48 48 00 48 00 48 48 48 00 48 48 00 48 46 48 00 00 00 48 48 49 48 49 49 00 00 00 00 48 46 46 48 48 00 46 00 48 46 49 48 00 46 48 00 48 46 00 00 00 00 48 46 00 48 48 48 00 00 00 48 00 46 48 48 00 00 00 00 00 48 00 48 48 48 46 00 48 48 46 00 48 48 00 48 48 00 00 00 48 00 46 48 48 49 48 48 00 48 48 00 00 00 00 48 46 00 00 00 00 48 46 00 00 00 00 48 00 49 48 00 00 46 00 48 48 00 00 00 00 00 00 48 48 00 48 00 00 48 48 46 48 48 46 00 48 48 00 48 00 49 48 48 48 48 48 48 00 00 46 00 46 46 00 48 46 48 46 00 48 48 00 48 00 00 48 00 48 00 00 48 48 48 00 48 48 48 46 46 48 00 48 48 00 00 48 49 48 48 00 00 00 00 48 48 00 48 00 00 48 00 00 48 48 00 48 00 48 48 00 48 48 48 00 48 00 46 00 00 00 48 48 00 46 00 00 48 48 00 00 00 00 48 48 48 48 00 00 00 48 48 48 00 48 48 46 48 48 00 48 48 00 48 48 00 00 00 48 48 46 00 00 00 48 00 46 46 48 48 00 46 48 00 00 48 46 48 48 46 00 48 00 00 00 48 48 00 48 48 46 00 48 00 00 48 48 48 48 00 48 00 48 00 00 00 48 48 00 00 48 48 48 48 00 46 00 00 48 48 00 00 48 48 00 48 48 48 48 00 48 48 46 00 00 00 48 48 00 00 48 48 46 48 48 00 48 48 00 00 48 00 00 00 00 00 00 00 48 00 48 46 00 48 00 48 46 48 48 00 00 48 00 46 00 48 46 48 46 00 00 48 48 00 48 00 00 48 48 46 48 46 48 48 00 00 00 00 48 48 48 46 48 00 46 48 48 00 00 48 46 46 00 00 48 48 00 48 48 46 48 48 00 00 48 48 00 48 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 48 48 00 48 48 00 00 48 48 00 00 00 46 00 00 48 00 00 00 00 00 00 48 48 48 46 00 48 48 46 48 48 48 46 46 48 00 48 00 00 00 00 48 46 48 46 46 00 48 00 46 48 48 00 48 00 48 48 48 46 48 48 00 00 00 48 00 00 00 48 48 00 46 48 00 48 46 00 48 49 00 00 48 00 00 00 00 48 46 48 00 48 48 00 00 48 00 48 46 00 48 48 00 48 00 00 00 48 00 48 48 00 00 48 48 00 48 46 00 00 48 00 48 48 48 48 00 00 48 48 48 00 48 48 00 00 48 00 48 48 48 00 48 48 00 00 48 00 46 00 00 48 00 00
*/
