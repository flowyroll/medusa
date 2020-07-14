.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xfd00, %rsi
lea addresses_WT_ht+0xda00, %rdi
clflush (%rsi)
nop
and $10233, %r9
mov $67, %rcx
rep movsl
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1e900, %rbp
nop
nop
xor %r15, %r15
mov (%rbp), %rsi
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0xc1cc, %rcx
add %r8, %r8
movw $0x5152, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
nop
inc %r8

// Store
mov $0xd30, %r12
nop
nop
nop
inc %rax
movl $0x51525354, (%r12)
nop
cmp $32230, %r10

// Store
lea addresses_WT+0x16a00, %rbx
xor $30415, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovntdq %ymm7, (%rbx)
sub $58972, %rbx

// Load
lea addresses_A+0x600, %rbx
xor $63819, %r8
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
xor $6549, %rsi

// Store
lea addresses_RW+0x3600, %rbx
nop
nop
nop
add $9138, %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
sub $43890, %r10

// Store
lea addresses_US+0x11200, %rbx
nop
sub %rcx, %rcx
movb $0x51, (%rbx)
nop
nop
and $48285, %rax

// Store
lea addresses_normal+0x10a00, %rcx
nop
nop
nop
nop
nop
xor $32868, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0x162c0, %rax
nop
nop
nop
nop
dec %r10
movb $0x51, (%rax)
nop
xor %rax, %rax

// Store
lea addresses_A+0x600, %r10
nop
inc %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovaps %ymm7, (%r10)
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_A+0x600, %rcx
nop
and $26540, %rax
movb (%rcx), %r12b
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'58': 1147}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
