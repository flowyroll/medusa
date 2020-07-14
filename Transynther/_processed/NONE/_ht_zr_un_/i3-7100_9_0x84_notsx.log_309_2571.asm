.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdx
lea addresses_WC_ht+0x1ae3e, %r11
nop
nop
nop
nop
and %rdx, %rdx
mov (%r11), %rcx
nop
add %r13, %r13
pop %rdx
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rbx

// Store
lea addresses_A+0xb23e, %r14
nop
nop
nop
nop
nop
cmp $30698, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
xor $57701, %r14

// Store
mov $0x23e, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $32536, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x3fca, %rax
nop
xor %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rax)
nop
nop
and $20241, %r14

// Store
lea addresses_RW+0x473e, %rbp
sub $20698, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_RW+0x77b8, %rax
and $58852, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movaps %xmm7, (%rax)
nop
add $25141, %rbx

// Store
lea addresses_D+0x676e, %rbx
nop
nop
nop
nop
sub $3841, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
dec %rbp

// Store
lea addresses_WC+0x1b960, %rbx
clflush (%rbx)
and %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%rbx)
nop
nop
nop
nop
xor $24067, %r14

// Faulty Load
lea addresses_A+0x1fe3e, %r10
nop
nop
and $12577, %rbx
mov (%r10), %r15d
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'48': 18, '47': 2, '00': 281, 'de': 1, '08': 7}
de 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 47 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 08 00 00 00 08 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 08 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 08 00
*/
