.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5efe, %r13
nop
nop
nop
inc %r10
mov (%r13), %di
sub %rsi, %rsi
lea addresses_normal_ht+0xe0f0, %r8
nop
sub %rsi, %rsi
mov (%r8), %r13d
sub $61526, %rdi
lea addresses_D_ht+0x2ee6, %rsi
lea addresses_A_ht+0x1a30, %rdi
clflush (%rdi)
nop
nop
nop
add $60191, %r12
mov $13, %rcx
rep movsq
cmp %r10, %r10
lea addresses_WC_ht+0x11230, %r13
nop
nop
nop
nop
cmp $21720, %r12
mov (%r13), %esi
nop
nop
nop
nop
nop
add $30824, %r13
lea addresses_WT_ht+0x1af30, %rsi
lea addresses_D_ht+0x1a7e0, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $52, %rcx
rep movsl
xor $22699, %rcx
lea addresses_WT_ht+0x1a9c8, %rsi
nop
nop
nop
sub %r8, %r8
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x24a8, %r10
nop
nop
and $27143, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovntdq %ymm3, (%r10)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_US+0x1f390, %r11
nop
nop
nop
nop
sub $3710, %r10
movl $0x51525354, (%r11)
nop
sub $1543, %rbx

// Load
lea addresses_PSE+0xa30, %r8
nop
nop
nop
nop
xor $38921, %r9
mov (%r8), %r10
nop
dec %r11

// Store
lea addresses_WT+0x190f0, %r11
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r11)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0x19eb0, %rdi
nop
nop
xor $26435, %rbx
movl $0x51525354, (%rdi)
nop
inc %rbx

// Store
lea addresses_A+0x4230, %r11
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovntdq %ymm0, (%r11)
add $24146, %r8

// Faulty Load
lea addresses_A+0x4230, %r11
nop
sub $165, %rbx
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
