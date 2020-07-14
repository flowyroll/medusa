.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x968c, %rsi
lea addresses_normal_ht+0x142ec, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $119, %rcx
rep movsq
cmp $54401, %r13
lea addresses_UC_ht+0x490c, %r8
nop
nop
nop
nop
nop
cmp $30740, %r11
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
add $54030, %rcx
lea addresses_UC_ht+0x18499, %r13
nop
nop
nop
nop
add %r8, %r8
movb $0x61, (%r13)
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1ee0c, %r11
nop
nop
cmp $736, %rax
movw $0x6162, (%r11)
xor %rdi, %rdi
lea addresses_D_ht+0x2d0c, %rax
nop
nop
nop
nop
nop
add $53141, %rsi
mov (%rax), %edi
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xeeac, %rax
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
cmp $16021, %rcx
lea addresses_WT_ht+0x15e0c, %rsi
lea addresses_WT_ht+0x1786c, %rdi
clflush (%rsi)
nop
nop
and $30117, %r10
mov $15, %rcx
rep movsl
cmp %r13, %r13
lea addresses_D_ht+0xb4a4, %r13
nop
cmp $55952, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
sub $36783, %rax
lea addresses_WC_ht+0xdf24, %rdi
nop
nop
nop
xor $57326, %rax
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x169f0, %r13
clflush (%r13)
nop
nop
nop
xor %rsi, %rsi
movb (%r13), %r11b
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x650c, %r10
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r10)
nop
nop
nop
xor $30262, %r13
lea addresses_WT_ht+0x1050c, %r11
nop
cmp $1090, %r8
movl $0x61626364, (%r11)
nop
add $52982, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x4bac, %rsi
lea addresses_WC+0x136c, %rdi
nop
nop
cmp %rdx, %rdx
mov $58, %rcx
rep movsl
nop
xor %rcx, %rcx

// Load
lea addresses_WC+0x1617c, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
nop
cmp $14002, %rsi

// Store
lea addresses_D+0x1ce0c, %r15
nop
dec %rax
movb $0x51, (%r15)
nop
nop
sub $32793, %rdi

// Load
mov $0x10c, %rax
nop
nop
cmp $8490, %rdx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
cmp $60280, %rdx

// Store
lea addresses_US+0x1668c, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%rdi)
sub %rdx, %rdx

// Faulty Load
lea addresses_D+0x1f90c, %rbx
nop
nop
and $52253, %rsi
mov (%rbx), %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
