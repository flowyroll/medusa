.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3fe9, %rsi
lea addresses_normal_ht+0x701, %rdi
nop
nop
nop
inc %r15
mov $23, %rcx
rep movsq
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0xa11, %rsi
lea addresses_UC_ht+0x13e9, %rdi
nop
nop
nop
add %rax, %rax
mov $53, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_WT_ht+0x17d69, %rax
nop
cmp %r14, %r14
movb $0x61, (%rax)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x18d21, %rax
nop
xor %rsi, %rsi
movb (%rax), %cl
nop
nop
nop
nop
cmp $30298, %rcx
lea addresses_D_ht+0x8389, %rdi
nop
sub %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x97e9, %rsi
lea addresses_WC_ht+0x1b825, %rdi
sub $57923, %rdx
mov $95, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x15be9, %rsi
lea addresses_D_ht+0xaa69, %rdi
nop
nop
xor %rdx, %rdx
mov $78, %rcx
rep movsw
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x19841, %rdi
nop
and %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
dec %r15
lea addresses_D_ht+0xa895, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %r14
movntdq %xmm5, (%r14)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x117e9, %rsi
lea addresses_normal_ht+0xa5c9, %rdi
nop
nop
nop
nop
sub $46631, %r11
mov $37, %rcx
rep movsq
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0xbf29, %rcx
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rcx), %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0xc7e9, %rsi
lea addresses_A_ht+0x1d3e9, %rdi
nop
sub $39188, %r15
mov $51, %rcx
rep movsl
nop
nop
nop
xor $56440, %rcx
lea addresses_WT_ht+0x9d55, %rsi
lea addresses_WC_ht+0x6e51, %rdi
nop
nop
and %r14, %r14
mov $80, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_normal_ht+0x1bfa9, %rsi
lea addresses_WT_ht+0x140e9, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x73b9, %r15
nop
nop
nop
nop
nop
dec %rdx
mov (%r15), %ax
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WC+0x4be9, %rsi
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rsi)
nop
cmp $34674, %rsi

// Store
lea addresses_WC+0x101e9, %r13
clflush (%r13)
nop
nop
nop
xor $57642, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%r13)
cmp $9784, %rdi

// Store
mov $0x523c7e000000067d, %r13
nop
xor %r11, %r11
movw $0x5152, (%r13)
nop
nop
xor $54353, %r13

// Load
lea addresses_PSE+0x123a9, %r14
nop
xor $45794, %rdi
mov (%r14), %r13
nop
nop
nop
cmp $51654, %r14

// Store
mov $0xe9, %rsi
clflush (%rsi)
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rsi)
nop
add $25396, %rsi

// Faulty Load
lea addresses_UC+0x27e9, %rsi
nop
nop
cmp $35433, %r14
movb (%rsi), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 15210}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
