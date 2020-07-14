.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13be7, %r13
nop
and $20104, %rsi
movb $0x61, (%r13)
add %r14, %r14
lea addresses_A_ht+0x15267, %rsi
lea addresses_WT_ht+0xe5d7, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $90, %rcx
rep movsw
xor %r14, %r14
lea addresses_WC_ht+0x3067, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
movb (%rcx), %r13b
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1d0cf, %rsi
lea addresses_WT_ht+0x73e7, %rdi
sub $6217, %r14
mov $20, %rcx
rep movsq
nop
add $19727, %rdi
lea addresses_normal_ht+0xee7, %rsi
lea addresses_D_ht+0x6467, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $70, %rcx
rep movsl
nop
nop
nop
add $59999, %r13
lea addresses_WC_ht+0x518b, %rsi
lea addresses_D_ht+0x1c133, %rdi
clflush (%rdi)
nop
add %r8, %r8
mov $23, %rcx
rep movsw
nop
add $60064, %rsi
lea addresses_normal_ht+0xbc07, %r11
nop
nop
nop
nop
nop
dec %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
cmp $39545, %r11
lea addresses_A_ht+0x8367, %rsi
clflush (%rsi)
sub %r14, %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
add $1509, %r13
lea addresses_WC_ht+0x1c367, %r8
nop
add $33233, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x8667, %rbp
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rbp)
nop
add %r13, %r13
lea addresses_UC_ht+0x3f67, %rbp
nop
nop
nop
nop
dec %rcx
mov (%rbp), %edi
nop
nop
add $20462, %r13
lea addresses_UC_ht+0x71af, %rsi
nop
nop
nop
cmp %r13, %r13
mov (%rsi), %r8d
nop
nop
and $46737, %r14
lea addresses_D_ht+0x10a67, %r13
nop
nop
nop
nop
cmp $33173, %r14
mov (%r13), %esi
xor $12036, %r13
lea addresses_UC_ht+0x1b9f3, %r13
nop
nop
nop
nop
add %r14, %r14
mov (%r13), %cx
sub $21985, %r11
lea addresses_D_ht+0x4a67, %r11
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%r11)
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xf167, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x12267, %r14
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x14027, %r9
nop
nop
nop
xor $57765, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0x94af, %rdx
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x51, (%rdx)
nop
nop
nop
nop
sub %rcx, %rcx

// REPMOV
lea addresses_A+0x37a7, %rsi
lea addresses_UC+0x1d3e7, %rdi
nop
sub %rbx, %rbx
mov $100, %rcx
rep movsb
xor $38657, %rcx

// Load
lea addresses_D+0x19f4b, %rdx
nop
and $28122, %rcx
mov (%rdx), %bx
nop
nop
nop
nop
nop
xor $9331, %r11

// Faulty Load
lea addresses_A+0x11267, %r11
nop
nop
nop
sub $131, %rdx
mov (%r11), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 2}}
{'src': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}}
{'35': 21828, '00': 1}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
