.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_D_ht+0x4412, %r15
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%r15), %ecx
nop
nop
nop
nop
add $56401, %r10
lea addresses_WT_ht+0x14a32, %r15
clflush (%r15)
nop
nop
nop
nop
and $22703, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
nop
xor $39235, %r15
lea addresses_D_ht+0x1ee85, %rdx
nop
nop
nop
nop
nop
add %r9, %r9
movb (%rdx), %r14b
add $49824, %rcx
lea addresses_WC_ht+0x8cee, %r15
clflush (%r15)
nop
nop
nop
nop
sub $53813, %r14
mov (%r15), %ebp
nop
inc %rcx
lea addresses_normal_ht+0xcbb2, %rbp
nop
nop
nop
dec %rcx
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
dec %rcx
lea addresses_D_ht+0xca92, %r15
clflush (%r15)
nop
and $59199, %r10
movb $0x61, (%r15)
add %r14, %r14
lea addresses_WC_ht+0xa932, %rdx
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WT_ht+0xbc12, %r10
dec %r15
movb $0x61, (%r10)
nop
xor %r14, %r14
lea addresses_WT_ht+0x1b52, %r10
xor $7530, %r14
mov (%r10), %r15d
nop
nop
add %rbp, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x11e52, %rsi
nop
xor %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x1f832, %rdi
nop
nop
nop
nop
nop
inc %r11
movl $0x51525354, (%rdi)
nop
sub %r11, %r11

// Store
lea addresses_D+0x6d61, %rcx
nop
inc %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
add %rdi, %rdi

// Store
lea addresses_UC+0x119b2, %rcx
nop
nop
nop
nop
nop
and $52051, %rax
movb $0x51, (%rcx)
and $3928, %rdi

// Store
lea addresses_normal+0x1fe32, %rsi
nop
nop
nop
add $31286, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
and $62871, %rax

// Store
lea addresses_WC+0x14232, %r11
and %rsi, %rsi
movw $0x5152, (%r11)
add %rcx, %rcx

// Load
lea addresses_UC+0x19eba, %r8
cmp $24360, %rsi
mov (%r8), %r11
nop
sub $863, %rax

// Store
lea addresses_WC+0x17132, %rax
nop
dec %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
nop
nop
add %r11, %r11

// REPMOV
lea addresses_UC+0x1b632, %rsi
lea addresses_normal+0x1ae32, %rdi
nop
xor $63891, %r15
mov $61, %rcx
rep movsw
nop
nop
cmp $3318, %r15

// Store
lea addresses_PSE+0xafd2, %rax
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
and $30422, %rcx

// Store
lea addresses_WC+0x432, %rax
nop
cmp $58410, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rax)
nop
and %rcx, %rcx

// Store
mov $0x332, %rsi
nop
cmp $59513, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
xor $25322, %r11

// Store
lea addresses_WC+0x8032, %rsi
nop
nop
nop
nop
nop
cmp $59111, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_RW+0x17e32, %r9
nop
xor $57096, %rdi
mov (%r9), %eax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
