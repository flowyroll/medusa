.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1763, %rsi
nop
and $12771, %r11
movl $0x61626364, (%rsi)
nop
nop
xor $24886, %rbp
lea addresses_A_ht+0x1034f, %rbp
nop
and %r15, %r15
mov (%rbp), %r10
nop
nop
nop
nop
sub $27138, %r10
lea addresses_normal_ht+0xedd3, %rsi
lea addresses_WT_ht+0x15163, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $35, %rcx
rep movsq
add %r15, %r15
lea addresses_A_ht+0x4563, %rbp
nop
nop
nop
nop
and $64698, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rbp)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x21e3, %r15
xor %rsi, %rsi
mov (%r15), %ecx
nop
nop
nop
nop
nop
sub $61951, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x8fbb, %r15
nop
nop
add %r13, %r13
movw $0x5152, (%r15)
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x19be3, %r12
nop
nop
nop
and $59301, %rax
mov (%r12), %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'33': 103}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
