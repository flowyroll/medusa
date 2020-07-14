.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11d6, %rsi
add %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
inc %r15
lea addresses_D_ht+0x101d6, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov (%rdi), %ax
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x2676, %rsi
lea addresses_UC_ht+0x7dd6, %rdi
nop
nop
nop
xor %r15, %r15
mov $1, %rcx
rep movsb
and %rax, %rax
lea addresses_D_ht+0x92d6, %rsi
lea addresses_normal_ht+0x73d6, %rdi
nop
xor $30178, %r12
mov $32, %rcx
rep movsq
nop
nop
cmp $54445, %rax
lea addresses_WT_ht+0xa5b0, %r15
nop
nop
sub %r12, %r12
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rsi
nop
and %r15, %r15
lea addresses_normal_ht+0x79d6, %rcx
clflush (%rcx)
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x149d6, %r12
nop
nop
cmp $7382, %r9
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
cmp $27404, %rcx
lea addresses_normal_ht+0x59d6, %rsi
and %rdi, %rdi
mov (%rsi), %r9w
nop
nop
dec %r15
lea addresses_A_ht+0x11d6, %rsi
lea addresses_UC_ht+0x938e, %rdi
clflush (%rsi)
nop
nop
nop
inc %rax
mov $3, %rcx
rep movsl
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x2716, %rsi
lea addresses_WC_ht+0x7ed6, %rdi
nop
nop
sub %r15, %r15
mov $37, %rcx
rep movsb
add $17983, %rsi
lea addresses_normal_ht+0x89d6, %rsi
lea addresses_A_ht+0x1bd16, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $106, %rcx
rep movsb
nop
nop
nop
nop
xor $45525, %r12
lea addresses_A_ht+0x121c8, %rsi
lea addresses_WC_ht+0x1dc51, %rdi
nop
nop
nop
cmp %r9, %r9
mov $118, %rcx
rep movsq
nop
nop
nop
nop
and $57469, %rax
lea addresses_A_ht+0x1dc1c, %rax
nop
nop
nop
cmp %r9, %r9
mov (%rax), %r15
inc %rsi
lea addresses_WC_ht+0x2fd6, %r14
nop
inc %rax
movl $0x61626364, (%r14)
nop
nop
nop
add $47209, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x195e6, %rsi
lea addresses_normal+0x8646, %rdi
nop
nop
dec %r10
mov $12, %rcx
rep movsw
xor $14379, %rcx

// Store
mov $0x7481540000000338, %rsi
nop
nop
nop
nop
xor $32269, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x10b2, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r8)
cmp %r10, %r10

// Store
lea addresses_WT+0x195d6, %r10
nop
nop
nop
xor %r9, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_US+0xa9d6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdi), %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'00': 377}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
