.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf960, %r15
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%r15), %r14b
sub %rbx, %rbx
lea addresses_WC_ht+0x1ba4, %rsi
lea addresses_UC_ht+0x9c80, %rdi
nop
nop
dec %r13
mov $95, %rcx
rep movsb
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x15200, %rsi
lea addresses_normal_ht+0xfdd0, %rdi
add %r10, %r10
mov $42, %rcx
rep movsw
inc %r15
lea addresses_A_ht+0x62d0, %rdi
nop
nop
nop
nop
and $32755, %r14
movl $0x61626364, (%rdi)
nop
nop
inc %r10
lea addresses_D_ht+0x15cd0, %rsi
lea addresses_D_ht+0x1e1d0, %rdi
cmp $52835, %r13
mov $33, %rcx
rep movsq
nop
nop
and $63665, %r15
lea addresses_UC_ht+0xd6d0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $52505, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
nop
xor $20721, %rbx
lea addresses_D_ht+0x17eaa, %r14
nop
nop
nop
nop
nop
xor $38132, %rdi
movb $0x61, (%r14)
xor $4625, %r15
lea addresses_WT_ht+0x46d0, %rsi
lea addresses_normal_ht+0x1663c, %rdi
nop
nop
inc %r10
mov $90, %rcx
rep movsq
nop
nop
nop
nop
and $46418, %r10
lea addresses_WT_ht+0xa6d0, %rsi
lea addresses_WT_ht+0xd7b0, %rdi
nop
sub $50661, %r10
mov $23, %rcx
rep movsb
nop
mfence
lea addresses_normal_ht+0x13bf2, %r10
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x90f8, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%r14), %bl
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x98c8, %rsi
lea addresses_WC_ht+0x14990, %rdi
nop
nop
dec %r15
mov $61, %rcx
rep movsw
and %r14, %r14
lea addresses_WC_ht+0x107d0, %r14
and $11780, %rdi
movb (%r14), %cl
inc %r14
lea addresses_WT_ht+0x129d0, %rsi
lea addresses_normal_ht+0x2ed0, %rdi
nop
nop
and %r13, %r13
mov $11, %rcx
rep movsl
sub %r15, %r15
lea addresses_A_ht+0x1c4d0, %r13
clflush (%r13)
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
nop
and $39538, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x18430, %rbp
and %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movaps %xmm6, (%rbp)
nop
and %rax, %rax

// Store
lea addresses_UC+0xa38c, %r14
nop
nop
nop
nop
nop
cmp $39775, %r13
movw $0x5152, (%r14)
nop
nop
nop
nop
add $37684, %r14

// Store
lea addresses_A+0x188d0, %r8
nop
nop
nop
nop
nop
and $58976, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0xa6d0, %rbx
clflush (%rbx)
nop
nop
nop
nop
lfence
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_D+0x182d0, %rbp
nop
nop
nop
add %rdi, %rdi
mov (%rbp), %r8w
nop
sub $65233, %rbp

// Load
lea addresses_PSE+0x1d000, %rbp
nop
nop
nop
and $23699, %r8
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_A+0x7ad0, %r8
nop
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
sub $43872, %rbx

// Store
lea addresses_PSE+0x14ad0, %rbp
nop
cmp %rdi, %rdi
movw $0x5152, (%rbp)
nop
dec %rbp

// Store
lea addresses_D+0xda50, %r14
clflush (%r14)
nop
xor $64973, %rdi
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
inc %rax

// Store
mov $0x730, %rbx
nop
nop
nop
nop
xor $3030, %rdi
movl $0x51525354, (%rbx)
xor %rbp, %rbp

// Store
mov $0x350, %rbx
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
and $33689, %r13

// Load
mov $0x660, %rax
nop
add %r14, %r14
mov (%rax), %rbp
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_PSE+0xaed0, %rbp
nop
nop
nop
nop
nop
add %rbx, %rbx
movntdqa (%rbp), %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'33': 9945}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
