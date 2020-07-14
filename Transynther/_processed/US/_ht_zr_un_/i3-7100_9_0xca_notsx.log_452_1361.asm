.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x463c, %rax
nop
dec %r15
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rbp
nop
xor $21398, %r11
lea addresses_A_ht+0x1a33c, %rsi
lea addresses_normal_ht+0x15f1c, %rdi
and $6555, %r15
mov $35, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x17bbc, %r15
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
sub $7655, %rcx
lea addresses_D_ht+0x1823c, %rsi
nop
nop
nop
nop
add $35995, %rax
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $41039, %r15
lea addresses_WT_ht+0x53d4, %rbp
nop
add $16976, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1663c, %rsi
lea addresses_D_ht+0x7c7c, %rdi
nop
nop
add %r14, %r14
mov $100, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1363c, %r15
nop
nop
nop
nop
add %rax, %rax
mov (%r15), %r11
nop
nop
nop
cmp $4900, %r11
lea addresses_UC_ht+0x5250, %rbp
nop
nop
nop
nop
xor $29327, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
add $18238, %rdi
lea addresses_D_ht+0x9a3c, %rsi
lea addresses_normal_ht+0x16144, %rdi
nop
cmp %rbp, %rbp
mov $7, %rcx
rep movsq
nop
cmp $49924, %rdi
lea addresses_WT_ht+0x1ae3c, %rdi
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x19a5c, %rsi
lea addresses_WC_ht+0x1843c, %rdi
nop
nop
nop
nop
dec %rbp
mov $77, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1e44, %rsi
lea addresses_UC_ht+0x1005c, %rdi
nop
xor $33627, %rax
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1b1ec, %rsi
nop
add %rax, %rax
mov (%rsi), %r14d
nop
nop
and $60351, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbx
push %rsi

// Store
lea addresses_UC+0x16f54, %rax
clflush (%rax)
nop
nop
and %rbx, %rbx
movw $0x5152, (%rax)
sub %rax, %rax

// Faulty Load
lea addresses_US+0x1163c, %rbx
nop
nop
nop
and $24441, %r10
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rbx
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'d3': 357, 'e0': 2, '46': 7, '00': 78, '48': 8}
00 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 00 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 00 00 d3 d3 00 00 00 00 d3 d3 d3 d3 d3 00 d3 d3 48 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 48 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 46 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 46 d3 d3 d3 d3 00 00 00 d3 00 00 00 d3 d3 d3 d3 00 00 d3 d3 00 00 e0 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 00 e0 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 00 46 00 00 d3 d3 00 00 00 00 d3 d3 d3 d3 00 d3 46 d3 46 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 00 00 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 46 48 00 d3 d3 00 00 00 00 d3 d3 d3 00 00 d3 00 d3 00 00 00 d3 00 00 00 d3 d3 00 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 48 d3 d3 d3 d3 d3 00 d3 d3 48 00 00 00 48 00 00 d3 00 00 00 00 d3 00 d3 48 00 48 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 46 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3
*/
