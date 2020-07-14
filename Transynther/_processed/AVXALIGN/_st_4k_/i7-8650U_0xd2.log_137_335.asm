.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
lea addresses_A_ht+0x5d07, %r12
clflush (%r12)
nop
nop
cmp %r11, %r11
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
and $12727, %r10
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rdi
push %rdx
push %rsi

// Store
mov $0x3484d90000000714, %rdx
cmp %rsi, %rsi
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_UC+0xa2a9, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %r15, %r15
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
sub $144, %rsi

// Store
lea addresses_US+0xc067, %rax
clflush (%rax)
xor %r15, %r15
movw $0x5152, (%rax)
nop
nop
inc %rax

// Store
lea addresses_WC+0xbd07, %rdx
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
cmp $18266, %rax

// Faulty Load
lea addresses_A+0x10067, %r15
sub %r11, %r11
mov (%r15), %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'52': 137}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
