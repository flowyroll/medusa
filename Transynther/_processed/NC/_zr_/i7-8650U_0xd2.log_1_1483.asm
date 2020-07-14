.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ef66, %rsi
lea addresses_WC_ht+0x16b66, %rdi
xor $64923, %rbp
mov $73, %rcx
rep movsw
nop
nop
xor $54638, %rsi
lea addresses_A_ht+0x1ec6, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %r10
movb (%r12), %cl
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1d1e6, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%rsi), %cx
nop
nop
nop
nop
nop
add $2969, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xd126, %rsi
lea addresses_WC+0x1ca84, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $11, %rcx
rep movsw
nop
nop
and %rcx, %rcx

// Store
mov $0x766, %r15
xor $58345, %r8
movw $0x5152, (%r15)
nop
nop
nop
cmp $21995, %r8

// Load
lea addresses_RW+0xe066, %r9
and %r15, %r15
movups (%r9), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
sub %r9, %r9

// Load
lea addresses_normal+0x125b1, %r8
nop
nop
nop
nop
add $6672, %rsi
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
and $57848, %r8

// Faulty Load
mov $0x53d6210000000766, %rcx
nop
nop
nop
sub $38095, %r8
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 1}
00
*/
