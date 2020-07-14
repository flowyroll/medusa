.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x5f4c, %r11
add %r13, %r13
mov (%r11), %dx
nop
nop
nop
cmp $11553, %r8
lea addresses_UC_ht+0x1a9dc, %rsi
lea addresses_WC_ht+0x1dddc, %rdi
nop
and $23012, %r11
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x100, %rcx
nop
nop
add %rdx, %rdx
mov (%rcx), %esi
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x1a2f8, %rsi
nop
nop
nop
nop
nop
xor $17168, %r8
mov (%rsi), %r13
inc %r11
lea addresses_UC_ht+0x6e12, %r11
nop
nop
xor %rdi, %rdi
mov (%r11), %cx
nop
nop
nop
nop
nop
add $30388, %r11
lea addresses_UC_ht+0x1cddc, %rsi
lea addresses_WT_ht+0x1df5c, %rdi
nop
nop
nop
nop
dec %r10
mov $75, %rcx
rep movsq
nop
nop
sub $5888, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_UC+0x85dc, %r14
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
xor %r8, %r8

// Store
mov $0x693f2a00000005dc, %r14
nop
nop
nop
xor %r13, %r13
movb $0x51, (%r14)
nop
xor %rdx, %rdx

// Store
lea addresses_US+0x1435c, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $25373, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_UC+0xf1dc, %rdx
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
sub $12149, %r13

// Store
lea addresses_D+0x10b5c, %r13
xor $9848, %rdx
movw $0x5152, (%r13)
nop
and %r13, %r13

// Faulty Load
mov $0x693f2a00000005dc, %r9
sub %rdx, %rdx
mov (%r9), %r13w
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'51': 17}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
