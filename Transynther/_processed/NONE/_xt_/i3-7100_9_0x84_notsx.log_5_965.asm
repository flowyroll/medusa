.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1006b, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r12
cmp %r14, %r14
lea addresses_D_ht+0x189bb, %rsi
lea addresses_WC_ht+0x2449, %rdi
clflush (%rdi)
nop
and $37217, %r10
mov $52, %rcx
rep movsq
nop
dec %r14
lea addresses_D_ht+0x58d1, %rcx
dec %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1aa6b, %rsi
lea addresses_WC_ht+0xb3ab, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $46, %rcx
rep movsw
nop
add %r12, %r12
lea addresses_UC_ht+0x906b, %r14
nop
nop
nop
nop
add %rax, %rax
movw $0x6162, (%r14)
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_normal+0x19f5b, %rcx
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_PSE+0x12e6b, %r15
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%r15)
nop
xor $3753, %rsi

// Store
mov $0x61cb20000000c6b, %r11
add $61983, %r15
movb $0x51, (%r11)
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_WT+0x880b, %r8
dec %r15
mov (%r8), %r11
and %r15, %r15

// Store
lea addresses_UC+0xde2b, %rax
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)

// Exception!!!
nop
nop
nop
mov (0), %r15
inc %rcx

// Load
lea addresses_WT+0x1122e, %r15
nop
nop
nop
nop
nop
sub $55886, %rax
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_RW+0x906b, %rsi
cmp $5636, %r8
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 5}
32 32 32 32 32
*/
