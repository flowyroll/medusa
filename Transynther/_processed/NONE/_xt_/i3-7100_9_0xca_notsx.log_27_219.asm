.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3fe6, %r10
cmp $30257, %r12
movb (%r10), %r11b
nop
nop
nop
nop
nop
add $30302, %r14
lea addresses_D_ht+0x8022, %rsi
lea addresses_A_ht+0xd79c, %rdi
nop
nop
nop
nop
dec %rax
mov $47, %rcx
rep movsl
nop
nop
nop
nop
and $42657, %r10
lea addresses_D_ht+0x82e6, %r14
nop
nop
nop
cmp $19963, %rax
mov (%r14), %r11d
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x16a46, %rsi
lea addresses_UC_ht+0x22e6, %rdi
nop
nop
nop
inc %r11
mov $98, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x4ae6, %rsi
and $7642, %r12
movb (%rsi), %r11b
nop
xor $48966, %rax
lea addresses_WC_ht+0x103a6, %rcx
nop
nop
nop
nop
nop
inc %r10
mov (%rcx), %r11d
and %rdi, %rdi
lea addresses_normal_ht+0x1bae6, %rdi
nop
nop
xor $2470, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1ce6, %rsi
xor $35826, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
dec %rcx
lea addresses_D_ht+0x62e6, %rsi
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rsi
movaps %xmm3, (%rsi)
nop
inc %r14
lea addresses_A_ht+0xd4e6, %rax
clflush (%rax)
dec %rcx
mov (%rax), %r11w
nop
add %r14, %r14
lea addresses_WT_ht+0x1a5f6, %rsi
lea addresses_UC_ht+0x1ee6, %rdi
clflush (%rdi)
nop
nop
add %r12, %r12
mov $113, %rcx
rep movsw
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x1e13, %rbx
cmp $42995, %r8
movw $0x5152, (%rbx)
nop
xor $49133, %rbx

// Store
mov $0x186d860000000c46, %rbx
nop
nop
nop
nop
add $33531, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
xor $58343, %rsi

// Load
mov $0x5e6, %r13
nop
nop
xor %r8, %r8
mov (%r13), %r15
nop
nop
sub %r13, %r13

// Store
lea addresses_UC+0x106e6, %r15
nop
nop
dec %r13
movw $0x5152, (%r15)
nop
and %rsi, %rsi

// Store
lea addresses_D+0x19506, %r15
inc %r8
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and $43281, %rbx

// Store
mov $0x560fd40000000fe6, %r13
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r13)
nop
cmp $6561, %r14

// Faulty Load
lea addresses_PSE+0x8ae6, %r8
nop
nop
nop
nop
nop
sub $34016, %r14
mov (%r8), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'33': 27}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
