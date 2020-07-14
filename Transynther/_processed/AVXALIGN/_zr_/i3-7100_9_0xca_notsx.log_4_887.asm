.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13904, %rsi
lea addresses_A_ht+0x1137e, %rdi
clflush (%rdi)
nop
xor %r9, %r9
mov $32, %rcx
rep movsq
nop
sub %r12, %r12
lea addresses_A_ht+0x1d03c, %r10
nop
nop
nop
nop
nop
inc %r11
mov (%r10), %r9d
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x1c644, %rsi
lea addresses_A_ht+0xc3fb, %rdi
nop
nop
cmp %r11, %r11
mov $98, %rcx
rep movsw
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0xecd4, %r9
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r9
movntdq %xmm7, (%r9)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x8a44, %rsi
lea addresses_normal_ht+0x4ec4, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $68, %rcx
rep movsb
inc %r9
lea addresses_D_ht+0x152ec, %rsi
lea addresses_UC_ht+0x5b9a, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $64, %rcx
rep movsq
nop
nop
nop
nop
nop
add $15498, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x12e48, %rsi
nop
nop
nop
nop
nop
cmp $48345, %r11
movl $0x51525354, (%rsi)
nop
add %rdx, %rdx

// Store
lea addresses_D+0xfa14, %rcx
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rcx)
nop
inc %rdx

// Store
mov $0x3aae000000000644, %r11
lfence
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0xa744, %rax
nop
add %rbp, %rbp
movl $0x51525354, (%rax)
nop
nop
nop
nop
add $29430, %rdx

// Store
lea addresses_RW+0x93a9, %rax
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
nop
sub $26406, %rsi

// Faulty Load
mov $0x62df60000000e44, %r11
clflush (%r11)
xor %r9, %r9
movb (%r11), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'00': 4}
00 00 00 00
*/
