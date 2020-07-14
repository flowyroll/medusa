.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2e84, %rsi
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
sub $48354, %rdi
lea addresses_A_ht+0x6e84, %r11
nop
nop
inc %rcx
mov (%r11), %bx
sub %rsi, %rsi
lea addresses_normal_ht+0x1e2a, %rsi
lea addresses_D_ht+0x94d4, %rdi
nop
nop
nop
nop
sub $25095, %r14
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
add $39425, %rcx
lea addresses_UC_ht+0x14a44, %rsi
lea addresses_WT_ht+0x1eefc, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $77, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1589c, %rsi
lea addresses_A_ht+0x2484, %rdi
nop
sub %rbx, %rbx
mov $63, %rcx
rep movsb
lfence
lea addresses_UC_ht+0x1ad84, %rsi
lea addresses_WT_ht+0x14284, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $121, %rcx
rep movsq
nop
mfence
lea addresses_UC_ht+0xa484, %rdx
nop
add %rcx, %rcx
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
and $4196, %r14
lea addresses_A_ht+0x1ee84, %r11
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%r11)
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x7c44, %rdi
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rdi)
nop
xor $2499, %rcx
lea addresses_WC_ht+0x15284, %rsi
lea addresses_WT_ht+0xd84, %rdi
nop
inc %r14
mov $67, %rcx
rep movsb
add %rdi, %rdi
lea addresses_normal_ht+0x158c4, %rsi
nop
sub $31317, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0xd704, %rsi
lea addresses_UC_ht+0x17f04, %rdi
nop
cmp %r11, %r11
mov $82, %rcx
rep movsq
nop
nop
nop
sub $53336, %rcx
lea addresses_D_ht+0xf784, %rcx
clflush (%rcx)
nop
nop
xor $63192, %r13
movb (%rcx), %bl
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1a5a0, %rsi
lea addresses_WT_ht+0x9a84, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $38950, %rdx
mov $118, %rcx
rep movsq
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rsi

// Load
lea addresses_RW+0x178a4, %r14
nop
nop
nop
inc %r11
mov (%r14), %r8w
nop
nop
nop
dec %r13

// Store
lea addresses_WT+0x11a84, %r8
nop
sub $8313, %r11
movw $0x5152, (%r8)
nop
nop
dec %r8

// Store
lea addresses_RW+0x1b90, %rsi
dec %r13
movw $0x5152, (%rsi)
nop
nop
add $36530, %r13

// Load
lea addresses_normal+0xb04, %r11
nop
nop
nop
nop
nop
and $53550, %r14
mov (%r11), %r13
xor %rbp, %rbp

// Store
lea addresses_UC+0x7084, %r15
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0x11a84, %r13
nop
nop
nop
and %r11, %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp $11249, %rbp

// Store
lea addresses_US+0x1a114, %rsi
nop
nop
nop
cmp $6315, %r14
movw $0x5152, (%rsi)
nop
dec %r14

// Faulty Load
lea addresses_WT+0x11a84, %rsi
nop
nop
inc %r13
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'44': 21201, 'c5': 1, 'ff': 2, '00': 301, '42': 1, '45': 318, '95': 1, '08': 4}
00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 00 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
