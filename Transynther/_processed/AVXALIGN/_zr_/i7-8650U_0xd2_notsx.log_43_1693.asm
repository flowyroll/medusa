.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3512, %r12
clflush (%r12)
nop
nop
nop
nop
add %r13, %r13
mov (%r12), %r11d
and %r8, %r8
lea addresses_D_ht+0x793e, %r15
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
nop
cmp $60672, %r8
lea addresses_WC_ht+0xd300, %rsi
lea addresses_WT_ht+0x44d2, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $34825, %r8
lea addresses_normal_ht+0x95f6, %rsi
lea addresses_WC_ht+0x15e12, %rdi
nop
nop
nop
nop
and $51204, %r11
mov $52, %rcx
rep movsl
nop
nop
inc %rsi
lea addresses_WT_ht+0xdf12, %r8
nop
nop
cmp %r15, %r15
movw $0x6162, (%r8)
add %rax, %rax
lea addresses_normal_ht+0x238a, %rsi
lea addresses_A_ht+0x11b96, %rdi
nop
and %r12, %r12
mov $48, %rcx
rep movsb
nop
sub $49213, %rcx
lea addresses_A_ht+0x18312, %rax
nop
nop
nop
add %rsi, %rsi
mov (%rax), %r12w
nop
nop
nop
nop
nop
sub $21682, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xcbb2, %r11
nop
nop
nop
add $2155, %rdi
movw $0x5152, (%r11)
nop
nop
nop
xor $46385, %rax

// Store
lea addresses_A+0x1803a, %rdi
dec %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_UC+0x10312, %rdx
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %rax, %rax

// Load
lea addresses_D+0x13112, %rsi
nop
nop
nop
add $49656, %rdx
mov (%rsi), %ax
cmp $49257, %rdi

// Store
lea addresses_PSE+0xa192, %rax
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rax)
sub %r12, %r12

// Store
mov $0x2a22e100000007d2, %rdx
nop
sub %r12, %r12
movb $0x51, (%rdx)
xor %rsi, %rsi

// Store
mov $0x424bfa0000000eb2, %r11
nop
nop
nop
xor $27390, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movaps %xmm2, (%r11)
nop
nop
sub %rbx, %rbx

// Load
lea addresses_US+0x19912, %r11
nop
nop
nop
add %rdi, %rdi
movb (%r11), %bl
nop
nop
nop
xor $8290, %rbx

// Store
lea addresses_US+0x1e312, %rsi
nop
add $50880, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
and $44451, %rax

// Faulty Load
lea addresses_US+0x19912, %rax
nop
nop
xor $958, %r12
mov (%rax), %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
