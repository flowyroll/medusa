.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x547d, %r11
nop
nop
nop
nop
xor $41842, %r14
movb (%r11), %cl
nop
nop
nop
nop
sub $63411, %rbx
lea addresses_D_ht+0xe145, %rsi
lea addresses_normal_ht+0x8453, %rdi
nop
sub $30496, %r8
mov $23, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x12c53, %rcx
nop
nop
nop
cmp $23314, %rsi
movb $0x61, (%rcx)
nop
nop
inc %rbx
lea addresses_WC_ht+0x191b3, %rsi
lea addresses_WT_ht+0x6253, %rdi
nop
nop
nop
nop
nop
xor $4892, %rax
mov $65, %rcx
rep movsl
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x10953, %r14
nop
nop
nop
nop
nop
xor $54217, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1d853, %rsi
lea addresses_WC_ht+0x13163, %rdi
clflush (%rsi)
nop
nop
nop
xor %r11, %r11
mov $18, %rcx
rep movsq
sub $31327, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_PSE+0x2bb3, %rdx
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movntdq %xmm1, (%rdx)
add %r9, %r9

// Store
lea addresses_WC+0x290b, %rbx
and $41644, %rcx
movb $0x51, (%rbx)
and $51914, %rax

// Store
mov $0x213, %rdx
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovntdq %ymm1, (%rdx)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_US+0x18c53, %rcx
nop
nop
nop
nop
and %r9, %r9
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'00': 191}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
