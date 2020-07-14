.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb3fd, %rsi
lea addresses_A_ht+0x1221, %rdi
cmp $3938, %r14
mov $75, %rcx
rep movsl
nop
nop
nop
nop
xor $12128, %r10
lea addresses_WC_ht+0x1621, %rsi
lea addresses_WT_ht+0x13391, %rdi
clflush (%rdi)
nop
dec %rdx
mov $74, %rcx
rep movsq
cmp %r14, %r14
lea addresses_WT_ht+0x16670, %rsi
lea addresses_WC_ht+0x113c9, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $13, %rcx
rep movsl
nop
nop
nop
sub $6673, %r14
lea addresses_WC_ht+0x1de21, %rsi
lea addresses_D_ht+0x15821, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $32, %rcx
rep movsq
and %r14, %r14
lea addresses_A_ht+0x19261, %r9
nop
nop
nop
and $28130, %r10
movb (%r9), %dl
nop
nop
nop
add $30061, %r9
lea addresses_A_ht+0x1ac21, %rdx
nop
nop
nop
nop
sub $1033, %r14
mov (%rdx), %rsi
xor $28699, %rdx
lea addresses_A_ht+0x17749, %r14
nop
nop
inc %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x4a21, %rsi
lea addresses_A_ht+0xc033, %rdi
nop
nop
lfence
mov $25, %rcx
rep movsl
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1a131, %rbp
nop
nop
nop
nop
inc %rsi
mov (%rbp), %di
sub $7880, %rdi
lea addresses_WC_ht+0x11a21, %rdi
nop
nop
nop
nop
dec %rbp
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm0
vpextrq $1, %xmm0, %r10
nop
cmp %r10, %r10
lea addresses_A_ht+0xfcf1, %r9
nop
nop
nop
nop
nop
xor %r14, %r14
movups (%r9), %xmm3
vpextrq $1, %xmm3, %rcx
nop
inc %rdx
lea addresses_WT_ht+0x19df4, %rsi
lea addresses_WT_ht+0x1d761, %rdi
clflush (%rdi)
and $12547, %rbp
mov $86, %rcx
rep movsl
nop
cmp $6903, %r10
lea addresses_WC_ht+0x14a55, %rsi
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
add $21692, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rsi

// Faulty Load
lea addresses_US+0x1ba21, %r14
nop
nop
and %r9, %r9
movb (%r14), %r15b
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'00': 98}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
