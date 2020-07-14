.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x41ff, %rbx
clflush (%rbx)
nop
cmp %r9, %r9
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and $7155, %rdi
lea addresses_A_ht+0x6cfd, %r10
inc %r8
mov (%r10), %cx
nop
nop
nop
nop
nop
xor $37586, %r9
lea addresses_normal_ht+0x1cf7f, %rsi
lea addresses_UC_ht+0x344f, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $44426, %r13
mov $105, %rcx
rep movsb
nop
nop
nop
sub $57427, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1613f, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r11)
nop
nop
nop
cmp $35156, %rdx

// Store
lea addresses_PSE+0x1afef, %r11
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r11)
nop
sub %r11, %r11

// REPMOV
lea addresses_US+0x1be7, %rsi
mov $0x1e70710000000dff, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $20, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbx

// Store
mov $0xc7f, %rdi
nop
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%rdi)
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x117ff, %r11
cmp $53371, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
dec %rbx

// Faulty Load
mov $0x1e70710000000dff, %r13
nop
nop
nop
sub $27201, %rbx
mov (%r13), %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'00': 221}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
