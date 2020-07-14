.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1c5d8, %rbx
nop
nop
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%rbx)
nop
nop
add %r11, %r11
lea addresses_A_ht+0x1bcd8, %rsi
lea addresses_WT_ht+0x7dd8, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $46, %rcx
rep movsl
nop
nop
and $50742, %r14
lea addresses_D_ht+0x94e8, %rsi
lea addresses_normal_ht+0xf75c, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $51, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x101d8, %rsi
lea addresses_UC_ht+0x16494, %rdi
sub %r11, %r11
mov $125, %rcx
rep movsw
nop
sub $18967, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
mov $0x131240000000321, %r14
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r14), %edi
nop
nop
nop
nop
nop
and $27971, %r11

// Store
lea addresses_RW+0xacc8, %rdi
clflush (%rdi)
nop
add $2258, %r12
movl $0x51525354, (%rdi)
sub %rsi, %rsi

// Store
lea addresses_WC+0x95d8, %r12
nop
nop
nop
nop
nop
xor $33178, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
add $10742, %rdi

// Faulty Load
lea addresses_RW+0xddd8, %rcx
clflush (%rcx)
nop
and %r11, %r11
movntdqa (%rcx), %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'00': 293}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
