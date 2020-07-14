.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2935, %r10
nop
xor %r15, %r15
movups (%r10), %xmm2
vpextrq $0, %xmm2, %r11
nop
sub $13237, %rbx
lea addresses_WC_ht+0x1cc71, %rsi
lea addresses_WC_ht+0x1c1dd, %rdi
clflush (%rdi)
nop
nop
nop
add %rbx, %rbx
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1cd8d, %rsi
lea addresses_A_ht+0x1385d, %rdi
nop
dec %r13
mov $42, %rcx
rep movsl
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xb45d, %rsi
nop
nop
sub %rdi, %rdi
movb (%rsi), %bl
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x545d, %rsi
lea addresses_WT+0x1edfd, %rdi
nop
inc %rdx
mov $97, %rcx
rep movsb
inc %rdi

// Store
lea addresses_UC+0x12d, %rdi
nop
dec %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x1ccdd, %rsi
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x4575, %rcx
nop
add $16207, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rcx)
cmp %rcx, %rcx

// Faulty Load
mov $0x7c871e000000085d, %r15
nop
nop
and $49879, %rcx
mov (%r15), %r9w
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 315}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
