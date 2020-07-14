.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfda9, %rsi
lea addresses_UC_ht+0x17101, %rdi
nop
nop
nop
sub %r14, %r14
mov $68, %rcx
rep movsw
and $40541, %rbp
lea addresses_UC_ht+0x123a9, %rsi
lea addresses_D_ht+0x1dba9, %rdi
nop
nop
nop
and %r12, %r12
mov $46, %rcx
rep movsl
nop
nop
xor $35918, %r14
lea addresses_A_ht+0x14125, %rbp
xor %rdi, %rdi
mov (%rbp), %rsi
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x111a9, %rsi
mov $0x797a5f00000009a9, %rdi
nop
nop
nop
nop
inc %rdx
mov $87, %rcx
rep movsw
nop
nop
nop
cmp $48121, %rsi

// REPMOV
lea addresses_WC+0x13189, %rsi
mov $0x7a53350000000809, %rdi
nop
nop
nop
cmp %rax, %rax
mov $101, %rcx
rep movsb
xor $30885, %rcx

// REPMOV
lea addresses_RW+0x15ba9, %rsi
lea addresses_normal+0x7bdd, %rdi
clflush (%rsi)
nop
nop
and $11623, %rdx
mov $98, %rcx
rep movsl
nop
nop
nop
xor $47525, %rbx

// Load
lea addresses_D+0xda9, %rcx
sub %rax, %rax
mov (%rcx), %edx
nop
nop
nop
nop
xor $8949, %rsi

// Load
lea addresses_A+0x19821, %rax
nop
nop
nop
nop
nop
cmp $23636, %rcx
mov (%rax), %dx
nop
nop
sub %rax, %rax

// Load
lea addresses_WC+0x119a9, %rcx
nop
nop
add $17996, %rax
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x82a9, %rdi
nop
nop
nop
xor $34841, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_WC+0x1f879, %rcx
nop
nop
nop
and %r10, %r10
movb (%rcx), %al
cmp %rdi, %rdi

// REPMOV
lea addresses_WC+0x16929, %rsi
lea addresses_A+0xd1a9, %rdi
xor %r13, %r13
mov $120, %rcx
rep movsq
nop
nop
nop
and $53205, %rdi

// Store
lea addresses_normal+0x1b5c1, %rdx
nop
nop
nop
nop
nop
cmp $12152, %rsi
movb $0x51, (%rdx)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x14aa9, %rcx
cmp $39258, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
sub $15720, %rdx

// Store
lea addresses_A+0x1fda9, %r13
nop
xor %rdi, %rdi
movb $0x51, (%r13)
nop
nop
nop
nop
sub $3648, %rdi

// Store
lea addresses_D+0x100a9, %rax
nop
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
mov $0x797a5f00000009a9, %rdx
nop
nop
and $31871, %rcx
mov (%rdx), %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'00': 1}
00
*/
