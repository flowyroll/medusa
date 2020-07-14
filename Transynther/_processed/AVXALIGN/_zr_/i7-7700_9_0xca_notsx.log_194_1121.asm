.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18a12, %rsi
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rsi)
nop
inc %r14
lea addresses_normal_ht+0xc792, %r8
nop
cmp %r9, %r9
mov (%r8), %rsi
nop
xor $27716, %r8
lea addresses_normal_ht+0x13e12, %rsi
lea addresses_WT_ht+0x15ab6, %rdi
nop
nop
nop
cmp $63407, %r8
mov $77, %rcx
rep movsq
cmp %r13, %r13
lea addresses_WT_ht+0xef32, %r11
nop
nop
sub $50453, %rsi
movb $0x61, (%r11)
nop
nop
sub $16295, %r11
lea addresses_A_ht+0x10792, %r11
nop
nop
nop
dec %r8
movl $0x61626364, (%r11)
nop
cmp %r14, %r14
lea addresses_UC_ht+0xa242, %rsi
lea addresses_normal_ht+0x19482, %rdi
nop
nop
nop
nop
nop
cmp $17432, %r14
mov $12, %rcx
rep movsb
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x872, %rsi
lea addresses_D_ht+0x71e2, %rdi
nop
nop
inc %r9
mov $16, %rcx
rep movsw
nop
nop
nop
and $22924, %r13
lea addresses_WC_ht+0xd352, %rsi
lea addresses_WC_ht+0x118d2, %rdi
nop
nop
xor $4031, %r13
mov $102, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x17802, %rcx
nop
mfence
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $2376, %r9
lea addresses_D_ht+0x1c2b6, %r9
nop
nop
nop
xor $26324, %rcx
mov (%r9), %r11d
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xfb52, %rsi
lea addresses_A_ht+0x1a392, %rdi
nop
nop
add %r8, %r8
mov $13, %rcx
rep movsl
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x17792, %rsi
lea addresses_WT_ht+0x1405a, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
add $27975, %r11
lea addresses_WC_ht+0x8792, %rsi
lea addresses_A_ht+0x5092, %rdi
inc %r9
mov $14, %rcx
rep movsl
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi

// Load
lea addresses_D+0x1927c, %r12
nop
nop
nop
sub %r13, %r13
mov (%r12), %r11d
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_PSE+0x4332, %rdi
clflush (%rdi)
nop
inc %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
sub $62795, %rdi

// Store
lea addresses_D+0x1b612, %rdi
nop
nop
nop
nop
add $136, %r13
movl $0x51525354, (%rdi)
nop
cmp $28887, %rbp

// Load
lea addresses_WT+0x2692, %r11
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%r11), %r13d
nop
nop
add $53820, %rbp

// Store
lea addresses_PSE+0xd6d2, %rbp
nop
cmp %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movaps %xmm6, (%rbp)
sub %rdi, %rdi

// Store
lea addresses_D+0x8a5e, %r11
add %rcx, %rcx
movw $0x5152, (%r11)
nop
inc %rcx

// Store
lea addresses_WC+0x13aba, %r13
nop
nop
sub %rbp, %rbp
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
xor $42899, %rdi

// Faulty Load
lea addresses_normal+0xa792, %r12
nop
nop
dec %rbp
movaps (%r12), %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 194}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
