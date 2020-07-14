.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xd713, %rsi
lea addresses_WT_ht+0x221f, %rdi
nop
nop
xor %r10, %r10
mov $122, %rcx
rep movsq
nop
nop
nop
nop
xor $11398, %rbx
lea addresses_D_ht+0x11f3, %rsi
lea addresses_UC_ht+0x2513, %rdi
nop
xor %rbx, %rbx
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x15fc3, %rsi
lea addresses_UC_ht+0x3113, %rdi
nop
nop
nop
dec %r15
mov $87, %rcx
rep movsw
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_A+0x8ab3, %rsi
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%rsi)
nop
sub $52658, %r15

// Faulty Load
mov $0x63bfcb0000000113, %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'00': 11, '44': 30, '46': 1}
00 44 44 44 00 46 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 00 00 44 00
*/
