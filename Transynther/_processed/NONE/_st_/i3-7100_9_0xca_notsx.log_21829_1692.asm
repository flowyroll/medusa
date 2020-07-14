.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e4e6, %rbx
sub %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x49f6, %r11
nop
nop
inc %rbp
mov (%r11), %di
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x267a, %rsi
lea addresses_WC_ht+0xbbee, %rdi
nop
nop
sub %rbx, %rbx
mov $87, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x5c56, %rbx
nop
sub $44703, %r15
movl $0x61626364, (%rbx)
sub $37178, %rsi
lea addresses_UC_ht+0x33a6, %rsi
nop
nop
nop
nop
sub $34567, %rdi
mov (%rsi), %r11w
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x17726, %rsi
lea addresses_UC_ht+0x14ba6, %rdi
nop
nop
nop
cmp $44604, %rbp
mov $70, %rcx
rep movsb
nop
dec %rsi
lea addresses_A_ht+0x77a6, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $0, %xmm4, %r12
nop
sub $30109, %rcx
lea addresses_normal_ht+0x16cdb, %r12
nop
add %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %r12
movntdq %xmm2, (%r12)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xca6, %rsi
lea addresses_WC_ht+0x165a6, %rdi
nop
nop
nop
nop
cmp $52225, %r15
mov $35, %rcx
rep movsb
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1c3a6, %r12
nop
nop
nop
and $59814, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x4fb6, %rsi
lea addresses_WT_ht+0x19eeb, %rdi
xor %r12, %r12
mov $34, %rcx
rep movsw
nop
nop
nop
add $40096, %rdi
lea addresses_WC_ht+0x170c6, %rbx
add %r12, %r12
mov (%rbx), %bp
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x2e6, %rbp
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rbp)
add %r11, %r11
lea addresses_normal_ht+0x104a6, %rbp
clflush (%rbp)
nop
nop
and %r12, %r12
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x10d63, %rbp
nop
xor %r10, %r10
movb $0x51, (%rbp)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_normal+0x1eaa6, %r8
nop
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r8)
nop
nop
nop
sub %rbx, %rbx

// REPMOV
lea addresses_PSE+0x17e26, %rsi
lea addresses_WC+0x193a6, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $33685, %rdx
mov $29, %rcx
rep movsw
nop
nop
nop
nop
sub $28990, %rdx

// Faulty Load
lea addresses_WC+0x193a6, %r10
nop
nop
nop
nop
nop
add $49171, %rcx
mov (%r10), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
