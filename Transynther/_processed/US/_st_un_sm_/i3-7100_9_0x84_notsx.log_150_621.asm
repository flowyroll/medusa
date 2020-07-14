.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17fd0, %rsi
lea addresses_WT_ht+0x1b1c8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbp, %rbp
mov $44, %rcx
rep movsq
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xfd0, %rsi
nop
nop
nop
nop
nop
sub $10412, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1db10, %rdi
xor $772, %r8
movl $0x61626364, (%rdi)
nop
nop
cmp $23738, %rcx
lea addresses_normal_ht+0x15d90, %rdi
nop
nop
cmp $3510, %r15
movb (%rdi), %cl
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x107ac, %rsi
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
sub $48622, %rbp
lea addresses_WC_ht+0x11fd0, %rsi
lea addresses_WT_ht+0xa7d0, %rdi
inc %r9
mov $26, %rcx
rep movsw
nop
nop
nop
and $39772, %r15
lea addresses_WC_ht+0x1a7d0, %rsi
lea addresses_WC_ht+0xa444, %rdi
nop
nop
nop
nop
nop
and $62689, %r8
mov $112, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_UC_ht+0xcf0, %rcx
nop
nop
nop
nop
sub $37072, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x10b70, %rsi
lea addresses_UC_ht+0xcfd0, %rdi
sub %r9, %r9
mov $85, %rcx
rep movsl
nop
nop
inc %r10
lea addresses_D_ht+0x19c50, %r10
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%r10)
xor %rdi, %rdi
lea addresses_WT_ht+0x18dd0, %rsi
lea addresses_WT_ht+0xafd0, %rdi
nop
nop
nop
nop
and $23401, %rbp
mov $30, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x18e50, %rsi
lea addresses_WT_ht+0xd020, %rdi
clflush (%rdi)
nop
nop
and $54281, %rbp
mov $50, %rcx
rep movsq
nop
add $23065, %r8
lea addresses_A_ht+0x490, %rbp
clflush (%rbp)
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
xor $36115, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xe2d0, %rsi
nop
nop
nop
xor $51992, %rbp
movb $0x51, (%rsi)
nop
nop
nop
nop
sub $54747, %rbp

// Store
mov $0x64613800000004d0, %rax
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%rax)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_US+0x1d7d0, %r14
nop
nop
nop
xor $49410, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovntdq %ymm7, (%r14)
nop
dec %rsi

// Store
lea addresses_A+0x15590, %rdx
nop
and $61581, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_US+0x1d7d0, %rbp
cmp %r11, %r11
mov (%rbp), %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'b0': 1, '58': 149}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b0 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
