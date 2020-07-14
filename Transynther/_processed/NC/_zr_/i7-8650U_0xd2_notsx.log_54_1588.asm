.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x165d0, %rsi
lea addresses_normal_ht+0x18c1b, %rdi
and %rax, %rax
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
add $13286, %rdx
lea addresses_WT_ht+0x18625, %r14
dec %r12
movb (%r14), %al
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x1c3d0, %r14
nop
nop
sub $46747, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x3d0, %rsi
lea addresses_UC_ht+0x1ac90, %rdi
clflush (%rdi)
nop
nop
inc %rdx
mov $29, %rcx
rep movsq
nop
nop
sub $9202, %r14
lea addresses_WC_ht+0x1d850, %rcx
clflush (%rcx)
nop
nop
and %rsi, %rsi
mov (%rcx), %r14d
nop
dec %rax
lea addresses_UC_ht+0x5ed0, %rcx
nop
nop
nop
nop
xor %rax, %rax
mov (%rcx), %si
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x16c10, %rcx
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x61, (%rcx)
inc %rdi
lea addresses_WT_ht+0x19bd0, %rsi
lea addresses_normal_ht+0xf0a0, %rdi
nop
nop
add $1964, %r8
mov $100, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $25856, %r14
lea addresses_WT_ht+0x5cd0, %rax
nop
nop
nop
xor $8322, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rax)
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x1fe90, %r10
nop
nop
nop
nop
and $63274, %rbp
mov (%r10), %r12w
nop
and $22568, %r10

// Store
mov $0x1fbbde0000000cf0, %r11
nop
nop
nop
sub $60763, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x26e5bf00000003d0, %r10
nop
cmp $28765, %r11
movb (%r10), %dl
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
