.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x794f, %rsi
lea addresses_WT_ht+0x1998b, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $8, %rcx
rep movsw
nop
nop
nop
nop
cmp $9109, %r10
lea addresses_WT_ht+0x15888, %r11
nop
nop
nop
nop
xor $22515, %rsi
movw $0x6162, (%r11)
nop
nop
nop
add $18299, %rdi
lea addresses_UC_ht+0x2b6f, %r10
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
and $4576, %rbx
lea addresses_WC_ht+0xff6f, %rsi
lea addresses_A_ht+0xe2ef, %rdi
xor %r15, %r15
mov $45, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1e06f, %r11
nop
nop
nop
sub %r15, %r15
mov (%r11), %ax
nop
nop
nop
and $13788, %r11
lea addresses_WC_ht+0x653f, %rsi
lea addresses_WC_ht+0x16def, %rdi
nop
nop
and %rbx, %rbx
mov $38, %rcx
rep movsw
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x2d4b, %rsi
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x42ef, %rcx
clflush (%rcx)
nop
nop
nop
and %r15, %r15
movb $0x61, (%rcx)
nop
nop
xor $58575, %rdi
lea addresses_D_ht+0x149ef, %r15
nop
nop
add %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
sub $28065, %rax
lea addresses_normal_ht+0xadef, %rcx
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
lfence
lea addresses_UC_ht+0x1366f, %rsi
lea addresses_WC_ht+0x1b7ef, %rdi
nop
nop
nop
add %rax, %rax
mov $117, %rcx
rep movsb
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x1a867, %r10
nop
nop
sub %rdi, %rdi
movw $0x6162, (%r10)
nop
nop
nop
cmp $49966, %rax
lea addresses_UC_ht+0x15ef, %rsi
lea addresses_D_ht+0xf0ef, %rdi
nop
nop
nop
nop
and $15075, %r15
mov $33, %rcx
rep movsb
and %rcx, %rcx
lea addresses_WC_ht+0xb78f, %rbx
nop
nop
add %r15, %r15
mov (%rbx), %rax
add %rax, %rax
lea addresses_WC_ht+0x1af13, %r11
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
xor $60612, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0xcc7b, %rbp
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
sub $31294, %r14

// Store
lea addresses_RW+0xf9ef, %r12
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
inc %rbp

// Store
lea addresses_US+0x6d6f, %r14
and %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
nop
add $4228, %r13

// Store
lea addresses_RW+0x141ef, %rdx
inc %r14
movw $0x5152, (%rdx)
nop
inc %rbx

// Store
lea addresses_RW+0xf9ef, %rdx
sub $49103, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_RW+0x1b1ef, %r12
nop
nop
sub $929, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movaps %xmm0, (%r12)
nop
nop
nop
nop
add $64452, %r12

// Store
lea addresses_US+0x368f, %r12
clflush (%r12)
nop
nop
nop
nop
nop
xor %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_RW+0xf9ef, %r8
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%r8), %bx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
