.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x189ca, %rsi
lea addresses_A_ht+0x88ea, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
lfence
mov $76, %rcx
rep movsw
nop
nop
nop
nop
add $38837, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx

// Store
lea addresses_normal+0xebaa, %r13
nop
cmp %r10, %r10
movw $0x5152, (%r13)
sub %r10, %r10

// Store
lea addresses_A+0x43ea, %rax
nop
nop
xor %r14, %r14
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub $20412, %r11

// Load
lea addresses_US+0x897a, %r10
nop
nop
add $54558, %r14
movaps (%r10), %xmm4
vpextrq $0, %xmm4, %r11
add %r14, %r14

// Load
lea addresses_D+0x1f012, %r13
nop
inc %r11
mov (%r13), %r15d
nop
nop
nop
nop
and $59551, %r15

// Store
mov $0x23b10d000000050a, %r11
inc %rax
movw $0x5152, (%r11)
cmp %r13, %r13

// Store
mov $0x9ca, %r11
nop
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
nop
nop
cmp $32085, %r11

// Load
lea addresses_RW+0x5a6a, %r11
nop
nop
add %r15, %r15
movb (%r11), %r14b
nop
nop
sub $21639, %r13

// Store
lea addresses_UC+0x1dbca, %r15
add %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
inc %r11

// Store
lea addresses_WT+0x139ca, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp $62540, %r10

// Store
lea addresses_WC+0x1a5ca, %rax
nop
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
cmp %rax, %rax

// Faulty Load
mov $0xb91a300000009ca, %r13
and $46268, %rbx
movb (%r13), %r15b
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'00': 3, '51': 4}
51 51 00 00 51 00 51
*/
