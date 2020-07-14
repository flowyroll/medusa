.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rsi
lea addresses_A_ht+0x16812, %rax
nop
nop
sub $41908, %r15
movb (%rax), %bl
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x1c956, %rsi
and %r13, %r13
movb $0x61, (%rsi)
and $26687, %rsi
lea addresses_WC_ht+0x1e913, %rsi
nop
nop
nop
nop
and $7375, %rbx
movw $0x6162, (%rsi)
nop
add $40283, %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x1412, %rax
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%rax)
nop
nop
nop
nop
xor $62992, %rcx

// Store
mov $0x7c0cc40000000782, %r10
sub %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_WT+0xb612, %rbp
nop
nop
and %rax, %rax
mov (%rbp), %r11w
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'39': 3}
39 39 39
*/
