.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x170f9, %r13
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x1ec39, %r9
nop
nop
nop
sub $41498, %rdi
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
xor $59789, %r13
lea addresses_WC_ht+0x14ff9, %rsi
lea addresses_normal_ht+0xacf9, %rdi
clflush (%rsi)
nop
nop
nop
inc %r8
mov $54, %rcx
rep movsq
cmp $39622, %rdi
lea addresses_A_ht+0x14df9, %rsi
lea addresses_WC_ht+0xaff9, %rdi
cmp %r8, %r8
mov $19, %rcx
rep movsl
nop
nop
add $7597, %r10
lea addresses_normal_ht+0x13c59, %rsi
lea addresses_UC_ht+0xfc9, %rdi
nop
add %r8, %r8
mov $91, %rcx
rep movsq
nop
nop
nop
and $3442, %rbp
lea addresses_WC_ht+0x7599, %r8
xor $54584, %r9
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rbp
add $57613, %rsi
lea addresses_UC_ht+0x87f9, %rbp
sub $4114, %r10
mov (%rbp), %r13d
add %rcx, %rcx
lea addresses_WT_ht+0x8b7c, %r9
clflush (%r9)
nop
inc %rdi
movb (%r9), %cl
xor %rsi, %rsi
lea addresses_D_ht+0x141f9, %rsi
lea addresses_A_ht+0x13885, %rdi
nop
nop
nop
cmp %r10, %r10
mov $106, %rcx
rep movsw
cmp $11340, %rsi
lea addresses_A_ht+0x60a0, %rcx
nop
nop
nop
nop
inc %r8
mov (%rcx), %r9
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_WC+0x4ff9, %r11
nop
nop
dec %rax
mov (%r11), %ebp
nop
nop
nop
nop
nop
cmp $32128, %rbp

// Load
mov $0xdf9, %rsi
nop
add $438, %r11
mov (%rsi), %ax
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_D+0x177f9, %rsi
nop
nop
xor $50, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
sub $99, %rsi

// Faulty Load
mov $0x2cc54200000007f9, %r12
nop
cmp %rdx, %rdx
movb (%r12), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'d2': 1, '90': 1, 'a2': 1, '0c': 1, '2e': 1, 'fc': 1, '8a': 2, '30': 2, '12': 3, '7c': 1, 'cc': 1, '54': 2, '1e': 1, '00': 7136, '72': 1, '8e': 2, '38': 1, '3e': 1, '52': 2, 'ea': 2, 'ca': 1, 'fa': 2, '2a': 1, '7a': 2, '04': 2, '9c': 2, 'c0': 1, '92': 1, 'da': 1, 'ba': 1, '58': 14632, 'fe': 1, 'd8': 1, '64': 1, '1a': 1, 'aa': 1, 'c8': 1, '7e': 2, '9e': 2, '0e': 1, '60': 1, '98': 1, '18': 1, '70': 1, 'd6': 1, 'f8': 1, '94': 1, '36': 1, '32': 1}
58 00 00 00 00 58 58 00 58 58 58 00 58 00 58 58 00 00 58 58 58 00 58 00 58 00 58 58 58 00 58 00 00 58 00 58 58 58 00 58 58 00 00 58 58 00 00 58 58 00 58 58 00 58 58 58 00 00 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 00 00 58 00 00 00 00 58 58 00 58 58 58 58 58 00 58 00 00 58 00 00 00 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 00 00 58 00 00 00 58 58 00 58 58 00 00 58 58 58 00 58 58 00 58 58 00 58 00 58 00 58 00 58 00 58 00 58 58 58 00 58 58 72 58 00 58 00 58 00 58 58 58 00 00 58 00 58 00 58 00 00 58 00 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 00 58 00 58 00 00 58 58 58 00 58 58 00 58 58 00 58 00 58 00 58 00 00 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 00 00 58 00 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 00 00 58 00 58 00 58 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 00 58 58 58 00 58 58 58 00 00 00 58 2a 58 00 58 58 58 00 58 00 58 58 00 58 58 00 58 00 58 58 58 58 00 00 58 58 00 58 00 58 00 58 00 00 00 00 00 58 58 58 00 00 00 00 58 00 58 00 58 00 00 58 00 58 58 58 00 58 00 58 00 58 00 58 58 58 58 00 00 58 58 58 00 00 58 00 58 00 58 58 00 58 58 58 58 00 58 58 58 00 58 00 00 58 58 00 58 00 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 00 58 58 00 00 58 00 58 58 00 58 58 00 58 58 00 00 58 58 58 58 00 58 58 00 00 00 58 00 58 00 58 58 58 58 00 58 00 58 00 00 58 58 00 58 00 00 00 58 00 00 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 00 00 00 58 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 00 00 00 00 58 58 58 58 00 00 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 32 58 58 58 58 58 58 00 00 00 58 00 58 00 58 00 58 58 00 00 58 00 58 00 58 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 00 00 00 00 58 00 00 58 00 00 58 58 58 00 58 00 00 58 58 58 00 00 58 58 00 58 58 00 00 58 58 00 58 00 58 58 58 58 00 00 00 00 58 58 00 58 58 58 00 00 00 58 00 58 58 58 00 58 00 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 00 00 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 00 58 58 00 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 58 00 00 58 58
*/
