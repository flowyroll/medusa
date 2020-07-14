.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rcx
lea addresses_A_ht+0xec5a, %r15
nop
nop
nop
nop
dec %r8
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
dec %rcx
pop %rcx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Load
lea addresses_normal+0xdc12, %rax
nop
nop
nop
and %rbp, %rbp
mov (%rax), %r13w
and %r11, %r11

// Load
lea addresses_US+0x19a7a, %rax
nop
nop
nop
cmp %rdi, %rdi
mov (%rax), %r9d
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x7e2, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x13d32, %r9
and $15721, %r13
movb $0x51, (%r9)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x5dc0, %rax
cmp %r9, %r9
movl $0x51525354, (%rax)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_UC+0xd75a, %r9
nop
nop
nop
nop
nop
add $8007, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
and $32492, %rdx

// Store
lea addresses_normal+0x1b35a, %rdx
nop
nop
nop
nop
and $50659, %r13
movb $0x51, (%rdx)
nop
nop
nop
nop
and $7550, %rdi

// Store
mov $0x1f9782000000085a, %rdx
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
and $17311, %rdx

// Store
lea addresses_A+0x1cf5a, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rdi)
nop
add $61124, %rax

// Store
lea addresses_RW+0x1865a, %rdi
cmp %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_A+0xc05a, %r11
clflush (%r11)
nop
add $5586, %r13
mov (%r11), %edx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 181}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
