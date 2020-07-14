.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14f21, %r14
nop
nop
add $54792, %r10
movb $0x61, (%r14)
cmp $14653, %rsi
lea addresses_WT_ht+0x134db, %rsi
lea addresses_D_ht+0x7ef9, %rdi
nop
nop
xor $25189, %r14
mov $25, %rcx
rep movsl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0xd615, %r9
nop
nop
xor $31740, %r11
movl $0x61626364, (%r9)
sub $49986, %rdi
lea addresses_A_ht+0x15619, %r10
nop
inc %r14
mov (%r10), %rcx
nop
nop
nop
nop
add $63182, %rdi
lea addresses_D_ht+0x12a19, %rsi
lea addresses_WT_ht+0x11c09, %rdi
nop
nop
and %r10, %r10
mov $4, %rcx
rep movsb
nop
nop
nop
and $19908, %rcx
lea addresses_A_ht+0x18ce9, %r10
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r10)
nop
nop
add %r9, %r9
lea addresses_UC_ht+0xd119, %r9
clflush (%r9)
nop
sub $31542, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
xor $49761, %r10
lea addresses_normal_ht+0xfbb9, %rsi
lea addresses_WC_ht+0x1b119, %rdi
nop
nop
nop
nop
nop
sub $56699, %rdx
mov $39, %rcx
rep movsq
nop
xor %rdx, %rdx
lea addresses_A_ht+0x54b1, %rdi
clflush (%rdi)
nop
nop
dec %rdx
movw $0x6162, (%rdi)
nop
sub $8371, %r14
lea addresses_A_ht+0x1ee19, %rsi
dec %rcx
mov (%rsi), %r14
nop
and %r11, %r11
lea addresses_D_ht+0x136f9, %rsi
lea addresses_WT_ht+0x17a19, %rdi
nop
nop
inc %r9
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $9721, %r9
lea addresses_WT_ht+0x10d99, %rsi
lea addresses_normal_ht+0x1c509, %rdi
sub $36253, %r14
mov $68, %rcx
rep movsq
nop
nop
nop
xor $59597, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0x1c449, %rsi
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rsi)
cmp %r9, %r9

// Store
mov $0x339, %rax
nop
nop
nop
inc %r8
movl $0x51525354, (%rax)
sub %r8, %r8

// Store
lea addresses_US+0x12a19, %r15
xor %r8, %r8
movb $0x51, (%r15)
nop
and $4670, %r9

// Load
lea addresses_A+0x13e09, %rax
clflush (%rax)
nop
nop
nop
and %r14, %r14
mov (%rax), %r15w
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0xde19, %rsi
nop
nop
sub $12393, %rax
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_A+0xd219, %r15
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
inc %r9

// Store
mov $0x785, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
movb $0x51, (%r15)
nop
xor %r14, %r14

// Store
lea addresses_D+0x8aa5, %rcx
nop
nop
nop
nop
cmp $55153, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
sub $8658, %r15

// Faulty Load
lea addresses_UC+0x8219, %r15
nop
nop
nop
nop
add %rax, %rax
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'00': 382}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
