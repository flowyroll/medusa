.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa2aa, %rcx
nop
add $38086, %r8
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor $10633, %r9
lea addresses_normal_ht+0x10b22, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $51575, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x11722, %rbx
nop
and $51280, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rbx
movntdq %xmm5, (%rbx)
nop
add %r8, %r8
lea addresses_WC_ht+0xcf80, %rsi
lea addresses_WC_ht+0xe5a2, %rdi
clflush (%rdi)
nop
nop
add $49157, %r8
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
add $18785, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
mov $0x1845cf00000002a2, %rax
nop
nop
nop
nop
nop
xor $1433, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rax)
nop
nop
add %r15, %r15

// Store
lea addresses_US+0x16802, %r15
nop
nop
nop
nop
xor %rax, %rax
movl $0x51525354, (%r15)
dec %rcx

// Store
lea addresses_UC+0xf322, %rsi
nop
nop
nop
sub $38276, %r12
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x1a322, %rsi
nop
nop
nop
nop
nop
and $360, %r8
movw $0x5152, (%rsi)
nop
xor $54127, %r15

// Store
lea addresses_RW+0xc682, %r8
nop
nop
xor %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_US+0x12f22, %r8
nop
inc %r12
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'30': 10, '00': 12}
30 00 00 30 00 00 00 30 30 00 30 00 00 00 00 30 00 30 30 00 30 30
*/
