.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e95d, %rbp
nop
nop
nop
nop
nop
xor $48215, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
and $38204, %r9
lea addresses_normal_ht+0x183dd, %rsi
lea addresses_normal_ht+0xcfe5, %rdi
nop
sub $37049, %r13
mov $91, %rcx
rep movsb
nop
nop
nop
nop
xor $53845, %rdi
lea addresses_UC_ht+0x3c5d, %r13
and $40828, %rbx
movw $0x6162, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x137d, %rbx
nop
cmp $17391, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rbx
vmovaps %ymm5, (%rbx)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x1408d, %r13
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
cmp $29585, %rsi
lea addresses_normal_ht+0x77dd, %r9
nop
nop
nop
nop
cmp $56274, %rbp
mov (%r9), %r13w
nop
dec %rcx
lea addresses_A_ht+0x40dd, %r13
nop
cmp %r11, %r11
movl $0x61626364, (%r13)
nop
nop
nop
nop
add $61238, %r9
lea addresses_D_ht+0xdbdd, %rbx
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x54ea6f00000004dd, %r8
nop
nop
cmp $33862, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0xd9d5, %rsi
nop
nop
nop
nop
nop
add $34048, %r12
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add $45785, %rdi

// Store
lea addresses_A+0x5a59, %r12
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r12)
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_A+0xddd, %r8
nop
nop
dec %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
sub $44114, %r10

// Store
lea addresses_US+0x1015d, %r10
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movaps %xmm4, (%r10)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x153dd, %rsi
nop
nop
nop
nop
sub $56051, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_A+0xb3dd, %rsi
lea addresses_UC+0x1bdd, %rdi
clflush (%rdi)
nop
nop
xor %r12, %r12
mov $72, %rcx
rep movsl
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_UC+0x1158c, %r15
nop
nop
nop
sub $21716, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
and %r10, %r10

// Store
lea addresses_normal+0x1dc7d, %rbx
nop
inc %r8
movl $0x51525354, (%rbx)
inc %rdi

// Store
mov $0x915, %rcx
nop
nop
and $49097, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0x556af00000003dd, %r12
nop
nop
nop
nop
and %r10, %r10
movaps (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'00': 1}
00
*/
