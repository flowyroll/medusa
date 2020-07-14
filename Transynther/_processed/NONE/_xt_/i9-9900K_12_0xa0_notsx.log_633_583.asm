.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b538, %rsi
lea addresses_A_ht+0x112fa, %rdi
inc %rbx
mov $3, %rcx
rep movsb
nop
nop
xor $49705, %r11
lea addresses_WT_ht+0xe55a, %r10
nop
and %r14, %r14
mov (%r10), %cx
nop
nop
nop
sub $38525, %rdi
lea addresses_WT_ht+0xb5a, %rsi
lea addresses_normal_ht+0x167d, %rdi
nop
nop
nop
add %r8, %r8
mov $76, %rcx
rep movsl
nop
nop
nop
xor $15710, %r14
lea addresses_UC_ht+0x1f5a, %rsi
lea addresses_WC_ht+0x14b5a, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $42425, %rbx
mov $93, %rcx
rep movsl
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x745a, %rbx
nop
and $18368, %r14
movb (%rbx), %r11b
nop
inc %rdi
lea addresses_D_ht+0x1c75a, %r14
clflush (%r14)
nop
nop
dec %rcx
mov (%r14), %r11
nop
nop
and %r11, %r11
lea addresses_UC_ht+0x660a, %rsi
lea addresses_normal_ht+0x7b5a, %rdi
nop
nop
nop
cmp %r10, %r10
mov $15, %rcx
rep movsb
nop
sub %r8, %r8
lea addresses_normal_ht+0x133da, %r8
nop
nop
nop
nop
add $12571, %rbx
movw $0x6162, (%r8)
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x16c8a, %rsi
lea addresses_WC_ht+0x1a0, %rdi
nop
nop
nop
nop
nop
cmp $1531, %r8
mov $61, %rcx
rep movsq
nop
lfence
lea addresses_normal_ht+0x375a, %r14
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r14)
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1675a, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $40567, %rdi
movw $0x6162, (%rcx)
dec %r14
lea addresses_UC_ht+0x1ac5a, %rsi
lea addresses_D_ht+0x1df5a, %rdi
nop
nop
nop
nop
nop
and $21719, %r11
mov $108, %rcx
rep movsb
nop
and $51832, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0x4eef8d000000087d, %rcx
xor %rbx, %rbx
movb $0x51, (%rcx)
dec %rbx

// Faulty Load
lea addresses_normal+0x1975a, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor $24500, %r8
mov (%r10), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'34': 633}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
