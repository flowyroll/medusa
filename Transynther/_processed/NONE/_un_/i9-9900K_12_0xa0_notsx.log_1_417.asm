.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x159eb, %rsi
lea addresses_UC_ht+0xd2ab, %rdi
nop
nop
add $28673, %r15
mov $38, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x16bab, %rcx
cmp $43846, %r8
movw $0x6162, (%rcx)
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x482d, %rdi
and %r10, %r10
movb (%rdi), %cl
nop
nop
nop
nop
cmp $18872, %r8
lea addresses_WC_ht+0x6eab, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %r10d
nop
sub $61607, %rdi
lea addresses_normal_ht+0x440b, %rsi
nop
nop
inc %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
xor $21280, %rax
lea addresses_normal_ht+0xf88b, %r15
sub %rsi, %rsi
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
add $53468, %rax
lea addresses_UC_ht+0x1077b, %r15
add $61689, %rcx
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1ac7b, %rsi
lea addresses_WC_ht+0x3bb, %rdi
nop
xor $3470, %r14
mov $56, %rcx
rep movsb
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x3d2b, %r14
clflush (%r14)
nop
sub %r15, %r15
mov (%r14), %rax
sub $38770, %r10
lea addresses_D_ht+0x112ab, %rsi
lea addresses_UC_ht+0xa52b, %rdi
nop
nop
nop
add $51279, %r8
mov $86, %rcx
rep movsb
xor %r8, %r8
lea addresses_WT_ht+0x795b, %rsi
lea addresses_A_ht+0x1462b, %rdi
nop
and $63625, %r15
mov $106, %rcx
rep movsw
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x1292b, %rsi
lea addresses_WC_ht+0x1212b, %rdi
clflush (%rsi)
xor %r14, %r14
mov $0, %rcx
rep movsl
and %r15, %r15
lea addresses_D_ht+0x9b9b, %r15
nop
nop
inc %rsi
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r10
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x52b, %r9
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%r9)

// Exception!!!
nop
nop
nop
nop
xor %rax, %rax
div %rax
inc %rcx

// REPMOV
lea addresses_RW+0x16863, %rsi
mov $0xd2b, %rdi
nop
nop
nop
sub $23586, %r9
mov $81, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r15, %r15

// REPMOV
lea addresses_US+0xcbb7, %rsi
lea addresses_D+0xc52b, %rdi
nop
nop
sub $52944, %r15
mov $24, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x183e3, %rax
nop
nop
nop
nop
cmp $16875, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
nop
cmp $47267, %r9

// REPMOV
lea addresses_A+0x44cb, %rsi
lea addresses_WT+0x1c52b, %rdi
sub $33878, %r9
mov $78, %rcx
rep movsl
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x7f2b, %rax
cmp $30252, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_PSE+0x1429f, %rsi
lea addresses_A+0xda93, %rdi
nop
nop
sub $49249, %rdx
mov $99, %rcx
rep movsw
nop
nop
cmp $56433, %r15

// Store
lea addresses_A+0x602b, %rcx
nop
and $15559, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x1f52b, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
and $26136, %rbp

// Faulty Load
lea addresses_WT+0x1c52b, %rax
add $14893, %rbp
mov (%rax), %dx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_RW', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'85': 1}
85
*/
