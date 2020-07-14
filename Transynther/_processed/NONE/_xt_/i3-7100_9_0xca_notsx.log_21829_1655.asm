.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x805c, %r13
clflush (%r13)
nop
nop
nop
nop
dec %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0xadc, %rsi
lea addresses_UC_ht+0x50dc, %rdi
nop
xor $35308, %r12
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x205c, %rsi
nop
nop
inc %r13
movl $0x61626364, (%rsi)
nop
dec %rsi
lea addresses_A_ht+0x1035c, %r13
clflush (%r13)
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%r13)
nop
nop
cmp $56356, %rbx
lea addresses_D_ht+0x1655c, %rcx
nop
nop
nop
sub %rbx, %rbx
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
xor $1619, %rsi
lea addresses_normal_ht+0xc23c, %r12
sub $37534, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1c15c, %rsi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
inc %rdi
lea addresses_A_ht+0x1a454, %rsi
lea addresses_D_ht+0x429c, %rdi
nop
nop
nop
dec %r13
mov $97, %rcx
rep movsb
nop
nop
sub $37416, %rdi
lea addresses_WT_ht+0x9854, %rsi
lea addresses_D_ht+0x11b1c, %rdi
nop
nop
nop
cmp $24520, %r15
mov $115, %rcx
rep movsb
and %rsi, %rsi
lea addresses_WT_ht+0x1525c, %rbx
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
nop
cmp $64776, %rsi
lea addresses_A_ht+0x12b5c, %rsi
lea addresses_A_ht+0x10ad8, %rdi
xor $10663, %r13
mov $54, %rcx
rep movsq
nop
and %r13, %r13
lea addresses_normal_ht+0x1b1fc, %rsi
lea addresses_normal_ht+0x1b45c, %rdi
nop
nop
nop
add $17804, %r15
mov $90, %rcx
rep movsb
nop
and $65421, %r15
lea addresses_UC_ht+0x1960c, %rsi
lea addresses_WC_ht+0x374c, %rdi
clflush (%rdi)
nop
sub %r13, %r13
mov $88, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_D_ht+0xb1dc, %rsi
lea addresses_D_ht+0x1710c, %rdi
nop
nop
nop
nop
cmp $13496, %rdx
mov $109, %rcx
rep movsb
nop
nop
nop
nop
add $31071, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x5982, %rdi
nop
nop
nop
xor $38285, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rdi)
lfence

// Store
lea addresses_UC+0x1d38a, %rbp
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x535c, %r15
nop
xor $23243, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
sub $7937, %rbp

// Store
lea addresses_WT+0x17914, %r13
cmp $31150, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r13)
add %r8, %r8

// Store
lea addresses_A+0x12bc, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub $47959, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_RW+0x1f8ec, %rsi
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
add $55664, %rsi

// Store
lea addresses_D+0x1735c, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%rbp)
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WT+0x1db5c, %r8
nop
nop
nop
cmp $4062, %rdi
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
