.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1de7, %r8
nop
nop
nop
nop
nop
inc %r11
mov (%r8), %r9d
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1e45f, %rcx
nop
sub %r15, %r15
movb (%rcx), %bl
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1745f, %r11
nop
nop
cmp $13931, %rbx
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
add $28333, %r11
lea addresses_normal_ht+0x18e1f, %rsi
lea addresses_normal_ht+0x1a15f, %rdi
dec %r11
mov $27, %rcx
rep movsq
nop
nop
inc %rcx
lea addresses_D_ht+0x7c5f, %rsi
lea addresses_WT_ht+0x3a5f, %rdi
clflush (%rdi)
nop
xor %rbx, %rbx
mov $77, %rcx
rep movsl
nop
nop
sub $15083, %rcx
lea addresses_D_ht+0xfbb7, %rsi
lea addresses_normal_ht+0x1c5f, %rdi
nop
nop
nop
add %r10, %r10
mov $63, %rcx
rep movsq
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x13def, %rsi
lea addresses_WC_ht+0x14e5f, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
add $57960, %rdi
lea addresses_UC_ht+0x31df, %rsi
nop
nop
sub $45564, %r8
mov (%rsi), %bx
nop
add %r9, %r9
lea addresses_A_ht+0x1284b, %r10
cmp $24414, %rbx
mov (%r10), %cx
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1a45f, %rcx
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x1b135, %rcx
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x3e5f, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %rdi
movntdq %xmm2, (%rdi)
sub %r15, %r15
lea addresses_WC_ht+0x18a11, %rcx
and %r11, %r11
movb $0x61, (%rcx)
nop
cmp $36135, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %r8
push %rbx

// Store
lea addresses_A+0xde27, %r10
nop
nop
nop
add $7134, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovaps %ymm6, (%r10)
nop
nop
cmp $40258, %r11

// Store
lea addresses_WT+0x6c5f, %r15
inc %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_D+0x1345f, %r15
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovaps %ymm3, (%r15)
nop
dec %r12

// Load
lea addresses_WT+0x6c5f, %r11
dec %r12
mov (%r11), %r10w
nop
nop
nop
nop
and $9618, %r11

// Load
lea addresses_WT+0x885f, %r10
and $30174, %r12
mov (%r10), %r15
nop
add %r12, %r12

// Load
lea addresses_PSE+0x19c48, %r8
nop
nop
nop
and $34084, %r13
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_A+0x19f, %r12
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r12)
nop
cmp $27422, %rbx

// Store
lea addresses_WT+0x929f, %r15
sub %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_WT+0x6c5f, %r8
nop
nop
and %r13, %r13
mov (%r8), %r10d
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'54': 21318}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
