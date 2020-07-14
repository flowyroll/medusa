.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x723b, %r14
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x15dd7, %r13
nop
sub $1425, %r8
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x323b, %rsi
lea addresses_D_ht+0x1e7ab, %rdi
xor %r13, %r13
mov $28, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1e93b, %rsi
lea addresses_WC_ht+0x153b, %rdi
nop
nop
add $47724, %r9
mov $121, %rcx
rep movsb
nop
nop
nop
nop
cmp $20018, %rsi
lea addresses_D_ht+0x1d83b, %rcx
nop
xor $49299, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x11e3b, %r15
nop
nop
add $21161, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
sub $9921, %r9
lea addresses_WT_ht+0x83b, %rsi
xor $40599, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x913b, %r15
nop
nop
nop
inc %rcx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x1d63b, %rsi
lea addresses_A_ht+0x4587, %rdi
clflush (%rsi)
nop
nop
nop
dec %r8
mov $28, %rcx
rep movsq
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x172bb, %rbx
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x1f703, %r11
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x1681b, %rax
clflush (%rax)
nop
nop
add %r15, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
sub $22569, %r15

// REPMOV
lea addresses_UC+0xb0bb, %rsi
lea addresses_D+0x110bb, %rdi
nop
inc %r9
mov $102, %rcx
rep movsq
nop
nop
nop
add $28874, %r15

// Load
lea addresses_WC+0x13e2b, %r11
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%r11), %bl
cmp %rcx, %rcx

// Store
lea addresses_D+0x8e3b, %rdi
nop
nop
nop
nop
and $15464, %r15
movl $0x51525354, (%rdi)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_normal+0xd23b, %r9
nop
nop
nop
and %rsi, %rsi
vmovntdqa (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'08': 2, '72': 4, '44': 8445, '49': 13378}
44 49 49 49 49 49 49 44 44 49 44 49 49 49 44 49 49 44 49 44 49 49 44 49 44 49 44 49 44 49 44 44 44 49 44 49 44 49 44 44 44 49 44 49 49 49 49 49 44 44 49 49 49 49 44 49 49 49 44 49 44 49 49 49 44 49 49 44 49 49 49 49 49 44 44 49 49 49 49 49 44 49 44 49 49 49 49 49 49 44 49 49 44 49 49 49 49 44 49 44 49 44 49 49 44 44 44 44 44 49 44 49 44 44 49 44 49 49 49 49 44 49 44 44 49 49 44 49 49 49 44 44 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 44 49 44 44 49 49 49 44 44 44 44 44 49 49 49 44 49 49 44 49 44 49 49 49 49 44 44 44 49 49 44 49 44 44 49 49 44 44 49 49 44 49 49 49 49 44 44 44 44 49 44 49 44 44 49 49 44 49 44 49 44 49 44 49 49 44 44 49 49 44 49 49 44 44 49 49 44 49 44 44 49 44 49 49 44 49 49 49 49 49 49 49 49 44 49 44 49 44 49 44 44 49 49 44 44 44 44 49 49 44 44 49 49 49 44 49 44 49 44 49 49 44 49 44 49 49 49 49 49 49 44 44 49 49 49 44 44 44 49 44 49 49 49 49 49 44 49 44 49 44 49 44 49 49 49 44 49 49 49 44 49 44 49 44 49 44 49 49 49 49 44 44 49 44 44 49 49 49 49 49 49 49 44 49 49 44 49 49 49 44 49 49 49 44 49 49 44 44 44 49 49 44 49 49 49 49 49 49 49 44 49 44 44 49 49 44 44 49 44 44 49 49 44 49 49 44 49 49 49 49 49 49 44 49 44 44 49 49 49 49 49 49 49 44 44 44 44 49 44 44 44 49 49 44 49 44 44 44 49 44 49 49 44 49 49 49 44 49 49 49 49 44 44 44 49 49 49 44 49 49 49 44 44 49 49 44 44 44 49 49 49 44 49 44 49 49 49 49 49 49 44 49 49 44 49 49 49 44 49 44 44 49 49 49 44 49 44 44 49 44 49 49 49 49 49 49 49 44 49 44 44 49 49 44 44 49 44 49 49 49 49 44 44 49 49 44 44 44 44 49 49 49 49 49 44 44 44 44 44 49 49 49 49 44 49 49 49 44 49 49 49 49 44 49 44 49 49 44 44 44 44 49 49 49 44 49 44 49 44 49 44 44 49 49 44 44 44 44 49 44 49 49 49 44 44 49 44 44 49 44 49 49 49 44 49 49 49 49 49 49 44 49 44 49 44 49 49 44 49 44 44 44 44 44 44 44 49 49 44 49 44 49 44 49 49 49 44 49 49 44 49 49 49 44 49 49 49 44 49 44 44 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 44 49 49 44 49 49 44 49 49 44 49 49 49 49 49 49 44 44 49 44 49 49 49 49 44 49 49 49 44 49 49 49 49 44 44 49 49 44 49 44 49 49 49 44 44 44 44 44 49 44 49 49 49 49 49 49 44 49 44 44 44 44 44 49 49 49 44 44 49 49 49 44 49 49 49 49 44 49 44 49 44 44 44 49 49 49 49 44 44 44 49 49 49 49 49 49 44 49 49 49 44 49 44 49 49 44 49 49 44 49 44 49 44 49 44 49 44 44 49 44 49 49 49 49 49 49 44 49 44 49 49 49 49 49 44 49 44 49 44 49 49 49 49 44 49 44 49 44 44 44 44 44 44 44 44 44 44 49 49 49 44 49 44 49 49 49 49 44 49 49 44 49 49 49 44 44 44 49 49 49 49 44 49 44 49 44 49 44 49 49 49 44 49 44 49 49 44 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 44 44 49 44 49 49 44 49 49 44 49 44 44 44 49 49 49 49 44 49 44 44 49 44 49 49 49 44 44 44 44 44 49 44 49 44 49 44 49 49 49 49 44 49 44 49 49 49 49 44 49 44 44 49 49 44 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 44 49 44 44 44 44 49 49 49 49 49 49 49 49 49 44 49 49 44 44 49 49 49 49 49 49 49 49 49 44 44 44 49 49 44 49 49 49 49 44 49 44 49 49 44 49 49 49 44 44 49 49 44 49 44 49 44 44 44 49 49
*/
