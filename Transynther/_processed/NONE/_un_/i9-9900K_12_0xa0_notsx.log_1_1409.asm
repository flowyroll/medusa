.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
lea addresses_A_ht+0x174cf, %rdi
nop
cmp $33237, %r8
movb (%rdi), %r15b
nop
nop
nop
nop
sub $64440, %r13
lea addresses_UC_ht+0xeacf, %rbx
nop
and %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
xor $8357, %rcx
lea addresses_UC_ht+0xb44f, %rbx
nop
nop
nop
nop
nop
cmp $5915, %r14
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
add %r13, %r13
lea addresses_WC_ht+0x9acf, %r13
nop
nop
nop
nop
nop
sub $28572, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r13)
inc %r8
lea addresses_WT_ht+0x9518, %r15
nop
nop
dec %r13
mov (%r15), %ecx
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xf6ff, %r15
dec %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r15)
nop
nop
cmp %rdi, %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x11ccf, %r11
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%r11)
nop
nop
xor %r12, %r12

// Load
lea addresses_normal+0xefcf, %rbp
clflush (%rbp)
dec %r12
movb (%rbp), %r11b
nop
nop
cmp $37129, %rbp

// Store
lea addresses_normal+0x9031, %r10
nop
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x2cfe, %r12
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r12)
dec %r11

// REPMOV
lea addresses_PSE+0x16cf, %rsi
lea addresses_PSE+0xc2cf, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $71, %rcx
rep movsl
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0x1e2cf, %rbp
nop
cmp $718, %rdi
movl $0x51525354, (%rbp)
nop
nop
nop
cmp $12409, %rcx

// Store
lea addresses_RW+0xaecf, %r8
nop
nop
nop
and $58421, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
add %r11, %r11

// Store
lea addresses_A+0x504f, %rsi
nop
sub %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
sub %r11, %r11

// Store
lea addresses_normal+0xd2cf, %rcx
nop
nop
nop
nop
nop
sub $12080, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
dec %r10

// Store
lea addresses_A+0xb2cf, %r9
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r9)
nop
dec %r10

// REPMOV
lea addresses_PSE+0xd167, %rsi
lea addresses_WC+0x156cf, %rdi
inc %r9
mov $17, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_PSE+0x16cf, %r8
nop
cmp $24071, %rbp
movb (%r8), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'6b': 1}
6b
*/
