.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x115e2, %rax
nop
nop
nop
nop
nop
xor $44105, %rbp
mov (%rax), %r9w
sub $32651, %r8
lea addresses_D_ht+0x134ce, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $63068, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rbp
vmovaps %ymm5, (%rbp)
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x366f, %rsi
lea addresses_A_ht+0x1d1e2, %rdi
nop
nop
and $24288, %r9
mov $82, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1a082, %r13
nop
nop
nop
nop
add $22162, %rbp
movb (%r13), %r9b
sub $59164, %r9
lea addresses_A_ht+0xaee2, %r13
nop
nop
nop
and %rbp, %rbp
movw $0x6162, (%r13)
nop
cmp $63609, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdx

// Load
mov $0xee2, %rbp
nop
nop
nop
cmp $40687, %rax
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_A+0x156e2, %rbp
nop
dec %r11
mov (%rbp), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
