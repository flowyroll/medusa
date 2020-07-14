.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c2b2, %r9
nop
nop
nop
and %rbx, %rbx
mov (%r9), %r11
nop
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x10872, %rsi
lea addresses_normal_ht+0x131a2, %rdi
nop
nop
and $57076, %r9
mov $126, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x4d72, %rdi
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x147c2, %rdi
dec %rbx
movb $0x61, (%rdi)
nop
nop
add $14550, %rsi
lea addresses_D_ht+0x15d32, %r11
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x7f2, %r9
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r9)
nop
xor %rcx, %rcx
lea addresses_D_ht+0x12d72, %rbx
cmp $39438, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0xd6f2, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $27578, %r8
movw $0x6162, (%rcx)
nop
xor %rsi, %rsi
lea addresses_A_ht+0x59f2, %rsi
lea addresses_UC_ht+0xd6b2, %rdi
nop
nop
nop
nop
nop
sub $12606, %r8
mov $106, %rcx
rep movsl
nop
dec %r9
lea addresses_normal_ht+0xceb2, %r8
nop
nop
nop
inc %rsi
movw $0x6162, (%r8)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x16a72, %rcx
nop
nop
nop
inc %rsi
movb $0x61, (%rcx)
nop
sub $9495, %rbx
lea addresses_D_ht+0x1839a, %rsi
lea addresses_normal_ht+0x7f32, %rdi
nop
nop
nop
nop
lfence
mov $8, %rcx
rep movsw
sub %r9, %r9
lea addresses_WT_ht+0xde72, %r12
nop
nop
xor $46340, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x8e57, %r9
clflush (%r9)
sub $60920, %r12
movb $0x61, (%r9)
nop
nop
cmp $51449, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
mov $0xd72, %rbp
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_A+0x10d72, %r8
nop
nop
nop
add $53140, %rbx
movl $0x51525354, (%r8)
nop
nop
xor $45353, %r8

// Store
lea addresses_WC+0xa772, %rbp
nop
nop
nop
sub $55410, %r8
movw $0x5152, (%rbp)
nop
inc %rcx

// Store
lea addresses_A+0x10d72, %r9
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
nop
sub $27031, %rbx

// Load
lea addresses_D+0x1cef2, %r9
nop
nop
sub %r15, %r15
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
cmp $52249, %r15

// Store
lea addresses_US+0x13b72, %r9
sub %r10, %r10
movw $0x5152, (%r9)
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0x178f2, %r9
nop
nop
add $6315, %rbx
movb $0x51, (%r9)
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0xf472, %r8
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%r8)
nop
add $2809, %r9

// Store
lea addresses_UC+0x1567c, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r8)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_A+0x10d72, %r10
nop
nop
nop
dec %r9
movb (%r10), %bl
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 1426}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
