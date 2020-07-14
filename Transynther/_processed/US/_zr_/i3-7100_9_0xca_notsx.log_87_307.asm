.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x40ce, %rsi
lea addresses_normal_ht+0x278c, %rdi
nop
nop
nop
cmp $62249, %r14
mov $5, %rcx
rep movsl
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1eb8e, %rsi
lea addresses_A_ht+0x458e, %rdi
nop
cmp %r12, %r12
mov $27, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1598e, %r8
nop
nop
nop
nop
add %r9, %r9
movl $0x61626364, (%r8)
dec %r9
lea addresses_D_ht+0x8f8e, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x138e, %r8
nop
nop
nop
nop
nop
dec %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x418e, %rsi
cmp $46297, %rdi
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r12
and $28826, %r14
lea addresses_normal_ht+0x8bea, %rcx
sub $298, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
sub $23048, %r14
lea addresses_D_ht+0x766, %rsi
nop
sub %r14, %r14
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
xor $26229, %r9
lea addresses_WC_ht+0x1178e, %rcx
nop
nop
nop
nop
and %r9, %r9
movb (%rcx), %r14b
nop
nop
xor $21851, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x5d0e, %r12
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r12)
nop
nop
cmp $60028, %r11

// Faulty Load
lea addresses_US+0x498e, %r8
nop
nop
cmp $41091, %rax
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 87}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
