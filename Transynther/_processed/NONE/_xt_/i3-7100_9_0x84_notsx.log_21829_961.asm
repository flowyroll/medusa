.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d91c, %r15
nop
nop
cmp $22962, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x397c, %r15
nop
sub %rbp, %rbp
movl $0x61626364, (%r15)
xor %rbp, %rbp
lea addresses_normal_ht+0x191ee, %rbx
clflush (%rbx)
nop
nop
sub $48742, %r10
movw $0x6162, (%rbx)
nop
nop
nop
sub $51581, %rbp
lea addresses_A_ht+0x341c, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r10), %esi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xe559, %r12
nop
nop
nop
nop
cmp $22097, %rdi
movb $0x61, (%r12)
nop
xor $39112, %rbx
lea addresses_normal_ht+0x59cc, %rdi
nop
sub %rbx, %rbx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1091c, %rsi
lea addresses_A_ht+0x1011c, %rdi
nop
nop
add $50829, %r10
mov $69, %rcx
rep movsw
nop
nop
and $14373, %rcx
lea addresses_A_ht+0x1d11c, %rsi
nop
nop
nop
cmp $65312, %r10
movb $0x61, (%rsi)
sub $17422, %r12
lea addresses_A_ht+0x706c, %rdi
nop
dec %r12
movb $0x61, (%rdi)
nop
nop
nop
add $41853, %rdi
lea addresses_normal_ht+0x15b1c, %rbx
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1da1c, %rbx
nop
dec %rdi
movl $0x61626364, (%rbx)
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x1acfd, %rsi
lea addresses_WC_ht+0x12f8c, %rdi
clflush (%rdi)
nop
nop
nop
mfence
mov $51, %rcx
rep movsw
nop
nop
nop
cmp $13496, %rbx
lea addresses_normal_ht+0x1d71c, %rsi
lea addresses_UC_ht+0x18b78, %rdi
nop
and %rbp, %rbp
mov $24, %rcx
rep movsw
nop
inc %r12
lea addresses_normal_ht+0x1839c, %r10
nop
sub %r15, %r15
mov (%r10), %rbp
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xc11c, %rcx
nop
nop
and $35382, %rsi
mov (%rcx), %r15
nop
nop
nop
nop
xor $40148, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x11c, %rsi
lea addresses_A+0x1e358, %rdi
sub %r9, %r9
mov $64, %rcx
rep movsq
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x1ff54, %rdi
nop
add $61830, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
sub $39626, %rsi

// REPMOV
lea addresses_WC+0x17714, %rsi
lea addresses_normal+0x9f1c, %rdi
nop
nop
nop
nop
nop
and $49753, %r13
mov $15, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x1acdc, %r9
cmp %r13, %r13
movw $0x5152, (%r9)
nop
xor %rax, %rax

// Store
mov $0x604, %r13
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%r13)
xor %r11, %r11

// Store
mov $0x6642ea0000000f7c, %r9
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
and %r9, %r9

// Load
lea addresses_RW+0x1511c, %r13
cmp %r9, %r9
movb (%r13), %cl
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_WC+0x851c, %rax
nop
nop
xor $8695, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rax)
and $8399, %r11

// Faulty Load
lea addresses_normal+0x11c, %r11
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
