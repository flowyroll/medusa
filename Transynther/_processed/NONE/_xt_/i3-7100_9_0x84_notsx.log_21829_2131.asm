.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x1d2d2, %r10
nop
nop
sub $10452, %rbp
mov (%r10), %edx
add $54084, %r13
lea addresses_WC_ht+0xa82, %rdi
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm6, (%rdi)
nop
xor $63426, %r9
lea addresses_normal_ht+0x19d86, %rbp
nop
nop
nop
add %r13, %r13
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x13ee6, %rbp
nop
inc %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbp)
nop
nop
dec %rdx
lea addresses_WC_ht+0x11006, %r9
nop
inc %rbp
movb $0x61, (%r9)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x2b46, %rdx
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0xa576, %r13
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r13)
nop
dec %rcx
lea addresses_A_ht+0x1ee06, %r10
nop
nop
nop
nop
nop
sub $15817, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
and $0xffffffffffffffc0, %r10
vmovaps %ymm4, (%r10)
nop
nop
nop
sub $64909, %rcx
lea addresses_WC_ht+0x1d28a, %rdi
nop
nop
nop
nop
nop
inc %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
xor $14785, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0x17886, %r13
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
dec %r15

// Store
lea addresses_D+0xf2f6, %rdi
nop
nop
nop
sub $43692, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x18006, %rcx
nop
nop
nop
nop
xor $30097, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
and $64941, %r15

// Store
lea addresses_UC+0x4126, %r11
nop
nop
nop
nop
sub $49685, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_normal+0x606, %rdi
clflush (%rdi)
nop
nop
nop
cmp $41709, %rax
mov (%rdi), %bp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
