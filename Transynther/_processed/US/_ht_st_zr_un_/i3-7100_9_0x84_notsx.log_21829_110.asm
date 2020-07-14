.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10348, %rdi
nop
nop
nop
nop
nop
and $29822, %rsi
mov (%rdi), %r10w
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0xd458, %rsi
nop
nop
dec %rdi
movb (%rsi), %bl
nop
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x1e5f8, %rsi
lea addresses_D_ht+0x131bf, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $62151, %r9
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $4441, %r10
lea addresses_A_ht+0xcf18, %rbp
nop
nop
nop
nop
inc %rbx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
add $57499, %rbp
lea addresses_WT_ht+0x7058, %rsi
lea addresses_A_ht+0x8498, %rdi
nop
cmp $27481, %rbp
mov $103, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x3a18, %r9
add %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1c918, %rsi
lea addresses_A_ht+0x12f38, %rdi
nop
nop
nop
nop
add $16326, %rbp
mov $79, %rcx
rep movsl
and $65437, %rsi
lea addresses_UC_ht+0x18a18, %rcx
nop
nop
nop
nop
xor $64423, %rbx
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
sub $13604, %rcx
lea addresses_D_ht+0x2318, %rsi
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
add $50554, %r10
lea addresses_WC_ht+0x12a18, %rdi
nop
nop
nop
nop
nop
add $48088, %rbx
movl $0x61626364, (%rdi)
xor %rbp, %rbp
lea addresses_A_ht+0x7018, %rsi
lea addresses_WT_ht+0x1453a, %rdi
nop
nop
nop
add $20090, %rbx
mov $56, %rcx
rep movsb
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xeaf0, %r12
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
nop
add $6445, %r12

// REPMOV
mov $0xa9e, %rsi
mov $0xd18, %rdi
nop
nop
nop
nop
sub $23047, %r15
mov $24, %rcx
rep movsw
nop
nop
xor %rsi, %rsi

// Store
mov $0x618, %rsi
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
xor %rcx, %rcx

// Store
mov $0x103a690000000098, %r11
clflush (%r11)
nop
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovaps %ymm1, (%r11)
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_US+0x12a18, %r12
nop
nop
nop
nop
and $60316, %rcx
movw $0x5152, (%r12)

// Exception!!!
nop
nop
nop
mov (0), %rcx
and %r10, %r10

// Faulty Load
lea addresses_US+0x12a18, %r10
nop
nop
nop
nop
add $19315, %rdi
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'5c': 1, '32': 1, '97': 6, 'b2': 1, '17': 1, '18': 1, '83': 1, '89': 1, '73': 1, 'fb': 1, '8c': 1, 'd6': 6, '03': 5, '12': 1, '49': 10, '5b': 1, '00': 21788, '23': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d6 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
