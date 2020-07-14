.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5054, %rdx
nop
sub $9919, %r8
movb (%rdx), %al
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x70aa, %r9
nop
sub %r8, %r8
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x3f1c, %rsi
lea addresses_WT_ht+0x1a11c, %rdi
nop
nop
nop
nop
inc %r14
mov $100, %rcx
rep movsq
nop
nop
nop
dec %rax
lea addresses_normal_ht+0xf4dc, %rcx
nop
and $34307, %rdi
movb (%rcx), %r9b
nop
nop
nop
nop
nop
xor $60700, %r9
lea addresses_D_ht+0xfeb8, %rsi
lea addresses_UC_ht+0x93f4, %rdi
nop
sub $50851, %r14
mov $54, %rcx
rep movsb
and $62550, %rsi
lea addresses_UC_ht+0x41c, %rdx
nop
nop
xor $40542, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
add $42735, %rdx
lea addresses_UC_ht+0x1a31c, %r14
nop
nop
sub $17229, %rdi
mov (%r14), %rdx
nop
nop
nop
xor $35552, %rdx
lea addresses_WC_ht+0x1531c, %rsi
lea addresses_A_ht+0xaf84, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rax
mov $3, %rcx
rep movsq
nop
nop
nop
nop
nop
and $13533, %r8
lea addresses_normal_ht+0x571c, %rdx
nop
nop
nop
nop
nop
sub $65232, %r8
movb (%rdx), %cl
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x1851c, %rax
add $7456, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
and %rax, %rax
lea addresses_WC_ht+0x1631c, %rsi
lea addresses_D_ht+0x16c1c, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $110, %rcx
rep movsw
inc %rsi
lea addresses_UC_ht+0x901c, %rdi
and %rdx, %rdx
mov (%rdi), %r14w
nop
nop
add $4688, %rsi
lea addresses_D_ht+0x7384, %rdi
nop
sub $36511, %r8
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1371c, %rsi
nop
and $47236, %rdx
mov (%rsi), %edi
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WC+0x1fa9c, %rcx
xor %r14, %r14
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
and %r13, %r13

// REPMOV
lea addresses_US+0x8444, %rsi
lea addresses_PSE+0x1fd30, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r14, %r14
mov $45, %rcx
rep movsb
nop
xor %r14, %r14

// Store
mov $0xea8, %r14
nop
nop
nop
nop
nop
sub $38582, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
xor $57472, %r8

// Faulty Load
lea addresses_US+0x171c, %rdi
nop
nop
xor $10416, %rax
mov (%rdi), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 8, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 202}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
