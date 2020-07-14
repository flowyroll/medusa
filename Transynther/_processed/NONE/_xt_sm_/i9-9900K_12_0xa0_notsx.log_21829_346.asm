.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5b16, %rsi
lea addresses_normal_ht+0x2824, %rdi
nop
inc %r13
mov $32, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $58718, %r13
lea addresses_UC_ht+0x6616, %rsi
lea addresses_UC_ht+0x12676, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $22639, %r15
mov $94, %rcx
rep movsl
nop
nop
nop
nop
sub $26848, %rsi
lea addresses_WT_ht+0x1a616, %r15
nop
nop
nop
nop
xor %r10, %r10
movb (%r15), %al
nop
nop
nop
nop
nop
and $58541, %rax
lea addresses_normal_ht+0x5116, %r10
clflush (%r10)
nop
inc %rsi
movl $0x61626364, (%r10)
dec %r15
lea addresses_normal_ht+0xdf5e, %rsi
nop
nop
nop
nop
cmp %r13, %r13
mov (%rsi), %rcx
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x11ac6, %r13
clflush (%r13)
nop
cmp %rsi, %rsi
mov (%r13), %edi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1d78e, %r15
nop
nop
sub $9719, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r15)
and $61854, %rcx
lea addresses_normal_ht+0xbc75, %rdi
nop
xor $59198, %rcx
movl $0x61626364, (%rdi)
nop
nop
sub $61134, %rsi
lea addresses_normal_ht+0x5096, %r13
nop
nop
add %rcx, %rcx
movb $0x61, (%r13)
nop
nop
nop
add $31830, %rax
lea addresses_WC_ht+0x12786, %rsi
lea addresses_WT_ht+0x1a116, %rdi
nop
nop
add $20340, %r8
mov $26, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $43529, %r15
lea addresses_WC_ht+0x14116, %r8
nop
nop
nop
xor $51304, %r10
mov (%r8), %si
nop
nop
nop
nop
nop
and $50640, %r13
lea addresses_WT_ht+0x19116, %rsi
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rsi)
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x87fe, %rsi
lea addresses_WC_ht+0x6e96, %rdi
nop
nop
nop
nop
dec %rax
mov $22, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x6916, %rsi
lea addresses_WC+0x1156e, %rdi
dec %r13
mov $102, %rcx
rep movsb
nop
nop
nop
add $64912, %rsi

// Store
lea addresses_normal+0xb916, %r13
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
and %rax, %rax

// Store
lea addresses_WC+0x11b32, %rsi
nop
nop
nop
xor $49653, %rax
movl $0x51525354, (%rsi)
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0xae6, %r13
nop
nop
sub $41086, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
and %rcx, %rcx

// Load
mov $0x263bea000000001e, %rsi
nop
nop
nop
nop
nop
cmp $27504, %rcx
mov (%rsi), %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x649e, %r15
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r15)
nop
cmp $1091, %r13

// Store
mov $0x250de10000000116, %rax
nop
nop
nop
nop
dec %r15
movl $0x51525354, (%rax)
inc %r13

// Store
lea addresses_WC+0x157fe, %rax
clflush (%rax)
nop
nop
xor $50886, %rcx
movb $0x51, (%rax)
nop
and $36281, %r9

// Load
lea addresses_UC+0x16044, %r9
clflush (%r9)
nop
nop
nop
and $48537, %rcx
movb (%r9), %r13b
nop
and %rax, %rax

// Faulty Load
lea addresses_normal+0xb916, %r13
clflush (%r13)
nop
nop
nop
nop
cmp %rax, %rax
mov (%r13), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
