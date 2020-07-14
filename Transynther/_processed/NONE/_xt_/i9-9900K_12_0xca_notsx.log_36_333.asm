.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x167c2, %rdx
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x180c0, %rsi
lea addresses_D_ht+0x93c0, %rdi
nop
cmp $1028, %r12
mov $116, %rcx
rep movsb
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x19fc0, %rsi
lea addresses_RW+0x11880, %rdi
clflush (%rsi)
sub $7211, %r13
mov $27, %rcx
rep movsb
nop
inc %rdi

// Store
mov $0x71650900000006c0, %rbx
clflush (%rbx)
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rbx)
nop
nop
sub $1258, %r11

// Store
mov $0x5c0, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rdi)
nop
inc %rsi

// Store
mov $0x4752530000000342, %rsi
and %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
and %rdi, %rdi

// Store
mov $0xdc0, %rsi
clflush (%rsi)
nop
xor %rbx, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x1c7c0, %r13
nop
nop
nop
nop
and $44097, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0x14fc0, %rcx
nop
nop
nop
nop
nop
cmp $11948, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp $32060, %rbx

// Faulty Load
lea addresses_RW+0x6fc0, %r11
cmp %rdi, %rdi
mov (%r11), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'32': 36}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
