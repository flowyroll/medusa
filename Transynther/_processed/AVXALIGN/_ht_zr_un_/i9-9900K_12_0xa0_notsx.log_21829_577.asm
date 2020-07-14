.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x77fe, %rcx
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm3
and $0xffffffffffffffc0, %rcx
movaps %xmm3, (%rcx)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x5ca2, %r13
nop
nop
sub $44807, %r10
movb (%r13), %r11b
nop
nop
nop
cmp $24739, %rbp
lea addresses_WC_ht+0x1da7e, %rsi
lea addresses_A_ht+0x587e, %rdi
xor $27239, %r13
mov $24, %rcx
rep movsw
nop
nop
nop
cmp $58448, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Store
lea addresses_D+0x4c7e, %r12
nop
nop
nop
nop
nop
and $49330, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
sub %r8, %r8

// Store
lea addresses_UC+0x11c7e, %r15
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r15)
nop
nop
and $53551, %r8

// Store
lea addresses_RW+0xa43c, %r13
nop
nop
add $58585, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r13)
cmp %r13, %r13

// Store
mov $0x306, %r12
nop
nop
nop
nop
nop
sub $31148, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r12)
nop
nop
add $10244, %r15

// Faulty Load
lea addresses_PSE+0x907e, %r8
clflush (%r8)
add $22171, %r12
vmovaps (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'08': 2, '48': 4131, '00': 17696}
48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 48 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00
*/
