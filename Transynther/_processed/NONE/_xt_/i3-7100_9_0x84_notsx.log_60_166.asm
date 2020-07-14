.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdi
lea addresses_D_ht+0xc8bc, %rax
and %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rax)
nop
add %r14, %r14
lea addresses_D_ht+0x39ac, %r8
nop
nop
nop
cmp $593, %r14
movl $0x61626364, (%r8)
nop
and %r11, %r11
lea addresses_WC_ht+0x92cc, %r11
nop
nop
nop
cmp $43078, %r10
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
sub $9169, %r8
lea addresses_WC_ht+0xa6ac, %r8
nop
inc %rbx
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x4d17, %r14
cmp $3751, %r10
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rbx
dec %rbx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1b2cc, %rsi
lea addresses_UC+0x680c, %rdi
add $62738, %r13
mov $125, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi

// REPMOV
lea addresses_PSE+0x9310, %rsi
lea addresses_RW+0x9acc, %rdi
clflush (%rdi)
nop
nop
add %r12, %r12
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_WT+0x34cc, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_A+0x18b0c, %rsi
nop
nop
dec %r11
movb $0x51, (%rsi)
nop
nop
sub $58256, %rsi

// Faulty Load
lea addresses_WT+0x1b2cc, %r14
nop
nop
nop
dec %r12
mov (%r14), %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 60}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
