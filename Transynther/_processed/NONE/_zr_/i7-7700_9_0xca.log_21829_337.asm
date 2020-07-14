.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x146e7, %r13
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r13
vmovaps %ymm1, (%r13)
and %r12, %r12
lea addresses_WT_ht+0x2eed, %r11
and %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r11)
nop
nop
and $53600, %r10
lea addresses_normal_ht+0xf1e7, %rsi
lea addresses_D_ht+0x182e7, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $35, %rcx
rep movsw
nop
dec %rdi
lea addresses_A_ht+0x120b7, %r11
clflush (%r11)
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
cmp $15539, %r11
lea addresses_A_ht+0x1dee7, %rsi
clflush (%rsi)
nop
nop
cmp %r12, %r12
mov (%rsi), %di
nop
cmp $30565, %r10
lea addresses_normal_ht+0x1aee7, %rsi
nop
nop
nop
cmp $53433, %r11
movw $0x6162, (%rsi)
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x4ae7, %rsi
lea addresses_normal_ht+0x2d37, %rdi
nop
nop
nop
nop
sub $6752, %r15
mov $89, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x15367, %rsi
lea addresses_WT_ht+0xc647, %rdi
clflush (%rsi)
nop
nop
nop
cmp $29909, %r15
mov $39, %rcx
rep movsw
nop
nop
nop
and $35538, %rcx
lea addresses_WC_ht+0x1bbd7, %rsi
lea addresses_WC_ht+0x150e7, %rdi
nop
and $424, %r10
mov $92, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x16137, %r11
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %ecx
nop
xor $13778, %r11
lea addresses_A_ht+0x12078, %rcx
nop
nop
nop
nop
and %r13, %r13
movb (%rcx), %r10b
cmp $2137, %r12
lea addresses_A_ht+0x1b707, %rsi
nop
nop
nop
sub %rdi, %rdi
mov (%rsi), %r12
dec %rdi
lea addresses_UC_ht+0xa70b, %rsi
lea addresses_WC_ht+0x156e7, %rdi
nop
nop
nop
nop
dec %r13
mov $45, %rcx
rep movsl
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1a9c7, %rsi
lea addresses_UC_ht+0xec09, %rdi
nop
sub %r11, %r11
mov $98, %rcx
rep movsl
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx

// Store
lea addresses_A+0x1dec7, %r14
add %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
inc %r13

// Store
lea addresses_PSE+0x19ce7, %r12
nop
nop
nop
nop
and $44599, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
add $41053, %r15

// Store
lea addresses_normal+0x5eef, %r14
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_WT+0x8967, %r12
nop
and %rcx, %rcx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_A+0xdee7, %rcx
nop
nop
nop
nop
and $14361, %r13
movb (%rcx), %r15b
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
