.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x15a9f, %r13
inc %r11
mov (%r13), %cx
nop
nop
nop
inc %r11
lea addresses_WT_ht+0xca9f, %r11
nop
add $9734, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xeb9f, %rdi
cmp $31234, %r10
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0xbb87, %r13
clflush (%r13)
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1bbc9, %r8
nop
nop
nop
nop
and $47503, %rdi
mov (%r8), %r13
dec %r11
lea addresses_UC_ht+0x1dc9f, %rsi
lea addresses_D_ht+0x6d9f, %rdi
nop
nop
nop
cmp %r12, %r12
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x8d7f, %rsi
lea addresses_UC_ht+0x9e9f, %rdi
nop
nop
and $15408, %r12
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
add $3798, %r8
lea addresses_normal_ht+0x9a9f, %rsi
nop
cmp $59215, %r10
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
xor $29185, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Load
lea addresses_WT+0x1bcc, %r13
add %rsi, %rsi
movb (%r13), %r15b
nop
cmp $22957, %r12

// Store
lea addresses_A+0xb209, %r12
xor $27197, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x1e79f, %rax
nop
nop
xor $16402, %r15
movb $0x51, (%rax)
nop
nop
nop
nop
sub $29500, %r12

// Store
lea addresses_RW+0x1409f, %r13
nop
nop
nop
inc %rbp
movb $0x51, (%r13)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x3e9f, %r12
nop
nop
nop
nop
nop
and $40890, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0x1669f, %rbp
sub $54282, %r13
movl $0x51525354, (%rbp)
xor %r12, %r12

// Faulty Load
lea addresses_A+0x3e9f, %r13
clflush (%r13)
nop
and %r12, %r12
movb (%r13), %al
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 131}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
