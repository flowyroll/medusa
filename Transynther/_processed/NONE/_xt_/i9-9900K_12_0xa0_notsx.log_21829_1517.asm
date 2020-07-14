.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4af3, %r9
nop
inc %rbx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r9)
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xd683, %r15
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r15), %r13
add %r15, %r15
lea addresses_WC_ht+0xeac3, %rbx
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x17743, %rsi
lea addresses_WT_ht+0x43c3, %rdi
nop
nop
inc %rbx
mov $73, %rcx
rep movsw
nop
nop
add %r9, %r9
lea addresses_D_ht+0x1e043, %rsi
lea addresses_normal_ht+0x1b543, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $28, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_D_ht+0xfca1, %rsi
lea addresses_UC_ht+0x12043, %rdi
nop
nop
cmp $54118, %rbp
mov $25, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x1af83, %rsi
lea addresses_D_ht+0xc983, %rdi
clflush (%rdi)
add $31889, %r11
mov $125, %rcx
rep movsq
xor %r9, %r9
lea addresses_WT_ht+0x1e817, %rsi
lea addresses_normal_ht+0x11443, %rdi
xor $35651, %rbx
mov $116, %rcx
rep movsb
nop
nop
nop
xor $1816, %r9
lea addresses_normal_ht+0x189be, %rsi
lea addresses_normal_ht+0x18043, %rdi
nop
nop
nop
xor %r13, %r13
mov $43, %rcx
rep movsq
nop
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x4764, %rsi
lea addresses_WT_ht+0x1a243, %rdi
nop
add $46351, %rbp
mov $120, %rcx
rep movsw
nop
nop
nop
nop
and $12977, %r11
lea addresses_D_ht+0x5443, %rsi
lea addresses_normal_ht+0x43, %rdi
nop
add %r13, %r13
mov $111, %rcx
rep movsq
add %rdi, %rdi
lea addresses_D_ht+0x15843, %rdi
nop
nop
xor %r13, %r13
movw $0x6162, (%rdi)
xor $27626, %r11
lea addresses_normal_ht+0x1b443, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
add $11208, %rdi
lea addresses_A_ht+0x6a43, %r13
nop
xor %rdi, %rdi
movb (%r13), %bl
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x843, %rsi
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
add $18902, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Load
lea addresses_D+0x18843, %rax
nop
cmp $28092, %rsi
movups (%rax), %xmm7
vpextrq $0, %xmm7, %r9
nop
dec %r9

// Store
lea addresses_D+0xb2e5, %rax
nop
nop
nop
cmp $11171, %rdi
movw $0x5152, (%rax)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_WC+0x1edc3, %rax
sub $20856, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0x19243, %rax
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%rax)
nop
nop
nop
nop
cmp $26048, %r9

// Faulty Load
lea addresses_WT+0x43, %r12
nop
nop
nop
nop
xor $54276, %r11
movb (%r12), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
