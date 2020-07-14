.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x49bb, %rbx
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
lfence
lea addresses_normal_ht+0x30cb, %rbp
sub %rcx, %rcx
mov (%rbp), %r8
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x7237, %r8
nop
nop
nop
sub $56888, %rbp
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x134cb, %r8
and %rdi, %rdi
movb (%r8), %bl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x106cb, %rdi
nop
nop
nop
nop
xor $18752, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_D+0x823b, %rbx
nop
xor %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
and %r10, %r10

// Store
mov $0x19507b000000006b, %r15
nop
nop
nop
dec %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
mov $0x19507b000000006b, %rsi
clflush (%rsi)
nop
nop
nop
sub $52671, %r11
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'54': 94, '00': 255}
54 54 00 00 00 54 00 00 54 00 00 00 00 00 54 00 00 54 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 54 00 54 54 00 54 00 00 00 00 54 00 54 00 00 54 00 54 54 54 00 00 54 00 54 00 00 00 00 00 00 54 00 00 00 00 00 54 00 54 00 00 54 00 00 00 00 54 00 00 00 00 00 54 00 54 00 54 00 00 54 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 54 00 54 00 54 54 00 00 00 54 00 00 00 00 54 00 00 54 00 54 54 00 00 00 00 00 00 00 54 00 00 54 00 00 54 54 00 00 00 54 00 00 54 00 00 00 00 00 00 54 00 54 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 54 54 54 54 00 00 00 00 00 00 54 54 54 00 54 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 54 54 00 00 54 00 00 00 00 00 00 54 00 54 00 00 54 54 54 00 00 00 00 00 00 54 00 54 00 00 00 00 00 00 00 54 54 54 00 00 00 00 54 00 00 00 54 00 00 54 00 00 54 00 54 00 00 00 00 00 54 00 00 00 54 54 00 00 00 54 54 00
*/
