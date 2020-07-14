.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18fc2, %r9
nop
nop
nop
nop
nop
xor %r15, %r15
mov (%r9), %cx
nop
nop
nop
sub $33177, %rbp
lea addresses_D_ht+0x3a42, %rbx
nop
nop
xor $33652, %r11
movb $0x61, (%rbx)
sub $25341, %r11
lea addresses_D_ht+0x1a90e, %r11
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r11)
add %rcx, %rcx
lea addresses_WC_ht+0xe152, %r11
clflush (%r11)
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
and $11789, %r15
lea addresses_WC_ht+0x1bd42, %rbx
clflush (%rbx)
nop
nop
inc %r9
movb (%rbx), %cl
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x666e, %r11
nop
nop
xor %rbp, %rbp
movb (%r11), %r9b
sub %r11, %r11
lea addresses_normal_ht+0x8e42, %r11
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %r11
movaps %xmm5, (%r11)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x18f42, %rbx
nop
nop
nop
nop
sub $45579, %rcx
mov (%rbx), %ebp
nop
xor $42282, %rbp
lea addresses_UC_ht+0x120c2, %rsi
lea addresses_D_ht+0x19cc2, %rdi
clflush (%rdi)
nop
nop
and $20777, %rbx
mov $52, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x15e42, %r9
cmp $4458, %rsi
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
sub $14951, %rdi
lea addresses_D_ht+0x42, %rsi
lea addresses_UC_ht+0x53b2, %rdi
nop
nop
add $57537, %rbx
mov $76, %rcx
rep movsb
and %rbp, %rbp
lea addresses_UC_ht+0x1bc42, %rbx
nop
nop
nop
nop
and $25364, %rbp
mov (%rbx), %r15w
nop
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x6162, %rdi
sub $8521, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1d6f2, %r10
clflush (%r10)
add %rcx, %rcx
mov (%r10), %bx
nop
nop
lfence
lea addresses_WC_ht+0x1ae42, %r15
nop
nop
nop
nop
xor %rdi, %rdi
movb $0x61, (%r15)
nop
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WC+0x1420a, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub $58135, %rdi
movb $0x51, (%rbp)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_PSE+0xae42, %rax
nop
nop
nop
nop
nop
and $42835, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
and $37518, %rdi

// Store
lea addresses_UC+0xe18a, %r8
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r8)
nop
xor $12586, %rdx

// Store
lea addresses_RW+0x19642, %r8
nop
nop
nop
and $46804, %r9
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x2c0, %r10
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
cmp $56186, %r9

// Store
lea addresses_PSE+0x7e42, %rbp
clflush (%rbp)
nop
inc %rax
movw $0x5152, (%rbp)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_PSE+0xae42, %r8
nop
nop
add $25133, %rbp
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
