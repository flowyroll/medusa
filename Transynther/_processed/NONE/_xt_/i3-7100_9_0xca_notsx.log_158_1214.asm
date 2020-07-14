.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5d17, %r14
nop
nop
cmp %r10, %r10
movl $0x61626364, (%r14)
nop
and %r11, %r11
lea addresses_D_ht+0xe374, %r14
nop
nop
nop
nop
inc %r15
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
and $53236, %r15
lea addresses_D_ht+0x14ee4, %rsi
lea addresses_WC_ht+0x1474, %rdi
nop
nop
dec %r13
mov $89, %rcx
rep movsq
nop
dec %rdi
lea addresses_WT_ht+0x907c, %r11
clflush (%r11)
nop
nop
nop
nop
inc %rdi
movb $0x61, (%r11)
add %rdi, %rdi
lea addresses_normal_ht+0x15774, %rsi
lea addresses_WC_ht+0x6d74, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r13, %r13
mov $72, %rcx
rep movsl
nop
nop
xor $14982, %r10
lea addresses_normal_ht+0x891c, %rsi
nop
nop
nop
nop
sub $12516, %r11
mov (%rsi), %r13
nop
nop
xor $16972, %r14
lea addresses_WC_ht+0xd454, %rsi
lea addresses_A_ht+0x7e74, %rdi
clflush (%rsi)
add $43053, %rbx
mov $111, %rcx
rep movsw
add %r14, %r14
lea addresses_UC_ht+0x189d4, %rsi
lea addresses_WC_ht+0x5034, %rdi
nop
nop
nop
nop
nop
sub $25026, %r13
mov $121, %rcx
rep movsl
cmp $60765, %r14
lea addresses_normal_ht+0x6e74, %rsi
lea addresses_UC_ht+0x955e, %rdi
nop
nop
nop
xor %r14, %r14
mov $73, %rcx
rep movsw
and %r13, %r13
lea addresses_D_ht+0xa774, %r11
nop
sub %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x13a74, %r13
nop
nop
nop
add $15683, %rbx
movw $0x6162, (%r13)
nop
nop
nop
nop
sub $2842, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x17174, %rsi
dec %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0x120f4, %rbx
nop
nop
nop
sub $18157, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovaps %ymm6, (%rbx)
nop
nop
inc %rdx

// Store
mov $0x2f4, %rbx
nop
nop
add $54805, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rbx)
xor $7457, %r8

// Store
lea addresses_A+0x41f4, %rbx
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
cmp $37048, %rbp

// Store
lea addresses_D+0x33f4, %r10
nop
nop
nop
nop
sub $47141, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
nop
cmp $34373, %r10

// Faulty Load
lea addresses_WT+0x11074, %rbp
nop
nop
and $36787, %rsi
mov (%rbp), %bx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'39': 158}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
