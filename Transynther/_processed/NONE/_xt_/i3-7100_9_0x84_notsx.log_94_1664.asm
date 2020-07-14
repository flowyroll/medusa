.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x141b5, %rsi
lea addresses_normal_ht+0x1c985, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $90, %rcx
rep movsw
nop
xor $3379, %rdx
lea addresses_normal_ht+0xcc45, %rsi
lea addresses_WC_ht+0x81c5, %rdi
nop
nop
nop
nop
add $32855, %r13
mov $11, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_WC_ht+0xc445, %r8
nop
xor $33406, %rbp
movb $0x61, (%r8)
nop
nop
nop
inc %r8
lea addresses_D_ht+0x187c5, %rcx
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %r8d
nop
nop
nop
nop
cmp $24302, %rbp
lea addresses_normal_ht+0x5a45, %r8
nop
nop
sub %rsi, %rsi
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
xor $62413, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0xe6a5, %r15
nop
nop
sub $6534, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movaps %xmm4, (%r15)
nop
nop
nop
nop
and $14999, %r15

// Store
lea addresses_PSE+0x45, %rdi
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
inc %rax

// Load
lea addresses_RW+0xfbe8, %r13
clflush (%r13)
cmp $28781, %rbp
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
and $56586, %r10

// Faulty Load
lea addresses_RW+0x10445, %r15
and %r13, %r13
mov (%r15), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 94}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
