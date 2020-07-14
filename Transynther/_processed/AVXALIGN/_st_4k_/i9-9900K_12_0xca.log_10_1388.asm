.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rdi
push %rsi
lea addresses_A_ht+0xef9b, %rsi
nop
nop
nop
dec %rbp
mov (%rsi), %r9
nop
nop
nop
nop
xor $40007, %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x3b5b, %rdi
add %r10, %r10
movb $0x51, (%rdi)
nop
nop
inc %rdi

// Store
lea addresses_RW+0x1c6b0, %rbx
nop
nop
nop
add $55996, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rbx)
nop
nop
dec %r15

// Store
lea addresses_UC+0xe35b, %r11
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r11)

// Exception!!!
mov (0), %rdi
nop
and %rdx, %rdx

// Store
lea addresses_D+0x1eb5b, %r11
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%r11)
nop
nop
nop
xor $10960, %r10

// Store
lea addresses_normal+0x635b, %r13
nop
nop
nop
xor %r11, %r11
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_WT+0x1e35b, %r10
nop
sub %rdi, %rdi
mov (%r10), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'51': 10}
51 51 51 51 51 51 51 51 51 51
*/
