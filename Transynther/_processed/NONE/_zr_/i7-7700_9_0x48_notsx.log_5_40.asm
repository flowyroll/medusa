.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rdi
lea addresses_A_ht+0xdee0, %rdi
nop
nop
nop
nop
nop
sub $62424, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm3, (%rdi)
nop
nop
nop
nop
nop
add $23799, %r13
pop %rdi
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rdx
push %rsi

// Store
mov $0x126ae50000000fc0, %r10
add %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r10)
add %r11, %r11

// Store
mov $0x46afd80000000ea0, %r11
nop
nop
nop
nop
xor $10028, %r12
movl $0x51525354, (%r11)
cmp $2143, %rbp

// Faulty Load
lea addresses_A+0x134a0, %rbp
nop
nop
dec %r12
mov (%rbp), %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'00': 5}
00 00 00 00 00
*/
