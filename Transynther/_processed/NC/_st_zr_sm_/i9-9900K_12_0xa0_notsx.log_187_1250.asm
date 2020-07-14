.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13f75, %rsi
lea addresses_UC_ht+0x15615, %rdi
nop
nop
nop
nop
nop
and $19334, %r9
mov $43, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_A_ht+0x5695, %r11
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r11), %r12w
nop
nop
xor $38312, %rsi
lea addresses_D_ht+0x7b95, %rsi
lea addresses_WC_ht+0xa175, %rdi
nop
nop
nop
mfence
mov $8, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1d373, %rcx
nop
nop
nop
nop
and %r12, %r12
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1a395, %r11
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r11)
add $33362, %rdi
lea addresses_WT_ht+0x18175, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rdi), %r11w
cmp %r15, %r15
lea addresses_D_ht+0x3115, %rsi
lea addresses_A_ht+0xeb15, %rdi
clflush (%rdi)
cmp $44271, %r12
mov $113, %rcx
rep movsw
nop
nop
nop
and $43984, %r8
lea addresses_WT_ht+0x1cf2b, %r9
add $21857, %r8
movb (%r9), %r15b
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0xd215, %r8
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xcc49, %r11
nop
nop
nop
nop
nop
add $41135, %r12
mov (%r11), %si
nop
nop
nop
xor $32200, %r15
lea addresses_UC_ht+0xd015, %r8
nop
nop
nop
add $45217, %rsi
movb $0x61, (%r8)
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x7715, %r9
nop
nop
sub $43303, %r12
movw $0x6162, (%r9)
nop
nop
cmp $54564, %r12
lea addresses_D_ht+0x8b8d, %r9
nop
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%r9)
nop
xor $20008, %r11
lea addresses_D_ht+0xad75, %r9
dec %rsi
movb (%r9), %cl
nop
nop
mfence
pop %rsi
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
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x1c015, %r15
nop
nop
dec %rcx
movups (%r15), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
inc %rcx

// Store
mov $0xbfcce0000000f15, %rax
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%rax)
nop
nop
nop
nop
nop
sub $31480, %r14

// Store
lea addresses_PSE+0x14615, %r15
clflush (%r15)
nop
nop
nop
add $13840, %rdi
movw $0x5152, (%r15)
nop
nop
xor $34844, %rbp

// Store
lea addresses_D+0xbe75, %r15
nop
nop
add $58617, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r15)
cmp %rdi, %rdi

// Store
lea addresses_PSE+0x18e15, %rsi
nop
nop
xor $57640, %rax
movw $0x5152, (%rsi)
nop
nop
xor $56531, %rcx

// Store
lea addresses_WT+0x1d915, %r14
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WT+0xc275, %r15
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_WC+0x1abc4, %r14
nop
sub $47850, %rbp
movb (%r14), %al
sub %r14, %r14

// Store
lea addresses_US+0x1ff15, %rcx
nop
nop
nop
add $29388, %r14
movl $0x51525354, (%rcx)
nop
add $28557, %r14

// Store
mov $0xbfcce0000000f15, %r15
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
mov $0xbfcce0000000f15, %rcx
nop
nop
dec %rdi
mov (%rcx), %r14w
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'54': 177, '00': 10}
54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 00 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54
*/
