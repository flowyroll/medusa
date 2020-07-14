.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x288f, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $38612, %rsi
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r10
sub %rbx, %rbx
lea addresses_normal_ht+0xb26b, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r9), %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x7eb, %r10
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r10
vmovaps %ymm6, (%r10)
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0xfe6b, %r12
nop
sub %r8, %r8
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rcx
nop
cmp $14521, %rcx

// Store
lea addresses_UC+0x765b, %rbp
inc %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbp)
xor %r9, %r9

// REPMOV
lea addresses_normal+0xeb35, %rsi
lea addresses_D+0x612b, %rdi
nop
inc %r8
mov $24, %rcx
rep movsb
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x1e0eb, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovaps %ymm4, (%r15)
nop
nop
cmp $34237, %rsi

// Store
lea addresses_UC+0x10ab, %rsi
nop
nop
xor %r15, %r15
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x1c4cb, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $38853, %rbp
movl $0x51525354, (%rsi)
nop
nop
sub %rdi, %rdi

// Load
mov $0x6f3a60000000d6b, %rcx
add %rsi, %rsi
mov (%rcx), %r9
nop
nop
nop
nop
add %rdi, %rdi

// Load
lea addresses_UC+0x1fcb6, %rdi
clflush (%rdi)
nop
sub %r8, %r8
mov (%rdi), %ecx
nop
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_D+0x1016b, %r12
nop
nop
nop
and $43545, %r9
mov (%r12), %r8w
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'36': 6}
36 36 36 36 36 36
*/
