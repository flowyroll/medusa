.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17dce, %r8
nop
nop
nop
nop
sub $33924, %r14
mov (%r8), %r12
add %rdx, %rdx
lea addresses_A_ht+0x537c, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $42753, %rcx
movups (%r13), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
add $41697, %rdx
lea addresses_A_ht+0x14b74, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $56014, %r11
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x3b74, %rsi
lea addresses_WT_ht+0x177f4, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r8
mov $108, %rcx
rep movsq
nop
nop
add $51816, %rdi
lea addresses_WC_ht+0x12074, %rdi
nop
cmp $45245, %r12
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm0
vpextrq $1, %xmm0, %r14
xor $42906, %rsi
lea addresses_WT_ht+0x8795, %rdi
nop
nop
nop
nop
add %r13, %r13
mov (%rdi), %rcx
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0xee74, %r8
nop
nop
nop
nop
dec %rcx
mov (%r8), %di
xor %rdi, %rdi
lea addresses_A_ht+0x17e74, %rsi
lea addresses_normal_ht+0x19024, %rdi
nop
nop
nop
nop
add $48235, %r11
mov $121, %rcx
rep movsq
nop
nop
nop
mfence
lea addresses_normal_ht+0x1c44, %rsi
lea addresses_WT_ht+0x15c74, %rdi
nop
nop
nop
sub $64520, %r11
mov $93, %rcx
rep movsb
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x75ce, %rdi
nop
nop
nop
nop
nop
cmp $1909, %r12
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
add $49191, %r11
lea addresses_normal_ht+0x154b4, %rsi
clflush (%rsi)
nop
nop
cmp %rdx, %rdx
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
sub $55106, %rcx
lea addresses_WC_ht+0x1ed54, %r8
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r8), %dl
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0xb24, %r10
nop
nop
nop
nop
nop
xor $37715, %r11
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
inc %rsi

// Store
mov $0x74, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
xor $19699, %r13

// Store
lea addresses_normal+0xea34, %rsi
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rsi)
nop
sub $57433, %rbp

// Store
lea addresses_RW+0x5e74, %rbp
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
and $42322, %r11

// Store
lea addresses_normal+0xb1dc, %r10
clflush (%r10)
nop
nop
nop
nop
sub $49725, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
cmp $50554, %r13

// Store
lea addresses_WT+0x140c, %rbp
nop
nop
nop
inc %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor $57915, %r10

// Faulty Load
mov $0x74, %rdx
and %r10, %r10
vmovntdqa (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'08': 1, 'ff': 3, '44': 270, '45': 13006, '00': 8549}
00 45 45 00 00 45 45 45 45 00 00 00 45 45 00 00 45 45 45 00 45 45 45 00 00 00 45 45 45 45 00 00 00 45 00 45 00 45 45 45 45 00 45 45 45 45 00 45 00 45 00 45 45 45 00 45 00 00 45 45 44 00 00 45 45 00 45 00 00 45 00 00 00 45 45 45 00 45 45 45 00 45 00 00 00 45 45 45 00 45 00 45 00 00 45 00 00 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 00 00 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 00 00 00 00 00 00 00 00 45 45 00 45 45 45 45 00 00 45 45 45 45 00 00 45 45 00 45 00 45 00 45 00 00 00 00 45 00 00 00 45 45 00 45 00 00 00 45 45 00 45 45 45 45 45 44 00 45 00 45 45 45 45 45 45 00 00 45 00 00 00 45 45 00 45 45 45 45 00 00 45 45 45 45 00 45 00 45 00 45 45 00 00 00 45 00 45 45 45 00 00 00 00 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 00 00 45 45 00 00 45 45 45 45 45 00 00 00 45 45 45 45 45 00 00 00 45 00 45 00 00 45 00 00 00 45 45 00 45 00 45 00 45 45 00 00 45 00 00 45 00 45 00 00 45 45 45 00 45 45 00 45 45 45 00 00 00 00 00 45 00 45 45 00 00 45 00 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 45 45 00 45 00 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 00 45 45 45 45 00 00 45 00 44 00 45 45 45 45 00 00 45 00 00 45 45 45 00 45 00 45 00 00 00 00 00 45 45 45 45 00 00 00 00 45 45 45 00 00 00 45 00 45 00 00 45 45 00 45 45 00 45 00 00 00 00 00 00 45 00 45 45 00 45 45 00 00 45 00 00 00 45 45 00 00 00 00 00 45 00 00 45 45 45 45 00 45 45 00 00 00 00 45 45 00 00 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 45 00 00 44 45 45 45 45 45 00 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 00 00 45 45 00 45 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 45 00 45 00 00 00 00 45 45 00 45 00 45 45 45 45 45 00 00 00 45 45 45 00 45 00 45 45 00 45 45 45 45 45 00 45 00 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 45 45 00 45 00 00 45 00 45 45 45 00 45 44 00 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 00 45 00 00 45 45 00 00 45 45 00 45 00 45 00 45 45 45 45 45 00 45 00 00 00 45 45 45 45 45 00 45 45 00 00 45 45 00 45 00 45 45 00 45 00 00 45 45 00 00 00 45 00 00 00 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 00 00 45 45 00 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 45 45 45 00 00 00 00 00 45 45 00 00 44 00 00 00 00 00 45 00 45 00 00 45 45 45 00 45 00 44 45 00 45 45 00 45 45 45 44 00 00 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 00 00 45 45 45 00 00 00 00 45 00 45 00 00 45 45 45 45 45 45 00 45 00 45 00 45 00 45 44 45 45 45 45 00 45 00 45 45 00 45 00 45 00 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 00 00 00 45 45 00 00 00 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 00 00 00 45 45 45 00 45 00 00 00 00 45 00 00 45 00 00 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 00 00 00 45 00 45 45 00 00 45 45 00 00 45 44 00 45 45 45 00 45 00 45 00 45 45 45 45 00 00 00 00 45 45 45 00 00 45 00 45
*/
