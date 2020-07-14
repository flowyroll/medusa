.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1ef0c, %r15
nop
and $45070, %r8
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1684c, %rsi
lea addresses_normal_ht+0x48cc, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
mov $110, %rcx
rep movsq
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x698e, %rax
sub $38716, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1acef, %rcx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x1a20c, %rsi
lea addresses_UC_ht+0x15c4c, %rdi
nop
nop
nop
nop
add $35141, %rdx
mov $57, %rcx
rep movsq
nop
nop
nop
nop
nop
add $41752, %rdi
lea addresses_WT_ht+0x525c, %rdx
nop
xor %r11, %r11
mov (%rdx), %rcx
nop
sub $21660, %rdi
lea addresses_WC_ht+0x19d4c, %rax
nop
nop
nop
nop
xor $57375, %r8
movb (%rax), %r11b
sub %rdi, %rdi
lea addresses_WT_ht+0x52c4, %rsi
lea addresses_D_ht+0x1c24c, %rdi
nop
and %rax, %rax
mov $19, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1b12c, %rax
nop
nop
nop
and $710, %r15
movb $0x61, (%rax)
nop
nop
nop
nop
nop
cmp $59194, %rdx
lea addresses_WC_ht+0x1a66c, %rax
nop
nop
nop
nop
nop
add $304, %rcx
movb (%rax), %r15b
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xcc, %r15
nop
nop
nop
mfence
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
nop
nop
add $7347, %rdi

// Store
lea addresses_WT+0x1530c, %r15
nop
nop
nop
nop
add $57242, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
dec %r13

// Store
lea addresses_PSE+0x1614c, %r15
add $17142, %r11
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $251, %rdi

// Store
lea addresses_WT+0x1044c, %r13
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
sub $2043, %rcx

// Store
lea addresses_A+0x8c4c, %rdi
nop
nop
xor %r11, %r11
movb $0x51, (%rdi)
nop
xor $37406, %r15

// Store
lea addresses_RW+0x122b5, %rdx
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
sub $33388, %r14

// Load
lea addresses_PSE+0x68e0, %r11
nop
nop
nop
nop
nop
dec %rdi
mov (%r11), %rdx
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_RW+0x8ec8, %r11
nop
nop
nop
nop
and $6925, %rcx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_normal+0xa3ac, %r15
nop
cmp %r11, %r11
movb $0x51, (%r15)
sub %r13, %r13

// Store
lea addresses_US+0x1f90c, %r14
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x1504c, %r14
nop
nop
sub $59716, %r11
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 128}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
