.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x11043, %r11
nop
nop
nop
nop
nop
dec %r9
mov (%r11), %rdi
nop
xor $39922, %r15
lea addresses_normal_ht+0x1eeed, %r9
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1c9ed, %rsi
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rsi)
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0xf6ed, %rsi
nop
nop
nop
and $21836, %rbp
mov (%rsi), %bx
cmp $51129, %r8

// REPMOV
lea addresses_A+0x1feed, %rsi
lea addresses_A+0x1feed, %rdi
nop
nop
sub $36693, %r9
mov $39, %rcx
rep movsw

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r8
nop
add %rbx, %rbx

// Store
lea addresses_US+0xa96d, %rbp
nop
nop
nop
add $42285, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
and %rbp, %rbp

// Faulty Load
lea addresses_A+0x1feed, %r8
nop
nop
xor %rbp, %rbp
movb (%r8), %r14b
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'35': 27}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
