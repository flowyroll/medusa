.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x155b4, %rdi
nop
nop
nop
dec %rax
mov (%rdi), %r11
nop
nop
nop
and $52490, %rdx
lea addresses_normal_ht+0xf5b4, %rsi
nop
nop
add $33034, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1e464, %rsi
lea addresses_WC_ht+0x38d4, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $38, %rcx
rep movsb
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x9414, %rsi
lea addresses_D_ht+0x65b4, %rdi
nop
nop
nop
cmp $39535, %rdx
mov $7, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_UC_ht+0xa4b4, %r11
nop
nop
cmp $58014, %rdx
movb $0x61, (%r11)
cmp $57064, %rsi
lea addresses_UC_ht+0x1bf34, %rsi
nop
nop
nop
nop
dec %rdi
mov (%rsi), %ecx
nop
add $29897, %rdi
lea addresses_WC_ht+0x97b4, %rsi
lea addresses_WT_ht+0x9aa4, %rdi
nop
nop
nop
cmp $18635, %rbx
mov $23, %rcx
rep movsb
sub %rbx, %rbx
lea addresses_normal_ht+0x1db4, %r11
clflush (%r11)
nop
nop
nop
nop
xor $7106, %rcx
mov (%r11), %ebx
nop
cmp $61100, %r14
lea addresses_WT_ht+0xb2b4, %rdx
xor $25269, %rax
movb $0x61, (%rdx)
nop
nop
nop
nop
xor $45350, %rbx
lea addresses_D_ht+0x1adbc, %rax
nop
cmp $46021, %rbx
mov (%rax), %dx
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0xcfc, %r14
nop
nop
nop
nop
add %rax, %rax
mov (%r14), %edx
and $50140, %rsi
lea addresses_normal_ht+0x189b4, %rsi
lea addresses_A_ht+0x39b4, %rdi
clflush (%rsi)
sub $12401, %rdx
mov $66, %rcx
rep movsb
cmp %rbx, %rbx
lea addresses_normal_ht+0x1c5b4, %rsi
nop
cmp $23893, %rcx
movb (%rsi), %al
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rdx

// Faulty Load
lea addresses_WC+0x10db4, %r11
and $43089, %r15
movb (%r11), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
