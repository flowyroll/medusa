.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bcd6, %rsi
lea addresses_UC_ht+0x14ad6, %rdi
clflush (%rsi)
nop
nop
add $46527, %r14
mov $87, %rcx
rep movsq
sub $21669, %r8
lea addresses_normal_ht+0xb856, %rsi
lea addresses_normal_ht+0x15fd2, %rdi
nop
nop
nop
nop
and $13443, %r11
mov $65, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xe97e, %rsi
lea addresses_UC_ht+0xae7f, %rdi
clflush (%rsi)
nop
nop
and $44165, %r9
mov $3, %rcx
rep movsb
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1b8b2, %rsi
nop
nop
nop
nop
nop
add %r8, %r8
movb (%rsi), %r9b
and $51480, %r9
lea addresses_UC_ht+0x11ad6, %r8
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xe2d6, %r11
nop
nop
nop
nop
cmp $36467, %rsi
movl $0x61626364, (%r11)
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1c782, %r8
nop
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
mfence
lea addresses_normal_ht+0xee16, %r11
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%r11), %rdi
nop
nop
xor $26322, %r14
lea addresses_D_ht+0x16dfa, %r14
clflush (%r14)
nop
nop
nop
and $54116, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x11086, %r14
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r14)
nop
sub %r8, %r8
lea addresses_WT_ht+0x3016, %rdi
sub %rcx, %rcx
mov (%rdi), %r11
cmp %rdi, %rdi
lea addresses_normal_ht+0x11480, %r8
nop
nop
xor %r14, %r14
mov (%r8), %ecx
nop
sub $44522, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WC+0x1aad6, %rdx
nop
nop
nop
nop
nop
dec %rsi
vmovntdqa (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_WC+0x3ed6, %r8
nop
nop
nop
nop
add %rcx, %rcx
mov (%r8), %si
nop
nop
nop
xor $19219, %rsi

// Store
lea addresses_A+0x866e, %rsi
nop
nop
sub $4151, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
sub $35035, %rsi

// Store
lea addresses_PSE+0x19ad6, %rdx
and $56117, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
cmp $3309, %rsi

// Store
lea addresses_RW+0x3ad6, %r12
nop
nop
nop
nop
nop
sub $46268, %r10
movl $0x51525354, (%r12)
nop
inc %r12

// Store
lea addresses_UC+0x1f396, %rdx
add %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rdx)

// Exception!!!
mov (0), %r8
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_WC+0x1aad6, %rbx
nop
nop
nop
nop
nop
inc %rdx
mov (%rbx), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
