.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d129, %rsi
cmp %r12, %r12
mov (%rsi), %r8
nop
add %rdx, %rdx
lea addresses_WT_ht+0x13c09, %rbx
nop
nop
nop
nop
nop
add $17924, %rcx
movw $0x6162, (%rbx)
cmp %r14, %r14
lea addresses_WC_ht+0x91d1, %rcx
nop
nop
nop
nop
nop
sub $52422, %r14
mov (%rcx), %bx
nop
xor %r14, %r14
lea addresses_normal_ht+0xa9d1, %rsi
lea addresses_A_ht+0x1a51, %rdi
nop
nop
nop
sub %r14, %r14
mov $67, %rcx
rep movsq
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1d209, %r14
add %rdi, %rdi
mov (%r14), %r12
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x1c409, %rsi
lea addresses_D_ht+0xae09, %rdi
nop
nop
nop
nop
nop
and $58141, %rdx
mov $87, %rcx
rep movsl
dec %r8
lea addresses_A_ht+0x6d09, %rsi
lea addresses_WC_ht+0xae69, %rdi
nop
nop
nop
nop
nop
xor $42060, %r12
mov $24, %rcx
rep movsw
nop
nop
and $53007, %rsi
lea addresses_UC_ht+0x1ca09, %rsi
lea addresses_WC_ht+0x16d09, %rdi
add %r8, %r8
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xc979, %rsi
lea addresses_WC_ht+0x15409, %rdi
add $11383, %r14
mov $124, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_normal_ht+0xa6a9, %rbx
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rbx)
nop
nop
xor $56392, %rdx
lea addresses_A_ht+0xabf5, %rdi
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $11533, %r12
lea addresses_UC_ht+0x8409, %rcx
nop
nop
nop
nop
nop
cmp $23878, %rdx
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r8
xor %r12, %r12
lea addresses_WT_ht+0x158c9, %rdx
and $27924, %rcx
mov (%rdx), %r14w
sub %rbx, %rbx
lea addresses_normal_ht+0x1e809, %rsi
lea addresses_normal_ht+0x131c6, %rdi
nop
nop
add %rbx, %rbx
mov $79, %rcx
rep movsb
sub $48178, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_WC+0x809, %r8
add %r11, %r11
mov (%r8), %rax
nop
nop
add %rax, %rax

// Store
lea addresses_normal+0x1c59, %rdi
clflush (%rdi)
nop
nop
cmp %r9, %r9
movw $0x5152, (%rdi)
nop
nop
nop
nop
dec %rax

// Load
lea addresses_WC+0x1545, %r10
nop
nop
nop
nop
nop
and %r11, %r11
mov (%r10), %r8d
nop
nop
nop
nop
xor $48785, %r11

// Store
lea addresses_A+0x1c009, %r9
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%r9)
nop
nop
nop
nop
cmp $23251, %rax

// Store
mov $0xf09, %rdi
nop
nop
nop
nop
nop
cmp $2472, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
xor $26055, %r10

// Store
lea addresses_A+0x8009, %r8
nop
nop
nop
and $55208, %r11
movw $0x5152, (%r8)
nop
nop
dec %r9

// Store
lea addresses_D+0x14209, %r10
nop
sub %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r10)
nop
nop
cmp $21064, %r8

// Faulty Load
lea addresses_A+0x1bc09, %r8
and %rax, %rax
mov (%r8), %ebx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': True, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'00': 2252}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
