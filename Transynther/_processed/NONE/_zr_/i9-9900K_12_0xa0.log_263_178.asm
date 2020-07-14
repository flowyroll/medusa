.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x20bb, %rsi
lea addresses_WC_ht+0x8ea3, %rdi
nop
nop
nop
nop
nop
and $8529, %r15
mov $43, %rcx
rep movsl
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x10bf3, %rsi
lea addresses_UC_ht+0x3169, %rdi
nop
nop
nop
cmp %rax, %rax
mov $41, %rcx
rep movsw
sub $25497, %rcx
lea addresses_WT_ht+0x12aa3, %rsi
lea addresses_UC_ht+0xb663, %rdi
nop
nop
inc %rdx
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
add $6778, %rdi
lea addresses_normal_ht+0x1d9cb, %rdx
nop
sub %r10, %r10
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rsi
nop
inc %rax
lea addresses_WC_ht+0x166a3, %rcx
nop
nop
nop
nop
add $35807, %rdi
mov (%rcx), %rdx
xor %r10, %r10
lea addresses_UC_ht+0x15aa3, %r10
sub %rdx, %rdx
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
nop
inc %r10
lea addresses_WC_ht+0xa1d8, %rsi
lea addresses_WT_ht+0x15343, %rdi
nop
nop
add $19181, %rbx
mov $33, %rcx
rep movsq
nop
nop
nop
nop
sub $24575, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x18773, %rsi
lea addresses_A+0xf063, %rdi
inc %r14
mov $12, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_WC+0x1e9a3, %rbp
nop
nop
nop
nop
nop
and $53807, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_US+0x3a6b, %rsi
nop
dec %rdi
movw $0x5152, (%rsi)
nop
nop
dec %rbp

// Load
lea addresses_WC+0x53a3, %r11
nop
xor %rsi, %rsi
mov (%r11), %bp
nop
nop
nop
nop
cmp $5535, %rdi

// Faulty Load
lea addresses_WT+0x26a3, %r9
nop
nop
and $41104, %r14
mov (%r9), %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'00': 263}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
