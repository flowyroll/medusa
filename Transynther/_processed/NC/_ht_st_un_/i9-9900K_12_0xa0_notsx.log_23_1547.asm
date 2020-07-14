.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1a78a, %rdx
nop
nop
xor %rsi, %rsi
mov (%rdx), %ax
nop
and %r15, %r15
lea addresses_UC_ht+0x1b2b9, %r15
nop
xor %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x1be59, %r9
inc %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $11358, %r11
lea addresses_D_ht+0x1bab9, %rax
nop
nop
nop
nop
nop
sub $43333, %rdx
movb $0x61, (%rax)
nop
nop
dec %rdx
lea addresses_WT_ht+0x7ff2, %rsi
lea addresses_D_ht+0x12879, %rdi
nop
nop
dec %rax
mov $17, %rcx
rep movsw
nop
inc %r9
lea addresses_UC_ht+0x1a90, %rsi
lea addresses_D_ht+0x18b59, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $92, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x14919, %r11
nop
add $28510, %r15
mov (%r11), %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x16eeb, %rax
nop
nop
nop
nop
nop
add $19177, %r15
mov (%rax), %rcx
nop
nop
add $1745, %r11
lea addresses_WT_ht+0xce39, %rdi
clflush (%rdi)
nop
nop
and $4140, %rdx
movw $0x6162, (%rdi)
nop
sub $42647, %rdx
lea addresses_D_ht+0x117ff, %r15
nop
nop
inc %rdx
mov (%r15), %r9
nop
nop
nop
nop
cmp $37234, %r11
lea addresses_A_ht+0x195f9, %rsi
lea addresses_UC_ht+0x16519, %rdi
nop
nop
nop
cmp $25485, %r9
mov $39, %rcx
rep movsw
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1af33, %rcx
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdx

// Load
mov $0x2184cf0000000eb9, %rcx
nop
nop
nop
nop
xor $56761, %rdx
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
and $47125, %r11

// Load
lea addresses_WC+0xd1b9, %rbp
nop
nop
nop
nop
and %r13, %r13
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
nop
nop
cmp %r12, %r12

// Faulty Load
mov $0x6cfb410000000ab9, %r12
nop
sub %rcx, %rcx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 1}}
{'08': 7, '88': 2, '45': 8, '0d': 2, '35': 1, 'ea': 2, '80': 1}
ea 45 45 45 08 ea 35 08 45 45 80 08 88 08 88 45 45 08 08 45 0d 0d 08
*/
