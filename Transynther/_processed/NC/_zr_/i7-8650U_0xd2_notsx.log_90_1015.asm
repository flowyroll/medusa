.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_RW+0x1a961, %rbx
nop
nop
sub $49431, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_UC+0x1921, %rsi
xor %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovntdq %ymm6, (%rsi)
sub $60199, %rbp

// Store
lea addresses_PSE+0x1aa51, %rsi
nop
nop
nop
nop
and $40556, %r11
movb $0x51, (%rsi)
nop
nop
xor %rcx, %rcx

// Load
lea addresses_PSE+0x2821, %r11
nop
nop
nop
nop
nop
dec %rsi
movups (%r11), %xmm6
vpextrq $0, %xmm6, %r10
nop
cmp $10638, %r11

// Load
lea addresses_A+0x1b721, %rbx
inc %rsi
movb (%rbx), %r11b

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
mov $0x4ebf470000000c21, %r10
nop
nop
nop
sub $16116, %rbx
mov (%r10), %ecx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'00': 90}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
