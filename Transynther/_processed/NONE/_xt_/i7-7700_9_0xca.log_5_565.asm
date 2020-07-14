.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc3cd, %r12
nop
nop
inc %r9
mov $0x6162636465666768, %r8
movq %r8, (%r12)
nop
nop
dec %r11
lea addresses_WC_ht+0xa21, %r12
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
and $21476, %r11
lea addresses_UC_ht+0x14071, %rdx
clflush (%rdx)
nop
and $17236, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rdx)
and $48250, %r12
lea addresses_A_ht+0x131, %rsi
lea addresses_normal_ht+0x16511, %rdi
nop
nop
nop
xor $39154, %r11
mov $71, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x89e9, %rdx
xor %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xb8b9, %rcx
nop
nop
nop
and %r12, %r12
movb $0x61, (%rcx)
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x1a6c1, %rsi
nop
nop
nop
nop
and $58964, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x17531, %rsi
lea addresses_A_ht+0xe1f1, %rdi
clflush (%rdi)
cmp %r11, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x1ee8b, %rdx
nop
and %rsi, %rsi
movw $0x6162, (%rdx)
nop
add %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_US+0x188d1, %rbp
lfence
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbp)
and $40438, %r8

// Store
mov $0xdb1, %rcx
add %r15, %r15
movw $0x5152, (%rcx)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WT+0xcd15, %rcx
and %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm4, (%rcx)
nop
nop
nop
nop
nop
sub $23089, %rbp

// Faulty Load
lea addresses_D+0x1aa71, %rcx
nop
nop
nop
add %rsi, %rsi
mov (%rcx), %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'36': 5}
36 36 36 36 36
*/
