.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e41b, %r15
nop
nop
nop
sub %rdx, %rdx
movw $0x6162, (%r15)
cmp %rbx, %rbx
lea addresses_D_ht+0x1e89b, %rdi
add $50710, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rdi
vmovaps %ymm5, (%rdi)
nop
nop
nop
nop
and $42572, %rdi
lea addresses_A_ht+0x1bd1b, %rcx
nop
and %r15, %r15
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x1149b, %rbx
add %rax, %rax
mov (%rbx), %r15d
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x18ca3, %rsi
lea addresses_WC_ht+0x885b, %rdi
nop
nop
nop
nop
dec %r8
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x13f7b, %rsi
lea addresses_WC_ht+0x659b, %rdi
clflush (%rdi)
nop
add %rbx, %rbx
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xdf2b, %rdx
nop
nop
nop
nop
nop
add %r15, %r15
mov (%rdx), %rbx
nop
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1829b, %rbx
xor %r11, %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
xor $31922, %rbx

// Faulty Load
mov $0xc9b, %rbp
nop
nop
nop
dec %rdx
mov (%rbp), %ebx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
