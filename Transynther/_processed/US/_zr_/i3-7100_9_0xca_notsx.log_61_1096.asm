.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x168f, %rsi
lea addresses_normal_ht+0x20c, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $98, %rcx
rep movsw
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1250c, %r9
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
nop
add $41419, %rdi
lea addresses_UC_ht+0x18d9c, %rsi
lea addresses_WC_ht+0x390c, %rdi
nop
nop
nop
nop
and $21730, %r10
mov $68, %rcx
rep movsq
and $64422, %r9
lea addresses_normal_ht+0xfa9c, %rsi
lea addresses_D_ht+0xf34c, %rdi
nop
nop
nop
add %rax, %rax
mov $99, %rcx
rep movsl
nop
xor $63614, %r9
lea addresses_WT_ht+0x470c, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
xor $36518, %rdi
lea addresses_WC_ht+0x15002, %rax
nop
nop
nop
nop
nop
dec %rsi
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1b8cc, %rcx
cmp $57925, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
xor $35649, %r11
lea addresses_normal_ht+0x12c0c, %rsi
lea addresses_WT_ht+0xd68c, %rdi
nop
nop
nop
and $17756, %r11
mov $106, %rcx
rep movsb
nop
nop
and $5498, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1a9f, %rdx
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
cmp $61606, %rdx

// Store
lea addresses_normal+0x1b1bc, %rcx
nop
nop
nop
and $37401, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0x2cc, %r15
nop
nop
nop
nop
nop
xor $9915, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovaps %ymm6, (%r15)
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x590c, %rsi
clflush (%rsi)
nop
inc %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
inc %r12

// Store
mov $0x90c, %rdx
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rdx)
nop
and %rcx, %rcx

// Faulty Load
lea addresses_US+0x590c, %r14
nop
nop
xor %rdx, %rdx
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
