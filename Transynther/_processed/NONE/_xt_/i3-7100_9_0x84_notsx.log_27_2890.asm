.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x37cd, %r9
nop
nop
nop
nop
nop
sub $23087, %rdi
mov (%r9), %r13
nop
nop
add $49660, %rbx
lea addresses_A_ht+0xb3c1, %rsi
lea addresses_UC_ht+0x79cd, %rdi
nop
nop
nop
nop
nop
sub $26512, %r13
mov $39, %rcx
rep movsq
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x6581, %rsi
lea addresses_D_ht+0x1b941, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $109, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0xf9c1, %rsi
lea addresses_D_ht+0x1685a, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0, %rcx
rep movsl
nop
nop
nop
nop
nop
add $36250, %rsi
lea addresses_WT_ht+0x1446d, %r9
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r9)
nop
nop
dec %rdx
lea addresses_A_ht+0x15bc1, %rsi
lea addresses_WT_ht+0x97c1, %rdi
nop
nop
nop
sub %r11, %r11
mov $5, %rcx
rep movsl
nop
nop
add $39643, %rdx
lea addresses_D_ht+0x1e895, %r11
nop
add %rcx, %rcx
movb (%r11), %bl
nop
nop
sub $44892, %rbx
lea addresses_WC_ht+0xa043, %r13
nop
nop
nop
xor $20090, %rdx
movb (%r13), %r11b
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x14641, %r13
nop
nop
nop
dec %r11
movw $0x6162, (%r13)
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Load
mov $0x331e1800000009c1, %r11
and $59838, %rbx
mov (%r11), %rsi
xor %rsi, %rsi

// Store
lea addresses_A+0xa101, %r10
and $59297, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movaps %xmm4, (%r10)
nop
nop
dec %r11

// Store
lea addresses_US+0x17971, %rdx
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
inc %r11

// Store
lea addresses_PSE+0x83c1, %r10
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_WT+0x29c1, %r11
xor %rcx, %rcx
movups (%r11), %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 27}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
