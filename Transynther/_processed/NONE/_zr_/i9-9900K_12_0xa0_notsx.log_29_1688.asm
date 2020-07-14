.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbx
push %rsi
lea addresses_WC_ht+0x10673, %r11
nop
nop
add $5400, %r13
movb (%r11), %bl
nop
nop
nop
add $51022, %r11
pop %rsi
pop %rbx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_normal+0x8a93, %rsi
nop
inc %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
add $7810, %rax

// Store
lea addresses_WT+0x6693, %r14
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %rax
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WT+0x13893, %rsi
clflush (%rsi)
nop
sub %r11, %r11
movb $0x51, (%rsi)
nop
nop
xor $49272, %r12

// Load
lea addresses_US+0xa793, %r11
nop
nop
nop
nop
inc %rsi
mov (%r11), %r12d
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x1f393, %r9
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_D+0x1db7, %r12
nop
nop
nop
add $2885, %rax
mov (%r12), %r9
nop
nop
nop
xor %r11, %r11

// Load
mov $0x293, %r9
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rdx
dec %r14

// Faulty Load
lea addresses_normal+0x8a93, %r9
nop
nop
nop
nop
nop
sub $56337, %rdx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 29}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
