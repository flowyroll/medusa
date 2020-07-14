.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14541, %rsi
lea addresses_normal_ht+0x125, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rdx, %rdx
mov $28, %rcx
rep movsb
and $17704, %rax
lea addresses_WC_ht+0xd25, %rsi
lea addresses_UC_ht+0x7225, %rdi
nop
nop
nop
nop
add $5046, %r15
mov $61, %rcx
rep movsb
nop
nop
nop
add $28969, %r15
lea addresses_A_ht+0x151a5, %rsi
lea addresses_A_ht+0x3e5, %rdi
clflush (%rdi)
nop
nop
nop
dec %r8
mov $52, %rcx
rep movsw
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x14095, %r8
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $5960, %r15
lea addresses_WC_ht+0x15f25, %rsi
lea addresses_WC_ht+0xa555, %rdi
nop
nop
nop
nop
mfence
mov $3, %rcx
rep movsq
nop
cmp $29901, %rsi
lea addresses_UC_ht+0x3225, %rcx
nop
nop
nop
cmp $60558, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
and $13614, %r15
lea addresses_WC_ht+0x19a25, %rsi
lea addresses_D_ht+0xda85, %rdi
nop
nop
nop
and $3970, %r11
mov $5, %rcx
rep movsl
nop
nop
nop
nop
add $56048, %r15
lea addresses_WC_ht+0x6725, %rsi
lea addresses_D_ht+0xb125, %rdi
nop
nop
nop
xor %r15, %r15
mov $34, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x13225, %rdi
add %rax, %rax
mov (%rdi), %esi
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x12285, %rsi
lea addresses_WC_ht+0x1c6f0, %rdi
nop
add %rax, %rax
mov $46, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $42716, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Store
mov $0x42af5f0000000d25, %r10
nop
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%r10)
add $27016, %r10

// Store
mov $0x42af5f0000000d25, %r9
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r9)
nop
sub %r14, %r14

// Load
mov $0xd6d, %r9
nop
nop
sub %r14, %r14
mov (%r9), %r15w
nop
nop
sub %rbp, %rbp

// Store
mov $0x95f, %r15
nop
nop
nop
nop
cmp $52033, %rbp
movw $0x5152, (%r15)
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0x3c25, %r9
nop
nop
nop
nop
nop
cmp $14125, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
mov $0x42af5f0000000d25, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %r10d
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'58': 108, '00': 8}
58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58
*/
