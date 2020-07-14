.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4c6d, %r15
nop
and $33248, %rbx
movb $0x61, (%r15)
nop
nop
dec %r9
lea addresses_UC_ht+0x8fad, %rsi
lea addresses_D_ht+0x139e1, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r8, %r8
mov $71, %rcx
rep movsq
nop
nop
nop
nop
and $22697, %rbx
lea addresses_UC_ht+0x110c1, %r8
clflush (%r8)
nop
nop
nop
add %rcx, %rcx
mov (%r8), %r9w
nop
nop
and $27039, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rsi

// Store
mov $0x685d7200000009ad, %r14
nop
cmp $27746, %rcx
movb $0x51, (%r14)
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WT+0xab71, %r11
nop
nop
xor %rsi, %rsi
movb $0x51, (%r11)
nop
nop
xor $42567, %r12

// Store
lea addresses_normal+0xad95, %rsi
nop
add %rcx, %rcx
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp $65444, %r13

// Store
lea addresses_RW+0x1cead, %r12
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
xor $14356, %rcx

// Load
mov $0x16d, %r12
nop
nop
dec %r11
mov (%r12), %rcx
nop
xor %rbp, %rbp

// Load
lea addresses_UC+0x113ad, %r12
nop
nop
sub %rbp, %rbp
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x192ad, %r11
nop
nop
sub $15393, %r13
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'00': 1}
00
*/
