.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe19b, %r9
nop
nop
nop
nop
nop
xor $63635, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1379b, %rsi
lea addresses_A_ht+0x17fcb, %rdi
nop
nop
nop
nop
nop
sub $14279, %rbp
mov $116, %rcx
rep movsw
nop
nop
nop
and $65036, %rsi
lea addresses_WT_ht+0x11b53, %rdi
nop
nop
nop
and %rsi, %rsi
mov (%rdi), %ecx
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0xee7b, %rsi
lea addresses_WT_ht+0x71a7, %rdi
nop
nop
nop
cmp $65276, %rbp
mov $91, %rcx
rep movsb
xor %r14, %r14
lea addresses_A_ht+0x14c3b, %rcx
nop
sub $9031, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1b7bb, %r9
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1e79b, %rcx
nop
nop
nop
xor $13449, %rax
mov (%rcx), %r14w
nop
nop
nop
nop
add $46615, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x5d9b, %r14
nop
nop
inc %r9
mov $0x5152535455565758, %r11
movq %r11, (%r14)
and $53270, %rcx

// Store
lea addresses_normal+0xc3eb, %r11
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
inc %rsi

// Store
mov $0x6bdddd000000055b, %r9
nop
and $64688, %r11
movl $0x51525354, (%r9)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_A+0xf39b, %r11
add %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
sub $9736, %r11

// Store
lea addresses_WT+0x816f, %rcx
nop
nop
nop
sub $16081, %r9
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and $8351, %rdi

// Load
lea addresses_US+0x19e2d, %r14
nop
sub $25797, %r9
mov (%r14), %rsi
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_RW+0x1df9b, %rcx
sub $29195, %rdi
movaps (%rcx), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'49': 2871, '45': 18958}
45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 49 49 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 49 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 49 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 49 45 45 49 49 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 49 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 49 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 49 49 45 45 45 45 45 45 45 49 45
*/
