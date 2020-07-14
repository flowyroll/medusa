.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x388, %r11
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
sub $22257, %r8
lea addresses_D_ht+0x1eb6e, %rsi
lea addresses_D_ht+0x14ac8, %rdi
nop
nop
nop
nop
nop
cmp $12482, %rax
mov $112, %rcx
rep movsw
nop
nop
nop
add $755, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_WC+0xb994, %r15
nop
nop
nop
nop
and %r12, %r12
mov (%r15), %eax
nop
nop
nop
nop
add $12296, %r15

// Store
lea addresses_normal+0x16a48, %r12
nop
nop
nop
nop
xor $295, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_PSE+0x11f48, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
movntdqa (%r13), %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'00': 27}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
