.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x56da, %rax
nop
nop
nop
xor $56047, %r9
mov (%rax), %rcx
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x3ada, %r13
nop
add $57625, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0xc4da, %rdi
nop
cmp %r9, %r9
mov (%rdi), %ecx
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x15fe0, %r9
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x12bda, %r14
nop
nop
nop
cmp %rcx, %rcx
mov (%r14), %esi
sub $60546, %r14
lea addresses_normal_ht+0x4b18, %rsi
lea addresses_WT_ht+0x1945a, %rdi
nop
and $154, %rbx
mov $79, %rcx
rep movsb
sub $27279, %r13
lea addresses_normal_ht+0xe9da, %rsi
lea addresses_WT_ht+0xbba, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $28, %rcx
rep movsb
nop
nop
and $52365, %r13
lea addresses_D_ht+0x6da, %rsi
lea addresses_A_ht+0x143ac, %rdi
clflush (%rsi)
nop
add $15658, %r13
mov $97, %rcx
rep movsw
nop
nop
sub $5647, %rbx
lea addresses_WC_ht+0x3ea2, %rdi
nop
nop
nop
nop
dec %rax
mov (%rdi), %si
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x198da, %r14
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %eax
nop
nop
sub $2589, %rdi
lea addresses_WT_ht+0x1d8da, %rsi
lea addresses_UC_ht+0xa9ba, %rdi
sub $31890, %rax
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
and $22242, %rax
lea addresses_WT_ht+0x56da, %r13
clflush (%r13)
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1c4da, %rcx
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
sub $11158, %rsi
lea addresses_UC_ht+0x12da0, %rsi
lea addresses_A_ht+0x1803a, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $18, %rcx
rep movsq
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1d3ba, %rcx
clflush (%rcx)
dec %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movntdq %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0xaada, %rbx
nop
nop
nop
cmp $30445, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rbx)
nop
nop
nop
add %r14, %r14

// Store
lea addresses_UC+0x1befa, %rsi
nop
nop
nop
cmp $20828, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rsi)

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
nop
nop
cmp $42350, %r13

// Store
lea addresses_UC+0x699a, %r14
clflush (%r14)
cmp $22448, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movaps %xmm5, (%r14)
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_RW+0x3eda, %rbx
nop
cmp %rcx, %rcx
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_WC+0xaada, %rdi
nop
nop
sub $39752, %r14
mov (%rdi), %r13d
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
