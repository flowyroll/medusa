.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11aa9, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x8092, %rsi
nop
nop
cmp $63760, %r13
mov (%rsi), %rcx
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1a770, %rsi
lea addresses_WT_ht+0x1970a, %rdi
nop
and $27593, %r10
mov $54, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0xa375, %rsi
lea addresses_A_ht+0xbda6, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $15, %rcx
rep movsl
nop
nop
nop
nop
sub $44152, %rsi
lea addresses_normal_ht+0x15792, %r13
nop
nop
nop
nop
cmp $51311, %rdx
movw $0x6162, (%r13)
and $40985, %r10
lea addresses_WT_ht+0x44f2, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
movb (%r10), %r11b
nop
nop
nop
sub $35704, %r10
lea addresses_A_ht+0x6d12, %rcx
nop
nop
nop
and $32580, %rdi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r13
nop
dec %rsi
lea addresses_D_ht+0x19a92, %rcx
nop
xor %rdi, %rdi
mov (%rcx), %rdx
nop
nop
nop
sub $33486, %rdx
lea addresses_UC_ht+0x6c6a, %rsi
lea addresses_UC_ht+0x14c92, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
add $43377, %r10
lea addresses_UC_ht+0x17d5e, %rsi
lea addresses_WC_ht+0x10b92, %rdi
nop
nop
nop
nop
and $59453, %r11
mov $68, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_UC_ht+0x1eaf6, %rsi
lea addresses_WT_ht+0x7792, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $64, %rcx
rep movsw
nop
xor %r11, %r11
lea addresses_WC_ht+0x11992, %rsi
lea addresses_UC_ht+0xb25a, %rdi
nop
nop
and $29975, %r13
mov $22, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x140b2, %rcx
nop
nop
nop
xor $45203, %rdi
mov (%rcx), %rbp
sub $13118, %rcx
lea addresses_WC_ht+0x10592, %rdx
nop
add $50143, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
nop
and $39310, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xd492, %rsi
lea addresses_UC+0x1f3c, %rdi
cmp $61773, %rdx
mov $74, %rcx
rep movsq
nop
nop
nop
nop
nop
and $49451, %rcx

// Store
mov $0x7a94560000000092, %rdi
clflush (%rdi)
dec %r15
movl $0x51525354, (%rdi)
nop
nop
nop
add %r15, %r15

// Store
lea addresses_normal+0xe212, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
dec %rsi

// Store
lea addresses_A+0xe228, %rsi
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
xor $52451, %rsi

// Faulty Load
mov $0x7a94560000000092, %r12
nop
nop
nop
add $49356, %r15
mov (%r12), %eax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'54': 22}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
