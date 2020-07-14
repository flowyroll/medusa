.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1ee3b, %rsi
lea addresses_WT_ht+0x9f9f, %rdi
nop
nop
nop
nop
xor $30765, %r14
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x2b9f, %rdi
sub $41875, %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
sub $56888, %rcx
lea addresses_WC_ht+0x1b69f, %rcx
nop
nop
nop
nop
cmp $60964, %rsi
movb (%rcx), %bl
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x639f, %r10
nop
cmp %r15, %r15
mov (%r10), %di
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1a49f, %rsi
lea addresses_WC_ht+0x1b79f, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $80, %rcx
rep movsq
nop
nop
nop
xor $27306, %rbx
lea addresses_normal_ht+0x560f, %rsi
lea addresses_WC_ht+0x439f, %rdi
nop
nop
sub $18857, %rbp
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
add $26157, %r15
lea addresses_A_ht+0xdf07, %rsi
lea addresses_normal_ht+0xb3b7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r15
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1db9f, %r14
nop
and $40809, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xcd4, %r11
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r11)
nop
nop
nop
add %r12, %r12

// REPMOV
lea addresses_PSE+0x1a39f, %rsi
mov $0xb9f, %rdi
nop
nop
xor %rbx, %rbx
mov $96, %rcx
rep movsw
nop
add %r12, %r12

// Store
lea addresses_WT+0xb2df, %rbx
and %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_WC+0x4ca3, %rbp
nop
nop
nop
nop
nop
xor $194, %rbx
movb (%rbp), %r11b
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x1f9f, %rcx
nop
nop
nop
nop
dec %r12
movl $0x51525354, (%rcx)
inc %r11

// Faulty Load
lea addresses_PSE+0x1a39f, %r12
nop
nop
inc %rbx
mov (%r12), %ebp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_P', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'33': 281}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
