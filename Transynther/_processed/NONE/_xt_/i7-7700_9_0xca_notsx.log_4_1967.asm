.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1eaec, %rsi
lea addresses_WC_ht+0xbc4, %rdi
clflush (%rsi)
nop
nop
add $3600, %rax
mov $101, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1cea4, %rdx
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%rdx)
nop
sub $16962, %rcx
lea addresses_A_ht+0x156a4, %r11
add $56015, %rax
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
cmp $18655, %rax
lea addresses_normal_ht+0x8a32, %r11
nop
nop
nop
nop
nop
dec %rax
movw $0x6162, (%r11)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x595a, %r11
clflush (%r11)
nop
nop
xor $62214, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x1d6a4, %rax
nop
nop
nop
nop
add $36851, %rdi
movb (%rax), %dl
mfence
lea addresses_normal_ht+0xd52c, %rsi
lea addresses_normal_ht+0x27e8, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $89, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x1bea4, %rsi
lea addresses_WC_ht+0xa0c4, %rdi
nop
nop
nop
and $8727, %rbp
mov $100, %rcx
rep movsq
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x56a4, %rdi
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %rcx
xor $49484, %rbp
lea addresses_WT_ht+0xea4, %rsi
lea addresses_normal_ht+0x18ce4, %rdi
cmp $18769, %r12
mov $115, %rcx
rep movsw
dec %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Load
mov $0x75870700000003c4, %rsi
nop
nop
nop
and $15580, %rdx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
add $20173, %r11

// Store
lea addresses_RW+0x82d0, %rbx
nop
and %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
xor $3519, %rdx

// Store
lea addresses_US+0xd6a4, %r9
nop
nop
nop
and $19043, %r11
movl $0x51525354, (%r9)
nop
nop
nop
nop
and $53824, %rdx

// Store
lea addresses_RW+0x10da4, %rdx
nop
xor %rbx, %rbx
movw $0x5152, (%rdx)
cmp $17952, %rax

// Store
lea addresses_WT+0xb2a4, %rsi
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_WT+0x9824, %rax
nop
nop
nop
add %r11, %r11
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
cmp %rax, %rax

// Faulty Load
lea addresses_RW+0x10ea4, %rsi
nop
nop
nop
nop
nop
sub $47324, %rdx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'32': 4}
32 32 32 32
*/
