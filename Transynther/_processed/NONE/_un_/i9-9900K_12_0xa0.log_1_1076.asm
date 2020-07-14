.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4199, %rbp
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x16193, %rbp
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x2ea3, %r8
clflush (%r8)
nop
nop
nop
dec %rdx
mov (%r8), %ebp
nop
xor %r8, %r8
lea addresses_normal_ht+0x10419, %rsi
lea addresses_normal_ht+0x3b93, %rdi
nop
nop
nop
cmp %r8, %r8
mov $66, %rcx
rep movsw
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0xecef, %rcx
nop
nop
nop
cmp %rbp, %rbp
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
xor $22317, %rbx
lea addresses_normal_ht+0x16213, %rsi
lea addresses_normal_ht+0x1ae93, %rdi
nop
cmp %r8, %r8
mov $100, %rcx
rep movsl
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x5667, %rsi
lea addresses_D_ht+0x3b93, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
add $59404, %rbx
lea addresses_WT_ht+0x14a8b, %rsi
nop
nop
nop
nop
nop
and $39898, %r8
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
sub $7787, %rbp
lea addresses_UC_ht+0x12fcb, %rdx
xor $18109, %r8
mov (%rdx), %ebp
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xe87a, %rsi
lea addresses_WT_ht+0x12293, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $67, %rcx
rep movsw
xor $17932, %rsi
lea addresses_UC_ht+0x10ad3, %rdx
nop
xor $2039, %r8
movl $0x61626364, (%rdx)
nop
nop
dec %rbp
lea addresses_UC_ht+0x19913, %r8
clflush (%r8)
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x5f93, %rsi
lea addresses_normal_ht+0x1e793, %rdi
nop
nop
sub %rdx, %rdx
mov $31, %rcx
rep movsl
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x2793, %rsi
lea addresses_normal_ht+0x19c43, %rdi
nop
nop
nop
sub $9811, %rdx
mov $42, %rcx
rep movsl
nop
cmp $31772, %rbx
lea addresses_D_ht+0xc093, %rsi
lea addresses_A_ht+0x1ea23, %rdi
nop
nop
add %rbx, %rbx
mov $122, %rcx
rep movsb
nop
nop
nop
nop
xor $56661, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x14313, %r12
nop
nop
nop
nop
nop
dec %r8
movb $0x51, (%r12)
nop
nop
cmp $13292, %r8

// Store
lea addresses_PSE+0xd123, %r11
nop
nop
nop
nop
xor $46081, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_A+0x14824, %r15
nop
nop
cmp $42124, %rax
movb $0x51, (%r15)
nop
nop
nop
nop
dec %r11

// Store
mov $0x2af8f50000000e6b, %r15
nop
nop
nop
dec %rdi
movl $0x51525354, (%r15)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x13393, %r8
clflush (%r8)
nop
and %r13, %r13
movb $0x51, (%r8)
nop
nop
inc %rdi

// Store
lea addresses_US+0x50af, %rax
add $38060, %r12
mov $0x5152535455565758, %r8
movq %r8, (%rax)

// Exception!!!
nop
nop
nop
nop
xor %r8, %r8
div %r8
nop
nop
nop
nop
nop
sub $41763, %r15

// Store
lea addresses_UC+0x104b, %r15
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r15)
nop
sub $11208, %r13

// Store
lea addresses_UC+0x5793, %r8
nop
nop
cmp $15980, %rax
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
xor %rax, %rax
div %rax
nop
nop
cmp $29882, %r11

// REPMOV
lea addresses_normal+0x1908f, %rsi
mov $0x683, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $113, %rcx
rep movsl

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
cmp $47924, %rdi

// Store
lea addresses_UC+0x1bf3, %r15
nop
nop
nop
nop
and $59094, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
dec %rax

// Faulty Load
lea addresses_RW+0x1793, %r13
clflush (%r13)
cmp %rax, %rax
mov (%r13), %esi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'7d': 1}
7d
*/
