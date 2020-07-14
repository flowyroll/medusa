.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x12f8e, %r11
nop
nop
nop
and %r12, %r12
mov (%r11), %rbx
nop
nop
nop
nop
sub $5428, %r15
lea addresses_WC_ht+0x2d9e, %r10
nop
nop
nop
nop
nop
xor $5568, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1088e, %rsi
lea addresses_D_ht+0xd826, %rdi
nop
nop
nop
and $52325, %r10
mov $39, %rcx
rep movsb
nop
nop
xor $2565, %r12
lea addresses_D_ht+0x1394e, %rsi
lea addresses_WC_ht+0x1308e, %rdi
nop
sub %rbx, %rbx
mov $91, %rcx
rep movsw
nop
nop
cmp $43835, %rcx
lea addresses_A_ht+0x8d8e, %rcx
nop
nop
inc %r12
movl $0x61626364, (%rcx)
add $38744, %r11
lea addresses_D_ht+0x1e48e, %rsi
lea addresses_WC_ht+0x14a8e, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
cmp $56389, %rbx
mov $15, %rcx
rep movsw
nop
nop
nop
cmp $29980, %rdi
lea addresses_WC_ht+0x1ae4e, %rsi
lea addresses_A_ht+0x714e, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $63, %rcx
rep movsq
nop
add $60420, %rcx
lea addresses_D_ht+0x118e, %rsi
lea addresses_normal_ht+0xdb0e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $5394, %r15
mov $97, %rcx
rep movsw
dec %r10
lea addresses_D_ht+0x1a6ce, %rcx
nop
and %rbp, %rbp
movb $0x61, (%rcx)
sub %rsi, %rsi
lea addresses_A_ht+0x1488e, %rsi
lea addresses_WT_ht+0x7b0e, %rdi
clflush (%rdi)
nop
nop
sub %r15, %r15
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xace, %rsi
lea addresses_UC_ht+0xccfc, %rdi
nop
nop
add %r12, %r12
mov $41, %rcx
rep movsq
and %rsi, %rsi
lea addresses_UC_ht+0x1308e, %rcx
nop
nop
dec %r15
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x456, %rdi
add $7054, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
add $30501, %r8

// Store
lea addresses_UC+0x126cf, %r9
nop
xor $15701, %rbx
movl $0x51525354, (%r9)
nop
nop
nop
sub $61879, %r9

// Store
lea addresses_US+0xac0e, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rdi)
nop
nop
xor $48206, %rdi

// Store
lea addresses_RW+0x11aee, %rdi
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
add $29697, %rbx

// Load
lea addresses_A+0x14a8e, %rcx
nop
nop
nop
dec %rdx
movb (%rcx), %r8b
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Load
lea addresses_A+0x658e, %r8
nop
dec %rdi
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rbx
cmp %r9, %r9

// Store
mov $0x84e, %r10
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
cmp $53994, %rbx

// Store
mov $0x75e, %r8
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
dec %rdx

// Faulty Load
lea addresses_WC+0x1088e, %r9
nop
nop
nop
nop
nop
xor $23015, %rbx
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
