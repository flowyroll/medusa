.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x116df, %rbp
nop
nop
nop
xor %rdi, %rdi
mov (%rbp), %edx
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0xb86f, %rsi
lea addresses_WC_ht+0xc85f, %rdi
clflush (%rsi)
xor $16130, %rbp
mov $120, %rcx
rep movsb
nop
nop
nop
nop
and $29444, %rcx
lea addresses_WT_ht+0xc417, %r8
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r8), %rdi
nop
xor %rsi, %rsi
lea addresses_D_ht+0x10bc7, %rsi
lea addresses_WT_ht+0x511f, %rdi
nop
nop
nop
nop
dec %r12
mov $61, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x585f, %r10
add $36413, %r12
movl $0x51525354, (%r10)
nop
sub $5617, %r10

// Store
lea addresses_RW+0x837f, %rdx
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rdx)
and %r10, %r10

// REPMOV
lea addresses_PSE+0xe5df, %rsi
lea addresses_US+0x1505f, %rdi
nop
sub $11018, %r12
mov $8, %rcx
rep movsw
xor %rbx, %rbx

// Store
lea addresses_UC+0xf29f, %rcx
sub %rdi, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x1505f, %r11
and %rdx, %rdx
mov (%r11), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'33': 18088, '00': 3741}
00 00 33 33 33 33 33 00 33 00 33 33 33 33 00 33 33 33 33 33 33 00 33 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 00 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 00 33 33 33 00 33 33 33 33 00 33 33 33 00 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 00 33 00 33 33 00 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 00 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 00 33 33 00 33 33 33 00 33 33 00 00 33 33 33 33 00 33 33 33 33 33 00 33 00 33 33 00 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 00 00 33 00 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 00 33 33 00 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 00 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 00 33 33 33 00 33 00 33 33 00 33 33 00 33 00 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 00 33 00 33 33 00 33 33 33 33 00 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 00 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 00 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 00 00 00 33 33 00 33 33 33 00 33 33 33 33 00 33 33 33 33 33 00 33 00 00 33 33 33 33 00 33 33 33 33 00 00 33 00 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 00 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 00 33 33 33 00 33 33 33 00 33 00 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 00 33 33 33 33 00 33 33 00 33 33 33 00 33 33 33 33 33 33 33 33 33 33 00 33 33 33 33 33 33 33 33 00 33 33 33 33 33 00 33 33 33 33 33 33 00 33 33 33 33 33 33 00 33 00 33 33 00 33 00 00 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 00 33 00 33 33 33 00 33 00 33 33 33 33 33 33 33 33 00 00 33 33 33 33 33 33 33 33 00 00 00 33 33 33 33 33 00 00 33 33 00 33 33 33 33 33 33 33 33 00 33 00 33 33 00 33 00 33 33 33
*/
