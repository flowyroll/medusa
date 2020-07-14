.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x10de3, %rsi
lea addresses_UC_ht+0xd2e0, %rdi
cmp %rbx, %rbx
mov $78, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xd380, %rbp
nop
nop
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0xb440, %r12
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%r12)
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x7224, %r12
nop
nop
nop
nop
add $2638, %r9
mov (%r12), %bp
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x7dc0, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %rdi
movb $0x61, (%rcx)
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x105c0, %rsi
lea addresses_WC_ht+0xeed0, %rdi
nop
nop
nop
and %rbx, %rbx
mov $39, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x16240, %rsi
lea addresses_D_ht+0xd70, %rdi
nop
nop
nop
nop
nop
xor $53475, %r9
mov $59, %rcx
rep movsb
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x1367b, %rsi
lea addresses_D_ht+0x1a2c0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $48448, %r9
mov $65, %rcx
rep movsl
dec %rbx
lea addresses_WC_ht+0x10c04, %rsi
lea addresses_UC_ht+0x3498, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
dec %rdx
mov $21, %rcx
rep movsb
inc %rcx
lea addresses_WC_ht+0xf8e2, %r9
nop
nop
nop
and %rcx, %rcx
movups (%r9), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x17dc0, %r12
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r12)
nop
and $44263, %rcx
lea addresses_normal_ht+0x9380, %rdi
nop
inc %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
and $13639, %r9
lea addresses_WC_ht+0x1dc0, %rcx
nop
nop
add $64966, %rbx
mov (%rcx), %r9
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0x17c40, %rsi
nop
nop
nop
nop
xor $41631, %rdx
mov (%rsi), %r9d
nop
sub $46215, %r8

// Load
lea addresses_RW+0x15dc0, %r9
nop
nop
nop
add %r15, %r15
mov (%r9), %di
nop
nop
nop
nop
add $10560, %r8

// Store
lea addresses_A+0xc0, %r8
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
inc %rax

// Store
lea addresses_D+0x186e8, %r9
nop
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub $30447, %r15

// Store
lea addresses_UC+0x11dc0, %r9
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
and $38965, %r8

// Store
lea addresses_WT+0x16380, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_A+0x10dc0, %rdx
nop
nop
nop
cmp $38270, %r15
mov (%rdx), %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
