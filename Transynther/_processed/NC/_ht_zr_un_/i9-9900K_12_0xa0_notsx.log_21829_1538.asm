.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1660c, %rsi
lea addresses_UC_ht+0x83f4, %rdi
clflush (%rsi)
nop
dec %r14
mov $48, %rcx
rep movsw
nop
xor $23808, %r8
lea addresses_normal_ht+0x568c, %r11
nop
nop
nop
nop
cmp %r15, %r15
movb $0x61, (%r11)
nop
nop
nop
nop
sub $50710, %r11
lea addresses_WC_ht+0xa4cc, %r8
nop
xor %r14, %r14
mov (%r8), %di
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x74ac, %r15
nop
nop
nop
nop
and %rsi, %rsi
mov (%r15), %r11w
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x1020c, %r8
nop
nop
nop
nop
add $52168, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1d0db, %r8
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r8)
nop
nop
xor $25008, %rdi
lea addresses_normal_ht+0x320c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%rdi), %r11b
nop
nop
nop
nop
nop
add $13541, %rcx
lea addresses_normal_ht+0x2c6c, %r14
nop
nop
nop
nop
nop
cmp $36289, %rdi
movb $0x61, (%r14)
nop
xor $61194, %r14
lea addresses_A_ht+0xdfcc, %rcx
nop
nop
nop
add $29722, %rdi
mov (%rcx), %r14w
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0xd676, %r11
clflush (%r11)
nop
nop
nop
nop
nop
inc %r8
movups (%r11), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x19e8c, %rdi
nop
nop
nop
nop
nop
lfence
movb $0x61, (%rdi)
nop
inc %r11
lea addresses_UC_ht+0x1064c, %r8
nop
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r8)
sub $55406, %r14
lea addresses_normal_ht+0xc70c, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
add $28193, %r11
lea addresses_WT_ht+0x14094, %r8
nop
nop
add %rdi, %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xb36c, %rbx
nop
and $56474, %rdi
movw $0x5152, (%rbx)
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WT+0x13a7f, %rdi
nop
and %rax, %rax
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp $5603, %r8

// Faulty Load
mov $0x42543d0000000a0c, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'48': 390, '44': 26, '45': 21410, '25': 1, '00': 1, 'ff': 1}
25 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 48 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
