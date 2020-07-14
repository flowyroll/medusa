.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1877, %rsi
lea addresses_A_ht+0x11f9b, %rdi
nop
nop
nop
nop
nop
and $41772, %r13
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1e447, %r9
nop
sub %r12, %r12
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
cmp $23673, %r8
lea addresses_UC_ht+0x14d43, %r13
clflush (%r13)
xor $37426, %rdi
movw $0x6162, (%r13)
nop
and $26503, %rcx
lea addresses_A_ht+0x6c5f, %r13
and %r8, %r8
movb (%r13), %r9b
inc %r8
lea addresses_normal_ht+0x13d77, %rsi
lea addresses_A_ht+0x170d7, %rdi
nop
nop
nop
nop
nop
add $15967, %r14
mov $4, %rcx
rep movsw
nop
nop
nop
nop
sub $23155, %r12
lea addresses_UC_ht+0x15777, %rsi
lea addresses_WC_ht+0x2437, %rdi
nop
nop
nop
and %r12, %r12
mov $9, %rcx
rep movsl
nop
and $46506, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdi

// Load
lea addresses_US+0x1b597, %r10
clflush (%r10)
nop
xor %r13, %r13
mov (%r10), %rdi
nop
nop
nop
nop
nop
cmp $38564, %r8

// Store
mov $0x457, %r13
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%r13)
sub %r8, %r8

// Store
lea addresses_A+0xf377, %r10
clflush (%r10)
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
nop
cmp $19107, %r13

// Load
mov $0xd57, %rdi
nop
nop
nop
inc %r8
movb (%rdi), %r10b
add %r10, %r10

// Load
lea addresses_WT+0x9077, %rdi
nop
nop
add %r14, %r14
mov (%rdi), %r8
nop
add %r11, %r11

// Store
lea addresses_US+0x1d377, %r8
nop
nop
inc %r11
movl $0x51525354, (%r8)
nop
dec %r8

// Store
lea addresses_PSE+0x377, %r15
nop
nop
nop
nop
nop
and $59446, %r14
movw $0x5152, (%r15)
cmp %r14, %r14

// Store
lea addresses_WT+0x18777, %r10
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WT+0xcb58, %r10
nop
nop
nop
add %r8, %r8
movw $0x5152, (%r10)
nop
nop
nop
nop
xor $12758, %rdi

// Faulty Load
lea addresses_WT+0xb777, %r15
nop
nop
nop
cmp $37370, %r10
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'39': 195}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
