.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5222, %rsi
lea addresses_D_ht+0x19d22, %rdi
nop
add %rbx, %rbx
mov $92, %rcx
rep movsb
nop
nop
dec %rdi
lea addresses_A_ht+0x2182, %r10
nop
nop
nop
nop
nop
sub $30194, %rsi
movb (%r10), %bl
nop
nop
nop
nop
nop
xor $36676, %rcx
lea addresses_UC_ht+0xaa3e, %rsi
lea addresses_WC_ht+0xa962, %rdi
dec %r11
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0xa6e2, %r10
nop
nop
nop
nop
nop
inc %r14
movb (%r10), %bl
nop
dec %rdi
lea addresses_normal_ht+0x2ba2, %rbx
nop
nop
nop
and %rdi, %rdi
mov (%rbx), %r11d
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x4422, %r11
nop
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x95d2, %rsi
nop
nop
nop
nop
dec %r10
mov (%rsi), %bx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x12822, %r11
add $20285, %rsi
movb $0x61, (%r11)
nop
nop
and $32928, %rdi
lea addresses_WC_ht+0xc3b5, %r10
nop
dec %r14
mov (%r10), %cx
nop
inc %r11
lea addresses_D_ht+0x1d22, %rcx
nop
and %r14, %r14
mov (%rcx), %rsi
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rdi

// Load
lea addresses_normal+0x11f22, %rax
nop
nop
nop
xor $50500, %r13
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
add %rax, %rax

// Store
lea addresses_UC+0x8239, %r12
nop
cmp $31673, %r10
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
nop
nop
xor $38536, %rdi

// Store
lea addresses_UC+0x2c22, %r14
xor $51378, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
xor $8644, %r13

// Load
mov $0xaf600000000f3a, %r14
sub $19096, %r13
mov (%r14), %r12w
nop
nop
nop
nop
nop
sub $60913, %rax

// Store
lea addresses_US+0x16022, %r14
clflush (%r14)
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
add $3253, %rdi

// Store
lea addresses_WT+0x1a22, %rax
nop
nop
nop
sub $3551, %r14
movw $0x5152, (%rax)
nop
nop
nop
add $15893, %r14

// Load
lea addresses_WC+0x5162, %r14
clflush (%r14)
nop
add $33310, %rbx
movups (%r14), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x13c22, %rbx
nop
nop
nop
nop
nop
add $43407, %rdi
movw $0x5152, (%rbx)
nop
and %r12, %r12

// Faulty Load
lea addresses_UC+0x13c22, %rdi
nop
nop
nop
nop
cmp $13162, %r10
movaps (%rdi), %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'00': 4}
00 00 00 00
*/
