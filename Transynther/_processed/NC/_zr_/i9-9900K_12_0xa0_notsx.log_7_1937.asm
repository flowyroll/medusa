.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf48b, %rsi
lea addresses_A_ht+0x18ccb, %rdi
nop
and $45348, %r15
mov $118, %rcx
rep movsq
nop
and $18039, %r12
lea addresses_UC_ht+0x32cb, %rsi
lea addresses_WT_ht+0x434b, %rdi
nop
nop
nop
nop
and $64589, %r13
mov $72, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x12c8b, %rcx
xor $55186, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
and $1716, %r12
lea addresses_D_ht+0x16933, %r12
clflush (%r12)
nop
nop
nop
nop
lfence
mov (%r12), %r15d
nop
nop
dec %rcx
lea addresses_A_ht+0x121cb, %r12
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r12
movntdq %xmm6, (%r12)
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1628b, %rsi
lea addresses_A_ht+0x14a91, %rdi
nop
nop
nop
and $8748, %r10
mov $118, %rcx
rep movsw
nop
nop
nop
xor $6501, %rbx
lea addresses_WT_ht+0x1bcb, %rsi
nop
nop
add $2792, %r15
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $11400, %rcx
lea addresses_WC_ht+0x4cb, %rcx
add %rbx, %rbx
movb $0x61, (%rcx)
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x101cb, %r12
nop
nop
nop
nop
nop
xor $62091, %r15
movb $0x61, (%r12)
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x199b7, %rsi
lea addresses_WC_ht+0x1cb, %rdi
clflush (%rsi)
nop
nop
nop
dec %rbx
mov $14, %rcx
rep movsw
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x7923, %rsi
nop
xor %rdx, %rdx
movb $0x51, (%rsi)
nop
nop
nop
nop
sub $38922, %rdx

// Store
lea addresses_normal+0x7eb, %r13
nop
nop
nop
add $1056, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r13)
nop
lfence

// Store
mov $0x3da7a500000008cb, %rdi
nop
and $3098, %rbx
movw $0x5152, (%rdi)
nop
nop
nop
nop
add $45296, %rdx

// Faulty Load
mov $0xc51ee00000009cb, %rbx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rbx), %r14w
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
