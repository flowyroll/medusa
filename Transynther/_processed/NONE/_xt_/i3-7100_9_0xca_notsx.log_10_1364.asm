.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x51a, %rbx
sub %r9, %r9
mov (%rbx), %edi
nop
nop
nop
nop
xor $50855, %rbx
lea addresses_WT_ht+0x4d1a, %rdx
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x15cfe, %rsi
lea addresses_A_ht+0x222, %rdi
nop
nop
and $30968, %r10
mov $44, %rcx
rep movsb
nop
nop
nop
nop
inc %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Store
mov $0xd2a, %rax
nop
nop
sub %r14, %r14
movl $0x51525354, (%rax)
nop
and %rdi, %rdi

// Store
lea addresses_RW+0x477e, %r8
nop
nop
sub $64845, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r8)
nop
add $53252, %r14

// Store
lea addresses_PSE+0x2344, %rax
nop
nop
nop
nop
nop
and %r10, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
cmp $36467, %r11

// Store
lea addresses_UC+0x1d91a, %r8
nop
nop
nop
nop
nop
add $55246, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r8)
cmp %r10, %r10

// Store
lea addresses_UC+0x15458, %r8
nop
nop
cmp %r10, %r10
movb $0x51, (%r8)
nop
nop
nop
nop
xor $18190, %r8

// Load
lea addresses_PSE+0x411a, %rdi
nop
xor %rax, %rax
mov (%rdi), %r10w
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_US+0xea82, %r10
nop
nop
sub $62616, %r8
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rdi
dec %rax

// Load
lea addresses_WT+0x13d1a, %r11
dec %r14
mov (%r11), %ax
nop
inc %rdi

// Store
lea addresses_UC+0x1c402, %r14
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r14)
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0xbf1a, %rax
nop
nop
nop
and $64703, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
xor $57929, %rax

// Store
lea addresses_PSE+0x197d4, %r14
nop
nop
nop
nop
sub %rax, %rax
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp $19176, %r14

// Faulty Load
lea addresses_WT+0x13d1a, %r14
nop
nop
nop
nop
nop
and %r10, %r10
movb (%r14), %al
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'39': 10}
39 39 39 39 39 39 39 39 39 39
*/
