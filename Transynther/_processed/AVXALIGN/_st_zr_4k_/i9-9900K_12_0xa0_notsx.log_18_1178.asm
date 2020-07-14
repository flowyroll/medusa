.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9535, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r14), %r8b
nop
nop
nop
nop
nop
sub $16720, %rdi
lea addresses_normal_ht+0x1ca75, %rcx
nop
cmp $2922, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x11d1d, %rcx
nop
nop
nop
lfence
mov (%rcx), %r10d
nop
dec %r11
lea addresses_WC_ht+0x12d8d, %rsi
lea addresses_normal_ht+0xb365, %rdi
nop
nop
sub %r9, %r9
mov $72, %rcx
rep movsw
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x10aa5, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r9), %r8
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x7275, %r9
xor %r10, %r10
mov (%r9), %r11d
nop
nop
nop
sub $48742, %rcx
lea addresses_normal_ht+0x16335, %rsi
lea addresses_WT_ht+0x10535, %rdi
nop
nop
xor %r9, %r9
mov $9, %rcx
rep movsw
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0x44d, %rax
nop
inc %r8
movl $0x51525354, (%rax)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x17a75, %r8
nop
nop
nop
cmp $19268, %rcx
movb $0x51, (%r8)
nop
nop
dec %rax

// Load
mov $0x5417370000000a75, %r11
nop
nop
nop
inc %r10
mov (%r11), %r8
dec %r8

// Store
lea addresses_WC+0x1fa75, %r11
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r11)
nop
cmp %rax, %rax

// Load
lea addresses_WC+0xd475, %r11
nop
xor $22155, %rax
movb (%r11), %r15b
sub $24364, %rsi

// Store
lea addresses_UC+0x4175, %rsi
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%rsi)
cmp %rcx, %rcx

// Store
lea addresses_WT+0x5ef5, %rcx
clflush (%rcx)
and $12692, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
cmp $37170, %r8

// Faulty Load
mov $0x5417370000000a75, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi
mov (%r10), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'52': 17, '00': 1}
00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
