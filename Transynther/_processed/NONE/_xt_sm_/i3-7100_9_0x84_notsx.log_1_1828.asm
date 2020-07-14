.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c86f, %rsi
lea addresses_UC_ht+0x306f, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $72, %rcx
rep movsw
nop
and %r9, %r9
lea addresses_UC_ht+0x104ef, %r12
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
xor $32676, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_WC+0xc86f, %rax
dec %r12
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_normal+0x746f, %r9
sub %r12, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0x1406f, %r11
nop
nop
xor $65448, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
and $55412, %r11

// Store
lea addresses_PSE+0x1406f, %r12
cmp $2115, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movaps %xmm5, (%r12)
nop
nop
nop
nop
and %rsi, %rsi

// Load
mov $0xd97730000000a6f, %rax
nop
nop
nop
dec %r15
mov (%rax), %r11w
nop
nop
nop
add %rax, %rax

// Load
mov $0x59b3af000000086f, %r9
nop
nop
nop
nop
cmp $57065, %r12
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
cmp %rax, %rax

// Store
lea addresses_WC+0xf967, %r15
nop
add $38838, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
inc %r9

// Store
lea addresses_UC+0x646f, %r15
nop
nop
nop
and $61189, %r9
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $10404, %rax

// Load
lea addresses_WC+0x436f, %r15
nop
inc %r9
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
nop
nop
xor $37715, %rbp

// Faulty Load
lea addresses_PSE+0x1406f, %r12
nop
nop
and %r9, %r9
movb (%r12), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 1}
58
*/
