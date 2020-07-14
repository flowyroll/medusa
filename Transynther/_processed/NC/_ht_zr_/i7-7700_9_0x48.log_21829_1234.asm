.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4eb9, %rsi
lea addresses_A_ht+0xacb9, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $36, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x17eb9, %r13
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r13)
sub %r8, %r8
lea addresses_normal_ht+0x1409, %rsi
lea addresses_A_ht+0x10e59, %rdi
nop
inc %r9
mov $56, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x9039, %r9
nop
cmp %r15, %r15
movb (%r9), %r13b
nop
and $45751, %rdi
lea addresses_D_ht+0x121a1, %r8
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
nop
nop
nop
add $43095, %rsi
lea addresses_UC_ht+0xdbb9, %rsi
clflush (%rsi)
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
cmp $20286, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_US+0x13cb9, %rdx
clflush (%rdx)
nop
nop
cmp $48095, %r12
movb $0x51, (%rdx)
nop
inc %rbp

// Faulty Load
mov $0xdc72100000004b9, %r12
nop
nop
cmp %rax, %rax
movups (%r12), %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'45': 2389, '44': 19439, '00': 1}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 45 44 44 44 45 45 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 45 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 45 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 45 45 44 44 45 44 45 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44 44 45 44 44 45 44 44 44 44 44
*/
