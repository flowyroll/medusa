.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1836b, %rsi
lea addresses_normal_ht+0x18657, %rdi
dec %rbx
mov $9, %rcx
rep movsb
nop
nop
nop
and $44615, %r10
lea addresses_UC_ht+0x17b2f, %rsi
lea addresses_UC_ht+0xb28b, %rdi
nop
nop
nop
nop
nop
cmp $61172, %r15
mov $69, %rcx
rep movsq
and %rcx, %rcx
lea addresses_normal_ht+0xdf6b, %rsi
lea addresses_normal_ht+0x1196b, %rdi
nop
nop
nop
dec %rbx
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1c96b, %r15
sub $42823, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r15
movntdq %xmm6, (%r15)
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1d91b, %rsi
lea addresses_WT_ht+0x20eb, %rdi
nop
nop
sub %r11, %r11
mov $126, %rcx
rep movsl
nop
nop
nop
cmp $13460, %r15
lea addresses_normal_ht+0x5d9d, %rdi
nop
nop
nop
nop
add $8621, %rax
mov (%rdi), %rcx
nop
nop
nop
nop
and $45648, %r11
lea addresses_WT_ht+0x1d9bb, %rbx
clflush (%rbx)
nop
nop
sub %rcx, %rcx
mov (%rbx), %rdi
nop
sub $24248, %r10
lea addresses_D_ht+0x40eb, %rsi
lea addresses_A_ht+0xab6b, %rdi
nop
nop
cmp $13693, %rbx
mov $42, %rcx
rep movsl
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x90eb, %rbx
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%rbx)
nop
add $3968, %rsi
lea addresses_D_ht+0xf20b, %r15
nop
nop
and $25451, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %r15
vmovntdq %ymm5, (%r15)
nop
nop
nop
nop
nop
sub $23143, %r10
lea addresses_A_ht+0x876b, %r15
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x455d, %r9
nop
nop
nop
nop
nop
add %r14, %r14
mov (%r9), %r10w
nop
nop
sub $59311, %rcx

// Store
lea addresses_US+0x1f36b, %r10
nop
nop
nop
xor %r14, %r14
movb $0x51, (%r10)
nop
xor $38231, %r10

// Store
lea addresses_US+0x1db6b, %r8
nop
add %rdi, %rdi
movb $0x51, (%r8)
xor %rcx, %rcx

// Store
lea addresses_UC+0x1104f, %r14
add $42484, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r14)
cmp %rdx, %rdx

// Store
lea addresses_A+0x195eb, %r10
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
dec %r8

// Store
lea addresses_UC+0x11b6b, %r14
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
dec %r10

// Store
mov $0x34f297000000022b, %r9
nop
nop
nop
nop
nop
add $30851, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movntdq %xmm6, (%r9)
nop
nop
add %rdx, %rdx

// Store
lea addresses_WT+0xe76b, %rcx
nop
nop
nop
inc %r10
movw $0x5152, (%rcx)
nop
inc %r9

// Load
lea addresses_US+0x444b, %rdx
nop
nop
nop
cmp $18167, %r9
mov (%rdx), %rdi
and %r9, %r9

// Faulty Load
lea addresses_US+0x1db6b, %rdx
clflush (%rdx)
nop
nop
nop
sub $569, %r9
movb (%rdx), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'58': 1}
58
*/
