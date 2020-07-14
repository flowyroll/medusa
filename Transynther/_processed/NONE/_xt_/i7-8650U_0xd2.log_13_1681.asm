.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1ea5c, %rbp
nop
nop
nop
sub %rax, %rax
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r8
nop
inc %r11
lea addresses_UC_ht+0xfb23, %rsi
lea addresses_A_ht+0x49dc, %rdi
nop
nop
and %r14, %r14
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $59107, %rbp
lea addresses_WC_ht+0x1769c, %r8
nop
nop
cmp $46751, %rbp
movb $0x61, (%r8)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x245c, %r8
nop
add $57820, %r11
mov (%r8), %edi
nop
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_WC+0x17c5c, %r13
nop
nop
nop
nop
add %r8, %r8
movb $0x51, (%r13)
nop
nop
nop
add $40838, %r8

// Store
lea addresses_PSE+0xd09c, %rax
clflush (%rax)
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rax)
add $45583, %rdi

// Store
lea addresses_PSE+0x745c, %r15
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
inc %rbx

// Store
mov $0x6a46100000000b1c, %r13
nop
nop
xor $32294, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x2a5c, %r11
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%r11)
nop
nop
nop
and $16466, %r13

// Store
lea addresses_A+0x1a098, %rbx
and $19561, %r13
mov $0x5152535455565758, %r15
movq %r15, (%rbx)

// Exception!!!
nop
mov (0), %rax
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_normal+0x1925c, %r13
nop
nop
nop
nop
and %r11, %r11
mov (%r13), %r15d
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'34': 13}
34 34 34 34 34 34 34 34 34 34 34 34 34
*/
