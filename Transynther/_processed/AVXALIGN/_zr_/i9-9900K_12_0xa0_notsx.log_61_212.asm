.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1820, %rsi
lea addresses_A_ht+0x3f2e, %rdi
nop
nop
nop
sub $12431, %r13
mov $81, %rcx
rep movsw
nop
nop
nop
nop
xor $30343, %rbp
lea addresses_normal_ht+0x1d451, %r10
nop
and %r8, %r8
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xfaee, %rbp
and %r8, %r8
movb $0x61, (%rbp)
nop
sub %r8, %r8
lea addresses_D_ht+0x2a76, %rsi
lea addresses_normal_ht+0x1339c, %rdi
nop
nop
nop
nop
sub $29959, %r13
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
add $4493, %r13
lea addresses_WT_ht+0x59ae, %rsi
lea addresses_normal_ht+0xf1e6, %rdi
clflush (%rsi)
nop
nop
add %r11, %r11
mov $40, %rcx
rep movsl
nop
nop
inc %rbp
lea addresses_UC_ht+0x17cee, %rbp
nop
xor $62347, %rcx
mov (%rbp), %r13w
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x171ee, %r10
nop
sub $36954, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x7aee, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $11162, %rbp
mov (%rsi), %r8d
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xc6aa, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r8
movntdq %xmm3, (%r8)
nop
nop
nop
nop
xor $13681, %r8
lea addresses_UC_ht+0x2817, %r11
nop
nop
nop
xor $7782, %rbp
movb (%r11), %r10b
nop
nop
nop
and $57396, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x11fee, %rbp
cmp $4004, %r14
movl $0x51525354, (%rbp)
nop
inc %r12

// Store
mov $0x7cacbd000000033e, %rbx
clflush (%rbx)
nop
nop
add %rcx, %rcx
movb $0x51, (%rbx)
nop
and %r12, %r12

// Store
lea addresses_RW+0x5126, %rdx
nop
nop
nop
nop
nop
and $15305, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovntdq %ymm7, (%rdx)
nop
sub $21279, %rbp

// Store
mov $0x6a86190000000f42, %rcx
nop
nop
nop
nop
nop
add $42376, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
and %r14, %r14

// Store
mov $0x2f672b00000002ee, %rbp
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbp)
sub $4272, %rcx

// Load
lea addresses_A+0x4488, %rdx
nop
nop
nop
inc %r14
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rbp
nop
xor %r14, %r14

// Faulty Load
lea addresses_US+0x56ee, %rdx
nop
nop
dec %rcx
mov (%rdx), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
