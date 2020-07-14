.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
lea addresses_WT_ht+0x1efe1, %rbx
nop
sub %r8, %r8
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xd113, %r8
nop
nop
sub $24388, %rbx
mov (%r8), %ebp
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x47e1, %rcx
nop
nop
nop
nop
cmp %rax, %rax
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rbx
nop
cmp %rax, %rax
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x14fe1, %r11
nop
add %rax, %rax
movb (%r11), %cl
nop
nop
nop
nop
nop
and $16236, %rax

// Store
lea addresses_RW+0x1991, %rax
clflush (%rax)
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
inc %rdi

// Load
lea addresses_RW+0x1fbe1, %r15
nop
nop
nop
add $12076, %rax
movups (%r15), %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
nop
and $46915, %rcx

// Store
lea addresses_US+0xc061, %rcx
nop
xor $63309, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0xd1e1, %rdx
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
and $35744, %rcx

// Store
lea addresses_UC+0x7141, %r9
nop
add $36574, %rdi
movb $0x51, (%r9)
nop
nop
nop
sub $41358, %r9

// Faulty Load
lea addresses_normal+0x127e1, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rdx), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 621}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
