.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11f5c, %rbx
xor %r13, %r13
mov (%rbx), %r14w
and $27922, %rdi
lea addresses_UC_ht+0x4810, %rsi
lea addresses_normal_ht+0x10a1c, %rdi
nop
add $20225, %rax
mov $126, %rcx
rep movsw
nop
sub %r14, %r14
lea addresses_A_ht+0xd10c, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x1467c, %r13
nop
nop
nop
nop
xor $51158, %rax
mov (%r13), %ecx
inc %rcx
lea addresses_WC_ht+0x1635c, %rax
nop
nop
nop
nop
cmp $53690, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x24dc, %rcx
add $49581, %r13
mov (%rcx), %esi
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xbadc, %rsi
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
xor $23191, %r13
lea addresses_WC_ht+0x4ec, %rcx
nop
xor %rdi, %rdi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
sub $8248, %rax
lea addresses_A_ht+0x11a7c, %rsi
lea addresses_D_ht+0x14536, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $19, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x1d55c, %rsi
nop
cmp $64532, %r13
movb (%rsi), %bl
nop
nop
nop
nop
nop
xor $1333, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x16431, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $4750, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
xor $8470, %r11

// Faulty Load
lea addresses_US+0xe75c, %r11
sub %r8, %r8
mov (%r11), %r9d
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
