.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xab69, %rsi
nop
nop
add %rbp, %rbp
mov (%rsi), %r12w
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x15829, %r13
nop
nop
nop
nop
and %rbx, %rbx
mov (%r13), %r8w
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x2659, %rbp
inc %rbx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xbc49, %rsi
clflush (%rsi)
xor %r13, %r13
movb (%rsi), %bl
nop
nop
cmp $56120, %r8
lea addresses_WT_ht+0x12ee9, %rbx
nop
nop
and $28317, %r11
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x9ee9, %rsi
lea addresses_D_ht+0x120e9, %rdi
nop
add $35570, %r11
mov $17, %rcx
rep movsq
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0xf9c9, %rsi
mov $0x1a16a400000000c1, %rdi
nop
nop
nop
nop
xor $45473, %r11
mov $85, %rcx
rep movsw
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_WC+0x20e9, %rsi
nop
nop
sub $560, %r15
mov (%rsi), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'00': 1}
00
*/
