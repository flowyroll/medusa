.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2d9a, %rcx
nop
nop
nop
nop
nop
cmp $37081, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1025a, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r12)
sub $10679, %rsi
lea addresses_D_ht+0x1759a, %r8
nop
nop
nop
xor %rdi, %rdi
mov (%r8), %esi
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x1375a, %r15
nop
nop
nop
nop
xor $30068, %r12
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1565a, %r15
nop
nop
nop
nop
inc %rdi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x3e1a, %rsi
nop
nop
nop
nop
inc %r12
mov (%rsi), %rcx
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1125a, %r8
nop
nop
nop
nop
and %rbx, %rbx
mov (%r8), %ecx
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x18f4f, %r15
nop
nop
nop
nop
inc %rbx
movw $0x6162, (%r15)
nop
nop
nop
add $32036, %r15
lea addresses_A_ht+0x1339, %rcx
nop
nop
nop
nop
xor $22542, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
and $36404, %rbx
lea addresses_WC_ht+0x1285a, %rsi
nop
dec %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x2966, %rsi
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rsi
movntdq %xmm1, (%rsi)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xc85a, %rsi
lea addresses_normal_ht+0x6c9a, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $27, %rcx
rep movsw
nop
nop
lfence
lea addresses_WT_ht+0xc25a, %rdi
nop
nop
nop
cmp $38909, %r8
movw $0x6162, (%rdi)
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_A+0xc5af, %r12
nop
add %rdx, %rdx
movw $0x5152, (%r12)
nop
nop
nop
add $34891, %rax

// Faulty Load
lea addresses_RW+0x5a5a, %r14
xor $63597, %rax
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
