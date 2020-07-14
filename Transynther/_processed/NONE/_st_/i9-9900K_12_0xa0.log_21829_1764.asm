.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13ab6, %r8
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r8)
nop
and %r12, %r12
lea addresses_UC_ht+0x8396, %r8
nop
nop
nop
xor $58238, %rbx
movw $0x6162, (%r8)
nop
nop
cmp $30835, %rbx
lea addresses_WT_ht+0x13a3c, %rsi
nop
nop
nop
nop
dec %r14
movb $0x61, (%rsi)
nop
nop
xor $49545, %rbx
lea addresses_D_ht+0x696, %r8
nop
inc %rbx
mov (%r8), %r11d
nop
nop
nop
nop
sub $27916, %r13
lea addresses_WC_ht+0x17856, %rsi
lea addresses_normal_ht+0xed4c, %rdi
nop
nop
inc %r8
mov $114, %rcx
rep movsb
nop
add %r13, %r13
lea addresses_WT_ht+0x7996, %rsi
lea addresses_WT_ht+0x1755e, %rdi
nop
nop
nop
sub %r8, %r8
mov $49, %rcx
rep movsl
nop
nop
add $51559, %r11
lea addresses_WT_ht+0x1d230, %rdi
dec %r14
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x1d196, %rcx
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x5eb6, %r12
nop
cmp $49545, %rdi
mov (%r12), %r11d
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x5b26, %r12
nop
cmp %r11, %r11
movl $0x61626364, (%r12)
nop
nop
nop
sub $53217, %rbx
lea addresses_D_ht+0x155be, %rbx
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x2396, %r13
clflush (%r13)
xor %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
add $12527, %r11
lea addresses_WC_ht+0x3c44, %r13
nop
nop
nop
nop
nop
add %r8, %r8
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
cmp $11533, %r11
lea addresses_D_ht+0x5ee, %r14
nop
nop
dec %r12
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
nop
add $4147, %rcx
lea addresses_A_ht+0x1d2a6, %rsi
lea addresses_UC_ht+0x5696, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $89, %rcx
rep movsl
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_A+0x1e396, %r8
nop
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%r8)
and %r15, %r15

// Load
lea addresses_UC+0x13b96, %r11
nop
nop
nop
xor %r14, %r14
movb (%r11), %r8b
nop
nop
xor %rsi, %rsi

// Store
mov $0x3b57cd0000000d7e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $3686, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
inc %r15

// Store
mov $0x196, %r15
cmp $65439, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r15)
sub %r11, %r11

// Store
lea addresses_US+0x78a0, %r15
and %r8, %r8
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add $221, %rsi

// Load
lea addresses_PSE+0x5596, %r15
nop
nop
nop
add $29906, %rcx
mov (%r15), %r11d
xor %rsi, %rsi

// Faulty Load
lea addresses_WT+0x8196, %r15
nop
nop
nop
and $50763, %rcx
mov (%r15), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
