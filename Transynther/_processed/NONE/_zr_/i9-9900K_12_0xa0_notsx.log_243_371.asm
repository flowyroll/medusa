.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x13e08, %rax
nop
inc %rdx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
xor $40826, %r9
lea addresses_D_ht+0x15ad8, %rcx
nop
nop
nop
xor $13060, %r10
mov (%rcx), %ebp
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x150f8, %r10
clflush (%r10)
nop
nop
nop
dec %rax
mov (%r10), %ecx
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1d2f8, %rsi
lea addresses_normal_ht+0xd4f8, %rdi
nop
nop
nop
add %rdx, %rdx
mov $106, %rcx
rep movsw
nop
dec %rsi
lea addresses_D_ht+0x135c8, %r10
nop
add $47389, %rsi
mov (%r10), %eax
nop
cmp %r9, %r9
lea addresses_WT_ht+0x10f8, %r14
nop
nop
nop
nop
sub %rax, %rax
movb $0x61, (%r14)
nop
nop
cmp $27334, %r10
lea addresses_normal_ht+0x1c218, %rbp
inc %rdi
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1a058, %rsi
lea addresses_WT_ht+0x16b70, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $30, %rcx
rep movsq
nop
nop
nop
nop
cmp $16506, %rax
lea addresses_WC_ht+0x19df8, %r9
clflush (%r9)
nop
nop
sub $30707, %r10
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $0, %xmm7, %r14
cmp $53555, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x178f8, %rsi
nop
nop
nop
add $17130, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0xe344, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x17ad8, %rsi
nop
nop
inc %r10
movb $0x51, (%rsi)
nop
nop
sub $38850, %rdi

// Store
lea addresses_A+0x1e4f8, %r11
sub %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovaps %ymm2, (%r11)
nop
nop
dec %rdi

// Store
lea addresses_PSE+0x4638, %rbp
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rbp)
nop
nop
nop
and $44254, %rbp

// Faulty Load
lea addresses_A+0x10f8, %r10
nop
nop
nop
nop
xor $31454, %rdi
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'00': 243}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
