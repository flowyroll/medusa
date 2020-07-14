.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x254e, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %rdx, %rdx
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x13e8e, %r9
and %r10, %r10
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
cmp $27065, %rcx
lea addresses_WC_ht+0xcec6, %r9
nop
and %r10, %r10
movl $0x61626364, (%r9)
nop
nop
lfence
lea addresses_WC_ht+0x6186, %rdx
nop
nop
nop
nop
nop
cmp $48561, %r13
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x3ad4, %rsi
lea addresses_normal_ht+0xb271, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r10
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xad4e, %rsi
lea addresses_WC_ht+0x98e, %rdi
and %r13, %r13
mov $84, %rcx
rep movsb
nop
add $47114, %r14
lea addresses_WC_ht+0x50d2, %r9
nop
nop
nop
dec %rdx
mov (%r9), %si
cmp $4106, %rdx
lea addresses_normal_ht+0xa74e, %rsi
lea addresses_WT_ht+0x774e, %rdi
nop
and %r10, %r10
mov $117, %rcx
rep movsq
nop
and %r10, %r10
lea addresses_A_ht+0x1cbb2, %rsi
lea addresses_normal_ht+0x554e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $53329, %rdx
mov $100, %rcx
rep movsw
nop
add %r13, %r13
lea addresses_WC_ht+0xb14e, %rsi
lea addresses_WC_ht+0x990e, %rdi
nop
nop
nop
dec %r13
mov $126, %rcx
rep movsq
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0xad4e, %rsi
lea addresses_normal_ht+0xcb4e, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
mov $85, %rcx
rep movsw
and $36045, %rcx
lea addresses_D_ht+0x5dce, %rdx
nop
nop
nop
nop
nop
sub $5848, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1141e, %rsi
nop
nop
and %r13, %r13
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x42ea, %r14
nop
nop
nop
nop
nop
xor $47020, %rsi
mov (%r14), %ecx
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xd84e, %rsi
lea addresses_normal+0x12cee, %rdi
clflush (%rsi)
nop
nop
nop
sub $64959, %r8
mov $70, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x954e, %rsi
clflush (%rsi)
add %rdi, %rdi
movl $0x51525354, (%rsi)
nop
add $1839, %rsi

// Store
lea addresses_WT+0x416c, %r12
nop
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r12)
mfence

// REPMOV
lea addresses_WT+0x954e, %rsi
lea addresses_A+0x14fce, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $891, %rax
mov $51, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x207e, %r12
nop
nop
nop
nop
dec %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x34e, %rcx
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_A+0x1db4e, %r11
nop
nop
nop
cmp $64327, %rax
movl $0x51525354, (%r11)
nop
cmp $41838, %r11

// Store
lea addresses_normal+0x1314e, %r8
nop
nop
add $14146, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x1514e, %rdi
sub $26064, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_WT+0x954e, %rsi
nop
nop
nop
nop
nop
sub $44430, %rcx
movb (%rsi), %al
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
