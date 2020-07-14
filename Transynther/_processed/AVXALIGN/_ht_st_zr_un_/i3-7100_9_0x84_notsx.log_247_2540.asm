.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a09e, %rsi
dec %r8
movb (%rsi), %r10b
nop
nop
cmp $65410, %r11
lea addresses_normal_ht+0x75b, %r9
nop
nop
nop
nop
and %r13, %r13
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x162df, %r8
cmp $58954, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
inc %r13
lea addresses_WC_ht+0xb09e, %r8
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
nop
nop
nop
sub $30259, %r8
lea addresses_D_ht+0x5f3e, %rsi
lea addresses_D_ht+0x18bd2, %rdi
nop
nop
and $26859, %r11
mov $90, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x2124, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rsi), %ecx
nop
sub %r10, %r10
lea addresses_A_ht+0x12d3e, %rsi
lea addresses_UC_ht+0x14b1e, %rdi
nop
nop
nop
nop
add $59626, %rbx
mov $58, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x1ef3e, %rsi
lea addresses_UC_ht+0x10eb6, %rdi
and $558, %rbx
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x17fde, %rsi
lea addresses_A_ht+0x1d4e6, %rdi
sub $23860, %r9
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x11f3e, %r13
nop
xor %r10, %r10
mov (%r13), %cx
add $29979, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_A+0xf94e, %r9
nop
nop
sub %r13, %r13
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x1f7be, %rax
nop
cmp $52602, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovntdq %ymm7, (%rax)
nop
nop
nop
nop
xor $46892, %rdi

// Load
lea addresses_PSE+0x1e0de, %rax
nop
nop
nop
nop
and %rdx, %rdx
mov (%rax), %ebx
nop
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_WC+0x1b356, %rdx
cmp $55115, %rcx
movb (%rdx), %r13b
nop
and %r13, %r13

// Faulty Load
lea addresses_A+0x1cf3e, %r13
nop
nop
nop
add $61951, %rdi
vmovntdqa (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'ec': 1, '16': 20, 'ef': 1, '35': 50, '48': 145, 'f4': 1, '00': 28, '06': 1}
06 35 48 35 48 48 00 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 16 48 48 00 48 48 00 00 48 16 48 48 48 48 35 48 35 48 48 48 35 16 48 16 ec 35 35 48 48 35 35 48 48 48 16 16 16 48 48 48 48 48 48 48 48 48 48 48 00 00 35 48 48 48 48 48 16 35 48 00 48 48 48 00 48 48 48 48 00 00 35 35 35 48 48 35 35 35 00 35 35 48 35 00 35 35 35 48 35 48 35 35 16 48 48 16 48 48 35 48 48 48 00 48 48 16 48 48 48 48 48 35 48 48 48 48 35 48 48 48 48 48 48 48 48 48 35 35 00 00 48 48 48 48 48 16 48 35 35 ef 16 35 48 35 48 35 35 35 f4 48 35 16 48 00 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 16 00 48 48 00 48 48 48 48 48 00 48 16 48 35 35 48 35 00 16 35 35 48 48 48 48 48 35 48 35 48 48 16 35 35 48 35 48 16 35 48 16
*/
