.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rsi
lea addresses_A_ht+0x1bf4a, %rax
nop
nop
nop
nop
nop
cmp $21458, %r11
mov (%rax), %r8d
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0xd60e, %r12
cmp $58226, %rsi
movb $0x61, (%r12)
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1ac0e, %r11
nop
nop
sub $24748, %r12
mov (%r11), %ecx
sub %r14, %r14
lea addresses_WT_ht+0x3d7e, %r14
and %r8, %r8
movb $0x61, (%r14)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1c20e, %r14
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x1680e, %rcx
nop
dec %r14
mov (%rcx), %ax
nop
add $60565, %r11
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x1af0e, %rbx
nop
nop
and $5585, %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x19c0e, %rbx
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
inc %r15

// Store
mov $0x712b76000000000e, %rbx
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovntdq %ymm7, (%rbx)
nop
nop
nop
dec %rbx

// Load
lea addresses_normal+0x4f06, %rcx
nop
nop
nop
add %r9, %r9
movb (%rcx), %bl
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WC+0x14dae, %r9
nop
nop
nop
xor $57828, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
dec %r11

// Store
lea addresses_A+0x1c08e, %rbp
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
dec %r15

// Store
lea addresses_UC+0x32a6, %rcx
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rcx)
and $8906, %r15

// Faulty Load
lea addresses_WC+0x19c0e, %r15
nop
nop
nop
cmp $1250, %rbp
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_NC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'58': 4}
58 58 58 58
*/
