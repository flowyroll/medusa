.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x466f, %rsi
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rsi)
nop
nop
cmp $52230, %r10
lea addresses_D_ht+0xd8ef, %rsi
lea addresses_A_ht+0xad6f, %rdi
nop
nop
nop
nop
dec %r10
mov $29, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1dd0f, %r10
nop
nop
nop
nop
nop
dec %rax
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add $53488, %rax
lea addresses_WT_ht+0x34ef, %rax
nop
nop
nop
nop
sub $40411, %r9
mov (%rax), %r10d
nop
nop
nop
add $16690, %rax
lea addresses_WT_ht+0x1d1af, %r9
nop
nop
nop
sub $32106, %rax
mov (%r9), %r14d
nop
nop
nop
nop
sub $56820, %rsi
lea addresses_normal_ht+0x583a, %rax
nop
add %r14, %r14
mov (%rax), %di
sub %rax, %rax
lea addresses_WT_ht+0x44df, %rdi
nop
nop
add %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1e46f, %rdi
nop
nop
nop
nop
cmp $9016, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
sub $49120, %rdi
lea addresses_D_ht+0x31ef, %rdi
cmp %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
sub $26072, %r10
lea addresses_normal_ht+0xb8ef, %rsi
lea addresses_A_ht+0x19ff7, %rdi
nop
nop
nop
nop
nop
add $36756, %r10
mov $0, %rcx
rep movsw
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x8923, %r14
xor $37215, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
nop
nop
nop
xor $14478, %r8

// Store
lea addresses_RW+0x137ef, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0xa52f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovaps %ymm4, (%rdi)
and %rsi, %rsi

// Load
lea addresses_PSE+0x14cef, %rcx
clflush (%rcx)
add $25338, %r14
movb (%rcx), %al
nop
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_PSE+0x1fcef, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
add $5, %r14

// Faulty Load
lea addresses_PSE+0x1fcef, %r8
nop
nop
nop
nop
inc %r10
mov (%r8), %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'58': 17}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
