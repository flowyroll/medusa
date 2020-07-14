.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e65b, %r15
add %rsi, %rsi
movl $0x61626364, (%r15)
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xf05b, %r8
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r8)
nop
nop
nop
nop
add $64973, %r15
lea addresses_normal_ht+0x1b5b, %r11
clflush (%r11)
nop
nop
and $50417, %r13
movb (%r11), %r8b
nop
nop
nop
sub $20, %r15
lea addresses_UC_ht+0x11073, %r12
xor %r11, %r11
mov (%r12), %r13w
inc %r8
lea addresses_WT_ht+0x18f9b, %r11
nop
inc %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r11)
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xa3d2, %rsi
lea addresses_UC_ht+0xc05b, %rdi
xor $29484, %r12
mov $23, %rcx
rep movsb
nop
nop
nop
nop
xor %r12, %r12
lea addresses_D_ht+0x1331b, %rsi
lea addresses_A_ht+0x1aa5b, %rdi
nop
nop
add %r8, %r8
mov $24, %rcx
rep movsq
nop
nop
nop
nop
xor $16560, %rsi
lea addresses_A_ht+0x1992d, %rsi
lea addresses_A_ht+0xdf5d, %rdi
nop
nop
xor %r13, %r13
mov $7, %rcx
rep movsw
nop
nop
and $10626, %rdi
lea addresses_WT_ht+0x72db, %rdi
nop
nop
nop
nop
nop
dec %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0x3023, %r13
add %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovaps %ymm1, (%r13)
nop
nop
nop
nop
nop
xor $47631, %r8

// Load
lea addresses_UC+0x1105b, %rdi
clflush (%rdi)
nop
nop
nop
and $30788, %r13
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rax
nop
add $63613, %r12

// Store
lea addresses_US+0xc85b, %r8
dec %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
and $710, %rax

// Store
lea addresses_US+0x1069b, %rcx
nop
nop
dec %rbp
movl $0x51525354, (%rcx)
nop
nop
add $34128, %r13

// Faulty Load
lea addresses_US+0xc85b, %r13
nop
nop
nop
and $57665, %r8
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'46': 35, '00': 52}
00 46 46 46 46 46 00 00 00 00 00 46 46 00 00 46 00 00 46 00 00 00 46 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 00 46 00 00 46 46 46 00 46 00 46 46 00 46 00 00 00 00 00 00 46 00 46 00 00 46 46 00 00 46 46 46 00 00 00 00 00 46 00 00 00 46 00 00 46 46
*/
