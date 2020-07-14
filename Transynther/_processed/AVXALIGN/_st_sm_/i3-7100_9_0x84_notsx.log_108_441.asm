.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dfd3, %rsi
lea addresses_D_ht+0x1100d, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $124, %rcx
rep movsw
add $14304, %rbp
lea addresses_WC_ht+0x780d, %rdi
nop
add %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
xor $34155, %r8
lea addresses_D_ht+0x1d40d, %rcx
nop
nop
nop
nop
dec %r10
mov (%rcx), %rdi
nop
nop
nop
nop
nop
add $930, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Load
lea addresses_normal+0x1680d, %r15
nop
nop
nop
and %r10, %r10
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
sub $58431, %r9

// Store
lea addresses_D+0x1c4ed, %r10
nop
nop
nop
nop
and $9283, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
inc %r10

// Store
mov $0x39bf990000000f8d, %r9
nop
nop
nop
sub $15031, %r11
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $2347, %r11

// Store
mov $0x331, %rcx
nop
xor %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
xor $18256, %rsi

// Store
lea addresses_WC+0x16e0d, %r9
nop
cmp $48527, %rdx
movl $0x51525354, (%r9)
inc %r11

// Store
lea addresses_A+0x400d, %rdx
dec %r9
movw $0x5152, (%rdx)
nop
nop
sub $53432, %rcx

// Store
lea addresses_normal+0x1560d, %rsi
dec %rcx
movb $0x51, (%rsi)
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_A+0x400d, %rsi
nop
nop
nop
nop
add $34071, %r15
movb (%rsi), %r10b
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 108}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
