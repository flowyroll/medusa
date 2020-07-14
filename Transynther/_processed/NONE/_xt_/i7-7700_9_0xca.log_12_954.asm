.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb5c7, %rsi
lea addresses_UC_ht+0x1cde7, %rdi
and %r11, %r11
mov $98, %rcx
rep movsw
xor $47424, %r9
lea addresses_A_ht+0x56c7, %rdi
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %rdi
movaps %xmm0, (%rdi)
nop
nop
cmp $192, %rcx
lea addresses_UC_ht+0x97c7, %rsi
lea addresses_WT_ht+0xec5f, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $127, %rcx
rep movsw
nop
nop
nop
dec %r9
lea addresses_WC_ht+0xdaa5, %rsi
lea addresses_UC_ht+0xd4bb, %rdi
clflush (%rdi)
nop
nop
add $61384, %rbp
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0x16ca3, %rbp
nop
dec %r11
movb $0x61, (%rbp)
nop
xor $32566, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x7b07, %rdi
nop
cmp %rsi, %rsi
movl $0x51525354, (%rdi)
and %r14, %r14

// Load
lea addresses_A+0x179c7, %r10
nop
nop
nop
and $6742, %r8
movb (%r10), %cl
xor %rsi, %rsi

// REPMOV
lea addresses_US+0x14274, %rsi
lea addresses_WT+0xcc73, %rdi
nop
and $49301, %rdx
mov $31, %rcx
rep movsb
nop
and $7283, %rdx

// Faulty Load
lea addresses_D+0x16fc7, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov (%rdi), %ecx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
