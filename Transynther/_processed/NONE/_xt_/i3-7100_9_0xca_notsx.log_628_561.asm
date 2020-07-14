.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi
lea addresses_WC_ht+0x1c37e, %rcx
nop
nop
nop
and $63995, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
nop
nop
sub $38755, %r10
lea addresses_normal_ht+0x123f9, %rbx
nop
nop
nop
xor %rcx, %rcx
mov (%rbx), %dx
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x310f, %rcx
nop
nop
nop
nop
xor %r15, %r15
movb (%rcx), %r10b
nop
nop
cmp $49896, %rbp
lea addresses_normal_ht+0x1966f, %r10
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r10), %esi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x15bbf, %rdx
xor %rbp, %rbp
mov (%rdx), %si
add $35782, %r10
lea addresses_WT_ht+0x112e1, %rsi
nop
nop
nop
and $25978, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0xd7cf, %rdx
nop
nop
xor $33676, %rbx
mov (%rdx), %esi
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1e50f, %r15
nop
xor $60601, %rcx
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0xc8b, %rbp
nop
nop
nop
nop
sub $59583, %r15
movups (%rbp), %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
and $46754, %rcx
lea addresses_WC_ht+0xde0f, %rbx
nop
nop
nop
cmp %r15, %r15
mov (%rbx), %ebp
nop
nop
nop
nop
nop
add $46627, %rbp
lea addresses_D_ht+0x9a0f, %r15
nop
cmp $57319, %rcx
movb $0x61, (%r15)
nop
add %rbp, %rbp
lea addresses_normal_ht+0x790f, %rsi
clflush (%rsi)
nop
nop
xor $11815, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0xa0d, %r11
nop
nop
add $11129, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
and %r11, %r11

// Store
lea addresses_D+0x1f30f, %r11
clflush (%r11)
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
add $28352, %rsi

// Store
lea addresses_UC+0xed0f, %rdx
nop
nop
nop
add $26257, %r10
movl $0x51525354, (%rdx)
sub %r10, %r10

// Store
lea addresses_WC+0xc7af, %rdx
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rdx)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x1ce0f, %r10
nop
nop
dec %rdx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 7, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'33': 628}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
