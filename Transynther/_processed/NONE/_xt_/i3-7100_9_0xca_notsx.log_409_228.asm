.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7794, %rsi
lea addresses_A_ht+0xea14, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $2315, %r13
mov $42, %rcx
rep movsw
nop
nop
nop
and $5544, %rdx
lea addresses_A_ht+0x12214, %rsi
lea addresses_WC_ht+0x8b64, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $43, %rcx
rep movsl
nop
nop
nop
nop
xor $48694, %rdx
lea addresses_WT_ht+0x1214, %rsi
lea addresses_normal_ht+0x7f14, %rdi
clflush (%rsi)
nop
nop
nop
inc %r9
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x13348, %r9
nop
nop
nop
nop
nop
cmp $30394, %r13
movl $0x61626364, (%r9)
nop
nop
xor $50378, %r14
lea addresses_WT_ht+0x1c454, %rsi
lea addresses_WT_ht+0x1354, %rdi
nop
add %r12, %r12
mov $15, %rcx
rep movsl
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x592b, %rsi
nop
add $43197, %rdi
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
and $38325, %rcx
lea addresses_normal_ht+0x17514, %rdi
nop
nop
add $31486, %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x1a044, %rsi
and $12683, %r14
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
and $50447, %rsi
lea addresses_UC_ht+0x8a14, %r9
nop
nop
nop
mfence
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r9)
cmp %r9, %r9
lea addresses_D_ht+0xb9ab, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdi), %esi
nop
nop
nop
nop
and $61346, %r14
lea addresses_normal_ht+0x10a14, %r9
sub %r14, %r14
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
sub $53201, %r12
lea addresses_normal_ht+0x12c30, %rcx
inc %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
and $37090, %r14
lea addresses_UC_ht+0xaed4, %rcx
nop
nop
nop
nop
nop
inc %rdx
mov (%rcx), %r9
nop
nop
sub $48565, %rdx
lea addresses_D_ht+0xc0e0, %r12
nop
nop
nop
nop
inc %r9
mov (%r12), %di
nop
nop
nop
nop
sub $37703, %rcx
lea addresses_A_ht+0xad94, %rdi
add $58787, %rdx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rdx
push %rsi

// Store
lea addresses_WC+0x9294, %r13
clflush (%r13)
nop
dec %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%r13)
nop
nop
sub %r10, %r10

// Store
lea addresses_UC+0x188d4, %r8
nop
nop
nop
add $7598, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovntdq %ymm4, (%r8)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_normal+0x13214, %r11
nop
nop
sub %rsi, %rsi
movups (%r11), %xmm0
vpextrq $0, %xmm0, %rdx
nop
xor %r10, %r10

// Faulty Load
lea addresses_normal+0x13214, %r13
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rdx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 409}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
