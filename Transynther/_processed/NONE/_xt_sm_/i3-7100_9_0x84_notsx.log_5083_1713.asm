.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x165b1, %rdx
nop
nop
nop
xor %r8, %r8
mov (%rdx), %r13w
nop
nop
xor $37050, %r9
lea addresses_normal_ht+0x1adb1, %rsi
nop
nop
cmp $47944, %r12
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
and $42387, %r13
lea addresses_UC_ht+0x19731, %rsi
lea addresses_D_ht+0x101b1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $42561, %r14
mov $85, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x123f1, %r14
nop
nop
and %r12, %r12
movl $0x61626364, (%r14)
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x1bc31, %r9
xor $22002, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0xedb1, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp $5302, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x3f81, %r8
sub %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
nop
and $48373, %r9
lea addresses_D_ht+0xc149, %r9
add $18652, %r14
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
cmp $51141, %r12
lea addresses_UC_ht+0xb1, %r14
nop
nop
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x104d1, %r14
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
nop
nop
sub $52310, %rsi
lea addresses_normal_ht+0xd031, %rdx
nop
nop
and $64392, %rcx
mov (%rdx), %r14d
sub %rdx, %rdx
lea addresses_A_ht+0x18c31, %rsi
lea addresses_D_ht+0x1a69, %rdi
nop
nop
and $52580, %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1ce31, %rsi
lea addresses_UC_ht+0x1e391, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $25, %rcx
rep movsb
nop
nop
cmp $3802, %r8
lea addresses_D_ht+0x5f91, %rcx
nop
add $63278, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rcx
vmovaps %ymm7, (%rcx)
nop
nop
nop
nop
nop
add $28763, %rdi
pop %rsi
pop %rdx
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
push %r15
push %r8
push %rax
push %rbx

// Store
lea addresses_PSE+0x1521, %r11
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%r11)
nop
sub $44259, %rax

// Store
lea addresses_UC+0xe2b1, %r10
nop
nop
nop
nop
nop
inc %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_WT+0x17db1, %r13
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r13)
cmp $31723, %r8

// Store
mov $0xa31, %rax
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
and $7160, %r15

// Store
lea addresses_WT+0x199b1, %r8
nop
nop
sub %r15, %r15
movb $0x51, (%r8)
nop
nop
nop
sub $18239, %r15

// Load
lea addresses_WC+0x1b1b1, %r13
nop
nop
xor $14519, %r10
movb (%r13), %al
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x11db1, %r13
nop
nop
nop
nop
cmp $57007, %r8
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp $32036, %r13

// Store
lea addresses_normal+0x133c1, %r15
clflush (%r15)
add %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
and $16344, %r15

// Faulty Load
lea addresses_A+0x11db1, %rax
nop
nop
nop
nop
and $28515, %r15
mov (%rax), %r8
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'51': 5083}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
