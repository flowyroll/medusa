.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xbbbf, %rsi
lea addresses_D_ht+0x3c6f, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $29249, %r15
mov $107, %rcx
rep movsq
nop
nop
nop
cmp $63374, %rcx
lea addresses_A_ht+0x5d6f, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r15)
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x4137, %rsi
lea addresses_normal_ht+0x1894f, %rdi
nop
nop
xor $2655, %r12
mov $72, %rcx
rep movsl
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x1dd6f, %rcx
nop
nop
sub $39718, %rdi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
and $26383, %rcx
lea addresses_WT_ht+0x3811, %r15
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r15), %r9d
nop
nop
xor $40551, %r15
lea addresses_UC_ht+0xabff, %r9
nop
nop
nop
nop
nop
and $3950, %rcx
movb (%r9), %r12b
inc %rcx
lea addresses_normal_ht+0x1456f, %r9
add $11168, %rdx
mov (%r9), %di
nop
lfence
lea addresses_normal_ht+0x1e96f, %rcx
nop
nop
inc %r9
mov (%rcx), %esi
nop
nop
xor $64490, %rcx
lea addresses_normal_ht+0x1456f, %rdi
nop
nop
nop
nop
add %rdx, %rdx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
sub $1403, %rdx
lea addresses_UC_ht+0xbbf, %r15
nop
nop
nop
nop
nop
and $24716, %r9
mov (%r15), %rdi
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1856f, %r9
nop
nop
nop
xor %rcx, %rcx
mov (%r9), %si
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x196e7, %rsi
lea addresses_D_ht+0x5d6f, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $29, %rcx
rep movsb
nop
nop
nop
and $63913, %rcx
lea addresses_D_ht+0xbfd7, %rsi
lea addresses_A_ht+0x3d6f, %rdi
nop
nop
nop
and %rdx, %rdx
mov $111, %rcx
rep movsw
dec %r15
lea addresses_UC_ht+0x1a16f, %r15
nop
nop
nop
and $2234, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r15
vmovaps %ymm3, (%r15)
nop
nop
sub $23985, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1956f, %rsi
lea addresses_RW+0xab9b, %rdi
nop
nop
nop
cmp $4071, %r15
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $28893, %rsi

// Store
mov $0x56f, %r9
nop
nop
nop
nop
nop
dec %r14
movl $0x51525354, (%r9)
nop
nop
sub %rcx, %rcx

// Faulty Load
mov $0x628586000000056f, %rbx
nop
nop
dec %r9
mov (%rbx), %esi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'79': 2484, '54': 2144, '00': 17201}
54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 79 00 79 00 00 00 00 00 00 79 79 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 79 00 00 00 00 00 00 79 54 00 54 54 00 00 00 00 00 00 54 00 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 79 00 00 00 00 00 79 00 00 00 54 00 00 00 00 00 00 79 00 54 00 00 00 79 79 00 00 00 00 00 00 00 00 00 00 00 79 00 00 00 00 00 00 79 00 00 00 54 00 00 00 00 00 00 00 54 54 79 00 00 00 00 79 79 00 00 00 00 00 00 00 00 00 54 54 54 00 00 00 00 00 00 00 79 00 00 00 00 00 79 79 79 00 00 79 00 00 00 54 00 54 00 00 00 00 00 00 00 79 00 00 00 00 00 00 79 54 00 00 00 00 00 00 00 00 79 00 00 00 00 79 00 00 00 00 54 00 00 00 00 00 00 00 00 00 79 79 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 79 00 00 54 00 00 00 00 00 00 00 79 00 00 00 00 54 00 00 00 54 00 00 00 00 79 00 00 00 00 00 54 00 54 54 79 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 54 54 00 00 79 00 00 00 00 79 79 00 00 79 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 79 00 00 79 00 00 00 00 79 79 00 00 00 00 00 00 00 00 00 79 54 00 00 00 54 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 79 00 00 00 00 00 00 00 79 00 00 00 54 00 00 00 00 54 54 79 00 79 00 00 00 00 79 00 79 00 00 79 00 00 00 00 00 79 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 79 00 54 00 54 00 00 79 00 00 00 00 00 00 00 79 00 00 00 00 54 00 00 79 00 00 00 00 00 79 00 00 54 00 54 00 00 00 00 00 00 00 00 79 00 00 00 00 00 00 00 79 00 00 00 00 00 00 00 00 79 00 00 00 00 00 54 00 54 00 00 00 00 00 00 54 00 00 00 00 00 54 00 00 79 00 00 54 79 00 00 79 79 00 00 00 79 00 79 00 79 00 00 79 00 00 00 00 00 79 00 79 00 00 00 00 79 00 00 00 00 79 00 54 79 79 00 00 00 54 54 00 00 00 00 54 79 00 79 00 00 00 00 54 00 00 00 00 00 00 79 00 54 00 00 00 79 00 00 00 00 00 00 00 54 00 54 00 00 79 54 00 00 00 79 00 00 00 00 00 00 54 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 79 00 00 00 54 79 00 79 00 00 54 00 79 00 00 00 00 79 00 79 79 00 00 00 00 00 00 00 54 00 54 00 00 00 00 00 79 00 00 00 00 00 79 54 00 00 79 54 00 00 79 00 00 00 79 00 00 00 54 00 00 00 00 79 00 79 00 00 00 00 00 00 00 00 79 00 54 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 79 00 54 00 79 79 00 00 00 00 00 79 54 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 79 54 00 00 00 54 54 00 54 00 79 00 00 00 00 79 00 00 79 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 54 00 79 00 00 00 00 00 00 00 79 00 54 79 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 79 00 00 54 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 54 79 00 00 00 00 00 79 00 00 00 00 79 00 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 79 00 54 00 00 00 00 79 00 00 00 00 00 00 54 00 79 00 00 00 00 00 79 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 79 00 00 00 00 54 00 79 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 54 00 00 00 54 00 00 00 79 00 54 00 00 00 00 79 00 79
*/
