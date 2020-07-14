.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1286b, %rbp
and $46753, %r14
mov (%rbp), %r8d
nop
nop
nop
nop
nop
sub $50399, %rsi
lea addresses_WC_ht+0x1aa45, %rsi
lea addresses_UC_ht+0x12019, %rdi
nop
nop
sub $17483, %rbp
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
and $61993, %r14
lea addresses_D_ht+0x1e779, %rsi
lea addresses_UC_ht+0x4899, %rdi
cmp %rdx, %rdx
mov $26, %rcx
rep movsb
nop
xor %rbp, %rbp
lea addresses_A_ht+0x19d79, %rdx
nop
nop
xor $50404, %r14
mov (%rdx), %r8w
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xd279, %rbp
xor %rdi, %rdi
movl $0x61626364, (%rbp)
nop
and %rdi, %rdi
lea addresses_D_ht+0x1bfd1, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
xor %r14, %r14
lea addresses_A_ht+0x76ed, %rdx
nop
nop
nop
xor %rdi, %rdi
mov (%rdx), %ecx
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x101cf, %rbp
and $4228, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm0, (%rbp)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x147f9, %rsi
lea addresses_WT_ht+0x11f79, %rdi
nop
nop
sub %r15, %r15
mov $51, %rcx
rep movsb
xor $21117, %rdi
lea addresses_UC_ht+0x1d539, %r15
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Load
lea addresses_WT+0x98d9, %rax
nop
nop
nop
nop
inc %rbx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
dec %r9

// Store
lea addresses_PSE+0x12b39, %rbp
nop
nop
add $53085, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_A+0xcb79, %r8
add $31241, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovaps %ymm0, (%r8)
nop
cmp $45130, %rcx

// Store
lea addresses_US+0x15b39, %rbx
nop
nop
nop
nop
add %r9, %r9
movl $0x51525354, (%rbx)
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x1ef79, %rax
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
xor $19342, %rcx

// Load
lea addresses_PSE+0x8d79, %rax
nop
nop
add $38041, %rbx
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
nop
xor $39598, %rcx

// Faulty Load
lea addresses_PSE+0x1ef79, %rbp
nop
dec %r12
movb (%rbp), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'58': 2}
58 58
*/
