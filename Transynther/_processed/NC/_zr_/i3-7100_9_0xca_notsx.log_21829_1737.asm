.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x437b, %rbp
dec %r11
mov (%rbp), %r8w
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x123fb, %r11
add $44152, %r14
mov (%r11), %si
dec %r11
lea addresses_D_ht+0x3769, %rsi
nop
nop
add $41461, %rbx
mov (%rsi), %r14w
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1e609, %rsi
lea addresses_UC_ht+0x90fd, %rdi
clflush (%rdi)
nop
nop
add $35196, %r14
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x17eb3, %r13
xor %r8, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x18b23, %rsi
lea addresses_UC_ht+0x119bb, %rdi
nop
nop
dec %r14
mov $95, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0xe23f, %rsi
lea addresses_WC_ht+0x1c9db, %rdi
nop
nop
nop
nop
add $27091, %r14
mov $72, %rcx
rep movsb
nop
nop
inc %r14
lea addresses_UC_ht+0x937b, %rsi
lea addresses_WT_ht+0x97b, %rdi
nop
nop
sub $13096, %rbx
mov $3, %rcx
rep movsq
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1937b, %rsi
lea addresses_WT_ht+0x1bf7b, %rdi
nop
nop
nop
inc %r8
mov $1, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1babb, %rsi
lea addresses_WT_ht+0xc7fb, %rdi
nop
and $30349, %r14
mov $71, %rcx
rep movsq
nop
nop
nop
cmp $37267, %r8
lea addresses_WC_ht+0x10b05, %rbx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rbx), %si
nop
nop
nop
nop
xor $50127, %rbp
lea addresses_WT_ht+0x197b, %r13
nop
nop
nop
nop
nop
and $57626, %r8
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rdi
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_RW+0x8759, %r9
xor %r8, %r8
movl $0x51525354, (%r9)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x1003b, %rbp
nop
nop
nop
nop
nop
and %rax, %rax
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_WT+0x8cab, %r15
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_UC+0x3b7b, %r8
nop
nop
nop
nop
cmp %rax, %rax
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
cmp $43852, %rcx

// Load
lea addresses_RW+0x18f7b, %r9
nop
nop
nop
add %r15, %r15
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_A+0x1169b, %r8
nop
nop
nop
nop
add $5789, %r15
mov (%r8), %rcx
nop
nop
nop
add $35838, %rbp

// Store
lea addresses_PSE+0xc0cb, %r8
nop
cmp $54366, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movntdq %xmm7, (%r8)
nop
nop
nop
nop
add $40011, %r8

// Store
lea addresses_normal+0x1177b, %rax
nop
nop
sub $23187, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0x18e150000000097b, %rbp
nop
nop
nop
nop
nop
add $58724, %r10
mov (%rbp), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
